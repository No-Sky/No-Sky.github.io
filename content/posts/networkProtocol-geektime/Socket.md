---
title: "Socket编程"
author: "nosky"
date: 2019-11-26T10:54:52+08:00
draft: false
tags: ["Network Protocol"]
---

# 基于 TCP 和 UDP 协议的 Socket 编程

客户端与服务端在通信之前，双方都要建立一个Socket。
在建立 Socket 的时候，应该设置Socket 函数需要指定到底是 IPv4 还是 IPv6，分别对应设置为 AF_INET 和 AF_INET6。Socket 编程进行的是端到端的通信，往往意识不到中间经过多少局域网，多少路由器，因而能够设置的参数，也只能是端到端协议之上网络层和传输层的。在网络层，还记得咱们前面讲过的，TCP 协议是基于数据流的，所以设置为SOCK_STREAM，而 UDP 是基于数据报的，因而设置为 SOCK_DGRAM。

## 基于 TCP 协议的 Socket 程序函数调用过程

TCP 的服务端要先监听一个端口，一般是先调用 bind 函数，给这个 Socket 赋予一个 IP 地址和端口。当服务端有了 IP 和端口号，就可以调用 listen 函数进行监听。在 TCP 的状态图里面，有一个 listen 状态，当调用这个函数之后，服务端就进入了这个状态，这个时候客户端就可以发起连接了。

在内核中，为每个 Socket 维护两个队列。一个是已经建立了连接的队列，这时候连接三次握手已经完
毕，处于 established 状态；一个是还没有完全建立连接的队列，这个时候三次握手还没完成，处于
syn_rcvd 的状态。
接下来，服务端调用 accept 函数，拿出一个已经完成的连接进行处理。如果还没有完成，就要等着。
在服务端等待的时候，客户端可以通过 connect 函数发起连接。先在参数中指明要连接的 IP 地址和端
口号，然后开始发起三次握手。内核会给客户端分配一个临时的端口。一旦握手成功，服务端的 accept
就会返回另一个 Socket。
监听的 Socket 和真正用来传数据的 Socket 是两个，一个叫作监听
Socket，一个叫作已连接 Socket。连接建立成功之后，双方开始通过 read 和 write 函数来读写数据，就像往一个文件流里面写东西一样。

![image-20191126110222353](/posts/networkProtocol-geektime/Socket.assets/image-20191130231428780.png)

## 基于 UDP 协议的 Socket 程序函数调用过程

UDP 是没有连接的，所以不需要三次握手，也就不需要调用 listen
和 connect，但是，UDP 的的交互仍然需要 IP 和端口号，因而也需要 bind。UDP 是没有维护连接状
态的，因而不需要每对连接建立一组 Socket，而是只要有一个 Socket，就能够和多个客户端通信。也
正是因为没有连接状态，每次通信的时候，都调用 sendto 和 recvfrom，都可以传入 IP 地址和端口。
这个图的内容就是基于 UDP 协议的 Socket 程序函数调用过程。

![image-20191126110329270](/posts/networkProtocol-geektime/Socket.assets/image-20191130231454586.png)
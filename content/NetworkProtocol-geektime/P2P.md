---
title: "P2P协议"
author: "nosky"
date: 2019-11-26T10:54:52+08:00
draft: false
tags: ["Network Protocol"]
---

# P2P 是什么？
无论是 HTTP 的方式，还是 FTP 的方式，都有一个比较大的缺点，就是难以解决单一服务器的带宽
压力， 因为它们使用的都是传统的客户端服务器的方式。
后来，一种创新的、称为 P2P 的方式流行起来。P2P就是peer-to-peer。资源开始并不集中地存储在某
些设备上，而是分散地存储在多台设备上。这些设备我们姑且称为 peer。
想要下载一个文件的时候，你只要得到那些已经存在了文件的 peer，并和这些 peer 之间，建立点对点
的连接，而不需要到中心服务器上。
## 种子（.torrent）文件
当你想下载一个文件的时候，怎么知道哪些 peer 有这个文件呢？
这就用到种子啦，也即咱们比较熟悉的.torrent 文件。.torrent 文件由两部分组成，分别是：
announce（tracker URL）和文件信息。
文件信息里面有这些内容。
info 区：这里指定的是该种子有几个文件、文件有多长、目录结构，以及目录和文件的名字。
Name 字段：指定顶层目录名字。
每个段的大小：BitTorrent（简称 BT）协议把一个文件分成很多个小段，然后分段下载。
段哈希值：将整个种子中，每个段的 SHA-1 哈希值拼在一起。
 P2P 网络需要借助 tracker 中心服务器，这个服务器是用来登记有哪些用户在请求哪些
资源。
所以，这种工作方式有一个弊端，一旦 tracker 服务器出现故障或者线路遭到屏蔽，BT 工具就无法正常
工作了。

## 去中心化网络（DHT）

后来就有了一种叫作DHT（Distributed Hash Table）的去中心化网络。每个加入这个 DHT 网络
的人，都要负责存储这个网络里的资源信息和其他成员的联系信息，相当于所有人一起构成了一个庞大
的分布式存储数据库。
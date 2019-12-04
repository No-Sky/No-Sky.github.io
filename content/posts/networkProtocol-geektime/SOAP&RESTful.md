---
title: "基于XML的SOAP和基于JSON的RESTful"
date: 2019-12-04T18:16:36+08:00
draft: false
 - 
tags: ["Network Protocol"]
 - 
---

# 传输协议问题

基于XML的最著名的通信协议就是 SOAP 了，全称 简单对象访问协议 （Simple Object Access Protocol）。它使用XML编写简单的请求和回复消息，并用HTTP协议进行传输。
SOAP将请求和回复放在一个信封里面，就像传递一个邮件一样。信封里面的信分 抬头 和 正文 。

```
POST /purchaseOrder HTTP/1.1
Host: www.geektime.com
Content-Type: application/soap+xml; charset=utf-8
Content-Length: nnn
```
```XML
<?xml version="1.0"?>
<soap:Envelope xmlns:soap="http://www.w3.org/2001/12/soap-envelope"
soap:encodingStyle="http://www.w3.org/2001/12/soap-encoding">
<soap:Header>
<m:Trans xmlns:m="http://www.w3schools.com/transaction/"
soap:mustUnderstand="1">1234
</m:Trans>
</soap:Header>
<soap:Body xmlns:m="http://www.geektime.com/perchaseOrder">
<m:purchaseOrder">
<order>
<date>2018-07-01</date>
<className>趣谈网络协议</className>
<Author>刘超</Author>
<price>68</price>
</order>
</m:purchaseOrder>
</soap:Body>
</soap:Envelope>
```

HTTP协议我们学过，这个请求使用POST方法，发送一个格式为 application/soap + xml 的XML正文给 www.geektime.com，从而下一个单，这个订单封装在SOAP的信封里面，并且表明这
是一笔交易（transaction），而且订单的详情都已经写明了。

而且XML的格式也可以改成另外一种简单的文本化的对象表示格式JSON。
```
POST /purchaseOrder HTTP/1.1
Host: www.geektime.com
Content-Type: application/json; charset=utf-8
Content-Length: nnn
{
"order": {
"date": "2018-07-01",
"className": "趣谈网络协议",
"Author": "刘超",
"price": "68"
}
}
```
这就是RESTful格式的API的样子。

# 协议约定问题

接下来我们解决第二个问题，就是双方的协议约定是什么样的？

因为服务开发出来是给陌生人用的，就像上面下单的那个XML文件，对于客户端来说，它如何知道应该拼装成上面的格式呢？这就需要对于服务进行描述.因而，我们需要一种相对比较严谨的Web服务描述语言 ， WSDL （Web Service Description Languages）。它也是一个XML文件。在这个文件中，要定义一个类型order，与上面的XML对应起来。

然而RESTful可不仅仅是指API，而是一种架构风格，全称Representational State Transfer，表述性状态转移，来自一篇重要的论文《架构风格与基于网络的软件架构设计》（Architectural Styles and the Design of Network-based Software Architectures）。

这篇文章从深层次，更加抽象地论证了一个互联网应用应该有的设计要点，而这些设计要点，成为后来我们能看到的所有高并发应用设计都必须要考虑的问题，再加上REST API比较简单直接，所以后来几乎成为互联网应用的标准接口。

因此，和SOAP不一样，REST不是一种严格规定的标准，它其实是一种设计风格。如果按这种风格进行设计，RESTful接口和SOAP接口都能做到，只不过后面的架构是REST倡导的，而SOAP相对比较关注前面的接口。
而且由于能够通过WSDL生成客户端的Stub，因而SOAP常常被用于类似传统的RPC方式，也即调用远端和调用本地是一样的。

# 服务发现问题

SOAP 对应的有UDDI （Universal Description, Discovery, and Integration），也即 统一描述、发现和集成协议 。它其实是一个注册中心，服务提供方可以将上面的WSDL描述文件，发布到这个注册中心，注册完毕后，服务使用方可以查找到服务的描述，封装为本地的客户端进行调用。

对于RESTful API来讲，我们已经解决了传输协议的问题——基于HTTP，协议约定问题——基于JSON，最后要解决的是服务发现问题。
有个著名的基于RESTful API的跨系统调用框架叫Spring Cloud。在Spring Cloud中有一个组件叫 Eureka。传说，阿基米德在洗澡时发现浮力原理，高兴得来不及穿上裤子，跑到街上大喊：“Eureka（我找到了）！”所以Eureka是用来实现注册中心的，负责维护注册的服务列表。
服务分服务提供方，它向Eureka做服务注册、续约和下线等操作，注册的主要数据包括服务名、机器IP、端口号、域名等等。
另外一方是服务消费方，向Eureka获取服务提供方的注册信息。为了实现负载均衡和容错，服务提供方可以注册多个。
当消费方要调用服务的时候，会从注册中心读出多个服务来，那怎么调用呢？当然是RESTful方式了。
Spring Cloud提供一个RestTemplate工具，用于将请求对象转换为JSON，并发起Rest调用，RestTemplate的调用也是分POST、PUT、GET、 DELETE的，当结果返回的时候，根据返回的
JSON解析成对象。
通过这样封装，调用起来也很方便。
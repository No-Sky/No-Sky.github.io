---
title: "HTTPDNS协议"
author: "nosky"
date: 2019-11-26T10:54:52+08:00
draft: false
tags: ["Network Protocol"]
---

# 传统 DNS 存在哪些问题？

1. 域名缓存问题
它可以在本地做一个缓存，也就是说，不是每一个请求，它都会去访问权威 DNS 服务器，而是访问过一
次就把结果缓存到自己本地，当其他人来问的时候，直接就返回这个缓存数据。

2. 域名转发问题
    缓存问题还是说本地域名解析服务，还是会去权威 DNS 服务器中查找，只不过不是每次都要查找。但是 A 运营商偷懒，将解析的请求转发给 B 运营商，B 运营商去权威 DNS 服务器查询的话，权威服务
    器会误认为，你是 B 运营商的，那就返回给你一个在 B 运营商的网站地址吧，结果客户的每次访问都要
    跨运营商，速度就会很慢。

3. 出口 NAT 问题
出口的时候，很多机房都会配置NAT，也即网络地址转换，使得从这个网关出去的包，都换成新的 IP 地址，当然请求返回的时候，在这个网关，再将 IP 地址转换回去，所以对于访问来说是没有任何问题。但是一旦做了网络地址的转换，权威的 DNS 服务器，就没办法通过这个地址，来判断客户到底是来自哪个运营商，而且极有可能因为转换过后的地址，误判运营商，导致跨运营商的访问。

4. 域名更新问题
本地 DNS 服务器是由不同地区、不同运营商独立部署的。对域名解析缓存的处理上，实现策略也有区
别，有的会偷懒，忽略域名解析结果的 TTL 时间限制，在权威 DNS 服务器解析变更的时候，解析结果
在全网生效的周期非常漫长。但是有的时候，在 DNS 的切换中，场景对生效时间要求比较高。

5. 解析延迟问题
从上一节的 DNS 查询过程来看，DNS 的查询过程需要递归遍历多个 DNS 服务器，才能获得最终的解
析结果，这会带来一定的时延，甚至会解析超时。

# HTTPDNS 的工作模式

HTTPNDS 其实就是，不走传统的 DNS 解析，而是自己搭建基于 HTTP 协议的 DNS 服务器集群，分布
在多个地点和多个运营商。当客户端需要 DNS 解析的时候，直接通过 HTTP 协议进行请求这个服务器
集群，得到就近的地址。

HTTPDNS 通过客户端 SDK 和服务端，通过 HTTP 直接调用解析 DNS 的方式，绕过了传统 DNS 的
这些缺点，实现了智能的调度。
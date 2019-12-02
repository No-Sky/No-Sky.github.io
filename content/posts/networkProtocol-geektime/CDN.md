---
title: "CDN"
author: "nosky"
date: 2019-11-26T10:54:52+08:00
draft: false
tags: ["Network Protocol"]
---

网站的一般访问模式。
当一个用户想访问一个网站的时候，指定这个网站的域名，DNS 就会将这个域名解析为地址，然后用户
请求这个地址，返回一个网页。
那这里面还有没有可以优化的地方呢？
我们先说，我们的网站访问可以借鉴“就近配送”这个思路。
全球有这么多的数据中心，无论在哪里上网，临近不远的地方基本上都有数据中心。是不是可以在这些
数据中心里部署几台机器，形成一个缓存的集群来缓存部分数据，那么用户访问数据的时候，就可以就
近访问了呢？
这些分布在各个地方的各个数据中心的节点，就称为边缘节点。
由于边缘节点数目比较多，但是每个集群规模比较小，不可能缓存下来所有东西，因而可能无法命中，
这样就会在边缘节点之上。有区域节点，规模就要更大，缓存的数据会更多，命中的概率也就更大。在
区域节点之上是中心节点，规模更大，缓存数据更多。如果还不命中，就只好回源网站访问了。

![image-20191126114437748](../CDN.assets/image-20191130230811508.png)

这就是CDN 的分发系统的架构。CDN 系统的缓存，也是一层一层的，能不访问后端真正的源，就不打
扰它。

接下来就是，客户端如何找到相应的边缘节点进行访问呢？

CDN 的全局负载均衡器解析域名，全局负载均衡器会为用户选择一台合适的缓存服务器提供服务，选择的依据包括：

* 根据用户 IP 地址，判断哪一台服务器距用户最近；
* 用户所处的运营商；
* 根据用户所请求的 URL 中携带的内容名称，判断哪一台服务器上有用户所需的内容；
* 查询各个服务器当前的负载情况，判断哪一台服务器尚有服务能力。
* 基于以上这些条件，进行综合分析之后，全局负载均衡器会返回一台缓存服务器的 IP 地址。
---
title: "VPN"
date: 2019-12-04T17:39:04+08:00
draft: false
 - 
tags: ["Network Protocol"]
 - 
---

## 连接多个数据中心的方式：

* 走公网，最简单但不安全
* 专线连接，成本高昂，效率高
* VPN 连接，简单便宜，保证私密性，性能稍差

**VPN ，全名 Virtual Private Network ， 虚拟专用网 ，就是利用开放的公众网络，建立专用数据传输通道，将远程的分支机构、移动办公人员等连接起来。**

## VPN是如何工作的？
VPN通过隧道技术在公众网络上仿真一条点到点的专线，是通过利用一种协议来传输另外一种协议的技术，这里面涉及三种协议： 乘客协议 、 隧道协议 和 承载协议 。
我们以IPsec协议为例来说明。

## IPSec VPN「Virtual Private Network」工作原理：

* 将要发送的 IP 包「乘客协议」加密后加上 IPSec 包头「隧道协议」后再放入另一个 IP 包「承载协议」中发送

![img](https://mubu.com/document_image/9a172e1e-5204-4c06-8b21-2baeb957a4e2-963664.jpg)

* IPSec VPN 是基于 IP 协议的安全隧道协议，采用一些机制保证安全性

  * 私密性：加密数据

  * 完整性：对数据进行 hash 运算产生数据摘要

  * 真实性：通过身份认证保证对端身份的真实性

## IPSec VPN 协议簇包括：

* 两种协议：

  *  AH「Authentication Header」：只能进行数据摘要，不能实现数据加密

  * ESP「Encapsulating Security Payload」：能够进行数据加密和数据摘要

* 两种算法：

  * 加密算法

  * 摘要算法

* 两大组件：

  * IKE「Internet Key Exchange Key Management」：用于交换对称秘钥

  * SA「Security Association」：进行连接维护

## IPsec VPN 的建立过程：

* 建立 IKE 自己的 SA，算出对称秘钥 K

* 使用对称秘钥 K 建立 IPSec SA，在 SA 中生成随机对称秘钥 M，使用 M 进行双方接下来的通信

## 扩展

* IP 协议：

  * 不是面向连接的，是尽力而为的协议，每个 IP 包自由选择路径，依赖于上一层 TCP 的重发来保证可靠性

  * 优点：一条道路崩溃时，可以自动换其他路

  * 缺点：不断的路由查找，效率低下

* IPSec VPN 的缺点：

  * 由于 IPSec VPN 是基于 IP 协议的，所以速度慢

* ATM 协议：

  * 这种协议是面向连接的，并且和 IP 是同一个层次，ATM 是在传输之前先建立一个连接，形成一个虚拟的通路

  * 优点：速度快，因为按照指定路径传输

  * 缺点：当某个节点故障，连接就会中断，无法传输数据

* 多协议标签交换「MPLS，Multi-Protocol Label Switching」

  * 结合了 IP 和 ATM 协议的优点

  * 需要标签交换路由器「LSR，Label Switching Router」的支持

  * 如何动态生成标签 LDP「Label Distribution Protocol」

  * 将 MPLS 和 VPN 结合起来可以提高 VPN 的效率

* 需要解决的问题有：

  * BGP 协议如何处理地址空间重叠的 VPN 的路由

  * 路由表怎么区分重复的网段


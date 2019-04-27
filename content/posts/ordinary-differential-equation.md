---
title: "常微分方程"
author: "nosky"
date: 2019-04-26T15:10:23+08:00
draft: false
tags: ["Math", "Differential Equation"]
---

# 常微分方程的解

若`$y=\varphi (x)$`代入方程成为恒等式，则称`$y=\varphi (x)$`为方程的一个解。

## 通解

含有相互独立（不能合并，`$y=C_1x+C_2x^2与y=C_1x+C_2x$`）的任意常数，且任意常数的个数与方程的阶数相同的微分方程的解。

## 特解

不含任意常数的解。

例：已知微分方程`${y}'+ay=e^x$`的一个特解为`$y=xe^x$`,则a=__.

解：

`${y}'=e^x+x·e^x=(1+x)e^x \\\\
代入微分方程得: (1+x)e^x+a·xe^x=e^x \\\\
\Rightarrow (1+x+ax)e^x=e^x \\\\ 
\Rightarrow a=-1$`

# 可分离变量的微分方程

## 标准形式

<div>$$f(x) \mathrm{d} y=g(x) \mathrm{d} x$$</div>

## 解法

**①分离变量，化为标准形式**

**②两边同时积分**

例1：**求方程**`$\sec^2x+\tan y \mathrm{d} x + \sec^2 y \tan x \mathrm{d} y = 0$的`**通解**

解：原方程可化为：

`$\sec^2x+\tan y \mathrm{d} x = - \sec^2 y \tan x \mathrm{d} y  \\\\
\Rightarrow \frac{\sec^2 x}{\tan x} \mathrm{d} x = - \frac{\sec^2 y}{\tan y} \mathrm{d} x \\\\
\Rightarrow \int \frac{\sec^2 x}{\tan x} \mathrm{d} x = - \int \frac{\sec^2 y}{\tan y} \mathrm{d} x \\\\
\Rightarrow \int \frac{1}{\tan x} \mathrm{d} (\tan x) = - \int \frac{1}{\tan y} \mathrm{d} (\tan y) \\\\
\Rightarrow ln|\tan x| = - ln|(\tan y)| + ln|C| \\\\
\Rightarrow ln|\tan x| + ln|(\tan y)|= ln|C| \\\\
\Rightarrow ln|\tan x \tan y= ln|C|  \\\\
\Rightarrow \tan x \tan y= C \\\\
即原微分方程的通解是:\\\\
\tan x \tan y= C$`

例2：求微分方程`$\mathrm{d} y - 2xy^2 \mathrm{d} x = 0$`满足条件`$y(1)=-1$`的特解

解：原方程可化为：

`$\mathrm{d} y = 2xy^2 \\\\
                 \Rightarrow \frac{1}{y^2} \mathrm{d} y = 2x \mathrm{d} x \\\\
                 \Rightarrow \int \frac{1}{y^2} \mathrm{d} y = \int 2x \mathrm{d} x \\\\
                 \Rightarrow -\frac{1}{y} = x^2+C \\\\
                 \Rightarrow y = - \frac{1}{x^2+C} \\\\
                 y(1)=-\frac{1}{1+C}=-1 \\\\
                 \Rightarrow C=0 \\\\
                 即原方程满足y(1)=-1的特解是: \\\\
                 y=-\frac{1}{x^2}$`
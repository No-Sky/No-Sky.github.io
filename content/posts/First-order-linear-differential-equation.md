---
title: "一阶线性微分方程"
author: "nosky"
date: 2019-04-26T16:17:39+08:00
draft: false
tags: ["Math", "Differential Equation"]
---

# 标准形式

<div>$${y}'+P(x)y=Q(x)$$</div>

# 解法

**①化为标准形式**

**②套公式：**

<div>$$y = e^{-\int P(x)\mathrm{d}x}(\int Q(x)e^{\int P(x)\mathrm{d}x}\mathrm{d}x+C)$$</div>

*注：在此公式中，解不定积分时，不加绝对值，也不加任意常数C*

例：解方程`$x{y}'-y=x^3$`

解：原方程可化为：`${y}'-\frac{1}{x}y=x^2 \\\\
                由公式得：y=e^{-\int \frac{1}{x}\mathrm{d}x}(\int x^2e^{-\int \frac{1}{x}\mathrm{d}x}\mathrm{d}x+C) \\\\
                =e^{lnx}(\int x^2e^{-lnx}\mathrm{d}x+C) \\\\
                =x(\int x^2·\frac{1}{x}\mathrm{d}x+C) \\\\
                =x(\frac{x^2}{2}+C) \\\\
                =\frac{x^3}{2}+Cx \\\\
                即 y=\frac{x^3}{2}+Cx$`


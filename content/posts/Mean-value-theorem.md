---
title: "微分中值定理与洛必达法则"
author: "nosky"
date: 2019-04-28T14:53:56+08:00
draft: false
tags: ["Math", "Differential mean value theorem"]
---

> 因为文章中包含大量数学公式，推荐使用电脑阅读本文章

# 罗尔定理

如果函数`$f(x)$`满足

①在闭区间`$[a,b]$`上连续

②在开区间`$(a,b)$`内可导

③在区间端点处的函数值相等，即`$f(a)=f(b)$`，那么在`$(a,b)$`内至少有一点`$\xi (a< \xi <b),使得{f}'(\xi )=0$`

# 拉格朗日中值定理

如果函数`$f(x)$`满足

①在闭区间`$[a,b]$`上连续

②在开区间`$(a,b)$`内可导

那么在`$(a,b)$`内至少有一点`$\xi (a< \xi <b)，使等式f(b)-f(a)={f}'(\xi )(b-a)成立$`

# 柯西中值定理

如果函数`$f(x)及F(x)$`满足

①在闭区间`$[a,b]$`上连续

②在开区间`$(a,b)$`内可导

③对任一`$x\in (a,b),{F}'(x)\neq 0$`，那么在`$(a,b)$`内至少有一点`$\xi (a< \xi <b)$`，使等式`$\frac{f(b)-f(a)}{F(b)-F(a)}=\frac{{f}'(\xi )}{{F}'(\xi )}$`

# 洛必达法则

设①当`$x \Rightarrow a$`时，函数`$f(x)$`及`$F(x)$`都趋于零；

②在点a的某去心邻域内，`${f}'(x)$`及`${F}'(x)$`都存在且`${F}'(x)\neq 0$`

③`$\lim_{x \to a} \frac{{f}'(x)}{{F}'(x)}$`存在（或为无穷大），那么

<div>$$\lim_{x \to a} \frac{f(x)}{F(x)}=\lim_{x \to a} \frac{{f}'(x)}{{F}'(x)}$$</div>

其中`$\frac{f(x)}{F(x)}$`也可以是`$\frac{\infty}{\infty}$`型未定式，`${f}'(x),{F}'(x)$`要存在且`${F}'(x)\neq 0$`；相同的极限过程可以是`$x\rightarrow a,x \rightarrow a^{\pm },x \rightarrow \infty,x\rightarrow \pm \infty $`的任何一种，对于`$n \rightarrow \infty$`，可用于子列极限定理，先化为`$x \Rightarrow +\infty$`的极限

对于其余五种非基本型未定式，应先变形或者取对数化为基本型，再用洛必达法则。
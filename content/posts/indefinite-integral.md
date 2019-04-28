---
title: "不定积分"
author: "nosky"
date: 2019-04-27T15:57:22+08:00
draft: false
tags: ["Math", "single variable integral calculus"]
---
> 因为文章中包含大量数学公式，推荐使用电脑阅读本文章

# 原函数与不定积分的概念

## 原函数

若对于某区间`$I$`上任意一点`$x$`，均有`${F}'(x)=f(x)或\mathrm{d}F(x)=f(x)\mathrm{d}x$`，则称`$F(x)$`是`$f(x)$`在`$I$`上的一个原函数。

## 原函数存在定理

如果函数`$f(x)$`在区间`$I$`上连续，那么在区间`$I$`上存在可导函数`$F(x)$`，使对任意`$x \in I$`都有`${F}'(x)=f(x)$`。

## 不定积分

`$f(x)$`在区间`$I$`上的原函数全体称为`f(x)`在`$I$`上的不定积分，即若`$F(x)$`是`$f(x)$`在`$I$`上的任一原函数，则`$\int f(x)\mathrm{d}x=F(x)+C(C为任意常数)$`.

由此定义可得下列关系：

（1）`${\int f(x)\mathrm{d}x}'=f(x)$`    或   `$\mathrm{\int f(x)\mathrm{d}x}=f(x)\mathrm{d}x$`

（2）`$\int {F}'(x)=F(x)+C$`   或   `$\int \mathrm{d}F(x)=F(x)+C$`

# 不定积分的性质

设`$F(x)$`是`$f(x)$`的一个原函数，`$k$`为非零常数，则有

（1）`$\int kf(x)\mathrm{d}x=k\int f(x)\mathrm{d}x$;`

（2）`$\int [f(x) \pm g(x)]\mathrm{d}{x}=\int f(x)\mathrm{d}x \pm \int g(x)\mathrm{d}x$`

# 基本积分公式

基本积分公式

`$\tag{1} \int x^n dx = \frac{1}{n+1}x^{n+1},\hspace{1ex}n\neq -1$`   `$\tag{2} \int \frac{1}{x}dx = \ln |x| $`

`$\tag{3} \int u dv = uv - \int v du $`  `$\tag{4} \int \frac{1}{ax+b}dx = \frac{1}{a} \ln |ax + b|$`

有理函数积分公式

`$\tag{5} \int \frac{1}{(x+a)^2}dx = -\frac{1}{x+a} $`  `$\tag{6} \int (x+a)^n dx = \frac{(x+a)^{n+1}}{n+1}, n\ne -1 $`

`$\tag{7} \int x(x+a)^n dx = \frac{(x+a)^{n+1} ( (n+1)x-a)}{(n+1)(n+2)}$` `$\tag{8} \int \frac{1}{1+x^2}dx = \tan^{-1}x $`

`$\tag{9} \int \frac{1}{a^2+x^2}dx = \frac{1}{a}\tan^{-1}\frac{x}{a}$`  `$\tag{10} \int \frac{x}{a^2+x^2}dx = \frac{1}{2}\ln|a^2+x^2|$` 

`$\tag{11} \int \frac{x^2}{a^2+x^2}dx = x-a\tan^{-1}\frac{x}{a} $`  `$\tag{12} \int \frac{x^3}{a^2+x^2}dx = \frac{1}{2}x^2-\frac{1}{2}a^2\ln|a^2+x^2|$`

`$\tag{13} \int \frac{1}{ax^2+bx+c}dx = \frac{2}{\sqrt{4ac-b^2}}\tan^{-1}\frac{2ax+b}{\sqrt{4ac-b^2}} $`  `$\tag{14} \int \frac{1}{(x+a)(x+b)}dx = \frac{1}{b-a}\ln\frac{a+x}{b+x}, \text{ } a\ne b $`

`$\tag{15} \int \frac{x}{(x+a)^2}dx = \frac{a}{a+x}+\ln |a+x|$`  `$\tag{16} \int \frac{x}{ax^2+bx+c}dx = \frac{1}{2a}\ln|ax^2+bx+c| 
-\frac{b}{a\sqrt{4ac-b^2}}\tan^{-1}\frac{2ax+b}{\sqrt{4ac-b^2}}$`

`$\tag{17} \int \sqrt{x-a}\ dx = \frac{2}{3}(x-a)^{3/2} $`  `$\tag{18} \int \frac{1}{\sqrt{x\pm a}}\ dx = 2\sqrt{x\pm a} $`

`$\tag{19} \int \frac{1}{\sqrt{a-x}}\ dx = -2\sqrt{a-x}$`

后面不想写了，手累。

# 求不定积分的基本方法

## 第一类换元积分法（凑微分法）



设`$F(x)$`是`$f(x)$`的一个原函数，则

<div>$$\int f[\varphi(x)][\varphi]'(x)\mathrm{d}x = \int f[\varphi(x)]\mathrm{d}\varphi(x) \xrightarrow[]{令u=\varphi(x)}\int f(u)\mathrm{d}u \\\\ =F(u)+C = F[\varphi(x)]+C$$</div>

## 第二类换元积分法

设`$x=\varphi(t)$`可导，且有反函数`$t=\varphi^{-1}(x)$`，则有

<div>$$\int f(x)\mathrm{d}x=\int f[\varphi(t)]{\varphi}'(t)\mathrm{d}t|_{t=\varphi^{-1}(x)}$$</div>

常用的换元法有：

①`$\int R(x,\sqrt{a^2+x^2})\mathrm{d}x,令x=a\tan u 或 x=a\cot u(R是有理数)$`

②`$\int R(x,\sqrt{a^2-x^2})\mathrm{d}x,令x=a\sin u 或 x=a\cos u$`

③`$\int R(x,\sqrt{x^2-a^2})\mathrm{d}x,令x=a\sec u 或 x=a\csc u$`

④`$\int R(x,\sqrt[n]{ax+b})\mathrm{d}x，令u^n=ax+b$`

⑤`$\int R(\sqrt[m]{x},\sqrt[n]{x})\mathrm{d}x,令x=u^k,k是正整数m与n的最小公倍数$`

⑥`$\int R(x,\frac{1}{ax^n+b})\mathrm{d}x,令x=\frac{1}{t}$`

⑦`$\int R(x,e^x)\mathrm{d}x,令e^x=t$`

## 分部积分法

设`$u=u(x),v=v(x)$`均可微，则有分部积分公式

<div>$$\int u\mathrm{d}v=uv-\int v\mathrm{d}u$$</div>

常见的类型：

①`$\int P(x)e^{bx}\mathrm{d}x,令u=P(x),其中P(x)是多项式$`

②`$\int P(x)\sin (ax+b)\mathrm{d}x,令u=P(x)，也适用于\cos (ax+b)$`

③`$\int P(x)ln(ax+b)\mathrm{d}x,令u=ln(ax+b)$`

④`$\int P(x)\arcsin (ax+b)\mathrm{d}x,令u=\arcsin (ax+b)，也适用于\arccos (ax+b)或\arctan (ax+b)等$`

⑤`$\int e^ax\sin (ax+b)\mathrm{d}x,令u=\sin (ax+b)或u=e^{ax},也适用于\cos (ax+b)$`

## 几种特殊类型函数的不定积分

①有理函数的不定积分。

a.`$\int \frac{A}{x-a}\mathrm{d}x=Aln|x-a|+C$`

b.`$\int \frac{A}{(x-a)^n}\mathrm{d}x=\frac{A}{(1-n)(x-a)^{n-1}}+C(n>1)$`

②三角函数有理式的不定积分

a.万能代换

`$令t=\tan \frac{x}{2},\sin x = \frac{2t}{1+t^2},\cos x = \frac{1-t^2}{1+t^2},\mathrm{d}x=\frac{2}{1+t^2}\mathrm{d}t,则$`

<div>$$\int R(\sin x,\cos x)\mathrm{d}x=\int R(\frac{2t}{1+t^2},\frac{1-t^2}{1+t^2})·\frac{2}{1+t^2}\mathrm{d}t$$</div>
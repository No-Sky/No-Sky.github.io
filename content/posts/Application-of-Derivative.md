---
title: " 导数的应用"
author: "nosky"
date: 2019-04-29T16:22:53+08:00
draft: false
tags: ["Math", "single variable differential calculus"]
---

# 切线和法线方程

`${f}'(x_0)$`在几何上表示曲线`$y=f(x)$`在`$(x_0,f(x_0))$`处的切线斜率

切线方程：`$y-y_0={f}'(x_0)(x-X_0)$`

法线方程：`$y-y_0=\frac{1}{{f}'(x_0)}(x-x_0)$`

# 求隐函数的导数

（1）定义：显函数`$y=f(x)$`，隐函数`$F(x,y)$`

（2）方法：方程两边同时对`$x$`求导，接触`${y}'$`

例：设`$x^2y-e^{2x}=\sin y$`，求`$\frac{\mathrm{d}y}{\mathrm{d}x}$`.

解：`$方程两边同时对x求导得： \\\\
     2xy+x^2·{y}'-2·e^{2x}={y}'·\cos y \\\\
     (x^2-\cos y)·{y}'=2e^{2x}-2xy \\\\
     {y}'=\frac{2e^{2x}-2xy}{x^2-\cos y}$`

# 求幂指函数的导数

方法一：先取对数再求导（对数求导法）

方法二：化为以`$e$`为底的指数函数后再求导（`$y=u^x=e^{xlnu}$`）

例：求`$y=x^{\sin x}$` 函数的导数`$\frac{\mathrm{d}y}{\mathrm{d}x}$`

解：法一：`$方程两边同时取对数：lny=lnx^{\sin x}=\sin xlnx \\\\
          方程两边同时对x求导：\frac{1}{y}·{y}'=\cos x · lnx+\sin x·\frac{1}{x} \\\\
          \Rightarrow {y}'=y(\cos x lnx+\frac{\sin x}{x}) \\\\
          \Rightarrow {y}'=x^{\sin x}(\cos x lnx+\frac{\sin x}{x})$`

​		法二：`$y=x^{\sin x}=e^{\sin xlnx} \\\\
​              {y}'=e^{\sin xlnx}{(\sin xlnx)}'=x^{\sin x}(\cos xlnx+\frac{\sin x}{x})$`

# 求由参数方程确定的函数的导数

（1）参数方程：`$\left\{\begin{matrix} x=\varphi(t) \\\\ y=\psi(t) \end{matrix}\right.$`

（2）求导方法：`$\frac{\mathrm{d}y}{\mathrm{d}x}=\frac{\frac{\mathrm{d}y}{\mathrm{d}t}}{\frac{\mathrm{d}x}{\mathrm{d}t}}=\frac{{\varphi}'(t)}{{\psi}'(t)} \\\\
             \frac{\mathrm{d^2}y}{\mathrm{d}x^2}=\frac{\mathrm{d}}{\mathrm{d}x}(\frac{\mathrm{d}y}{\mathrm{d}x})=\frac{\frac{\mathrm{d}(\frac{\mathrm{d}y}{\mathrm{d}x})}{\mathrm{d}t}}{\frac{\mathrm{d}x}{\mathrm{d}t}}$` 

# 求微分

1、对于一元函数，可微`$\Leftrightarrow$`可导

2、函数`$y=f(x)$`的微分`$\mathrm{d}y={f}'(x)\mathrm{d}x$`

3、求微分方法：先求导，再乘以`$\mathrm{d}x$`

# 微分在近似计算中的应用

若`$f(x_0)$`与`${f}'(x_0)$`容易计算，用`$f(x)\approx f(x_0)+{f}'(x_0)(x-x_0)$ `近似计算`$f(x)$`
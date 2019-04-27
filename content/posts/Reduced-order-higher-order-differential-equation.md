---
title: "可降阶的高阶微分方程"
author: "nosky"
date: 2019-04-26T16:33:33+08:00
draft: false
tags: ["Math", "Differential Equation"]
---
> 因为文章中包含大量数学公式，推荐使用电脑阅读本文章

# `$y^{(n)}=f(x)$`型

**解法：作n次不定积分**

例：**求微分方程`${y}'''=24x$`通解**

解：对原方程连续积分可得：`${y}''=\int 24x\mathrm{d}x=12x^2+C_1 \\\\
{y}'=\int (12x^2+C_1)\mathrm{d}x=4x^3+C_1x+C_2 \\\\
y=\int (4x^3+C_1x+C_2)\mathrm{d}x=x^4+C_1\frac{x^2}{2}+C_2x+C3$`

# `${y}''=f(x,{y}')$`型

**解法：令`${y}'=P$`，两边对x求导，`${y}''=P$`，然后代入原方程转化为一阶微分方程求解**

例：**求微分方程`$x{y}''+{y}'=4x$`的通解**

解：`$令{y}'=P,{y}''={P}' \\\\
     代入原方程得：x{P}'+P=4x \\\\ 
     \Rightarrow {P}'+\frac{1}{x}P=4 \\\\
     可得：P=e^{-\int \frac{1}{x}\mathrm{d}x}(\int 4e^{\int \frac{1}{x}}\mathrm{d}x+C-1) \\\\
     =e^{-lnx}(\int 4e^{lnx}\mathrm{d}x+C_1) \\\\
     =\frac{1}{x}(\int 4x\mathrm{d}x+C_1) \\\\
     =\frac{1}{x}(2x^2+C_1) \\\\
     =2x+C_1\frac{1}{x} \\\\
     \Rightarrow {y}'=2x+\frac{C_1}{x} \\\\
     \Rightarrow y = \int (2x+\frac{C_1}{x})\mathrm{d}x \\\\
     \Rightarrow y=x^2+C_1ln|x|+C-2$`
     
# `${y}''=f(y,{y}')$`型

**解法：令`${y}'=P$`，两边对x求导，`${y}''=\frac{\mathrm{d}P}{\mathrm{d}x}=\frac{\mathrm{d}P}{\mathrm{d}y}·\frac{\mathrm{d}y}{\mathrm{d}x}=P\frac{\mathrm{d}P}{\mathrm{d}y}$`，然后代入原方程，转化为一阶微分方程求解**

例：**求微分方程`$y{y}''-({y}')^2=0$`的通解**

解：`$令{y}'=P,{y}''=P·\frac{\mathrm{d}P}{\mathrm{d}y} 代入原方程得：\\\\
     y·P·\frac{\mathrm{d}P}{\mathrm{d}y}-P^2=0 \\\\
     \Rightarrow y·\frac{\mathrm{d}P}{\mathrm{d}y}=P \\\\
     \Rightarrow \frac{\mathrm{d}P}{P}=\frac{\mathrm{d}y}{y} \\\\
     \Rightarrow \int \frac{\mathrm{d}P}{P}=\int \frac{\mathrm{d}y}{y} \\\\
     \Rightarrow ln|P|=ln|y|+ln|C_1| \\\\
     \Rightarrow P=C_1y \Rightarrow {y}'=C_1y \\\\
     \Rightarrow \frac{\mathrm{d}y}{\mathrm{d}x}=C_1y \\\\
     \Rightarrow \frac{\mathrm{d}y}{y}=C_1\mathrm{d}x \\\\
     \Rightarrow \int \frac{\mathrm{d}y}{y}=\int C_1\mathrm{d}x \\\\
     \Rightarrow ln|y|=C_1x+ln|C_2| \\\\
     \Rightarrow y=C_2e^{C_1x}$`
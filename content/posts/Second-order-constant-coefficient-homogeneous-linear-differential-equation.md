---
title: "二阶常系数齐次线性微分方程"
author: "nosky"
date: 2019-04-26T17:08:07+08:00
draft: false
tags: ["Math", "Differential Equation"]
---
> 因为文章中包含大量数学公式，推荐使用电脑阅读本文章

# 标准形式

<div>$${y}''+p{y}'+qy=0$$</div>

# 通解：

**①写出相应的特征方程** `$r^2+pr+q=0$`

**②求出特征根**`$r_1,r_2$`

**③写出通解：**

**1)不同实根：**`$r_1 \neq r_2, y=C_1e^{r_1x}+C_2e^{r_2x}$`

**2)重根：**`$r_1=r_2=r,y=C_1e^{rx}+C_2xe^{rx}$`

**2)共轭复根：**`$r_{1,2}=\alpha \pm \beta i, y=e^{\alpha x}(C_1\cos \beta x + C_2 \sin \beta x)$`

例1：**求微分方程**`${y}''+2{y}'+y=0$`**的通解**

解：由题意得：`$特征方程：r^2+2r+1=0 \\\\
    \Rightarrow r_1=r_2=-1 \\\\
    \therefore y=C_1e^{-x}+C_2xe^{-x}$`

例2：**求微分方程**`${y}''-4y=0$`**得通解**

解：由题意得：`$特征方程：r^2-4=0 \\\\
     \Rightarrow r_1=2，r_2=-2 \\\\
     \therefore y=C_1e^{2x}+C-2e^{-2x}$`

例3： **求微分方程**`$2\frac{\mathrm{d}^2 y}{\mathrm{d} x^2}+4\frac{\mathrm{d} y}{\mathrm{d} x}+3y=0$`**的通解**

解：由题意得：`$特征方程：2r^2+4r+3=0 \\\\
     \Rightarrow r=-1 \pm \frac{\sqrt{2}}{2}i \\\\
     \therefore y=e^{-x}(C_1\cos \frac{\sqrt{2}}{2}x+C_2\sin \frac{\sqrt{2}}{2}x)$`

# 已知通解，反求微分方程

**①找出特征根**

**②写出特征方程**

**③写出微分方程**

例：**写出通解为**`$y=C_1e^{-x}+C_2e^{3x}(C_1,C_2为任意常数)$`**的二阶线性常系数齐次微分方程**

解：由题意得：`$特征根：r_1=-1,r_2=3 \\\\
           特征方程：(r+1)(r-3)=0  \\\\ 
           \Rightarrow r^2-2r-3=0 \\\\
           微分方程：{y}''-2{y}'-3y=0$`
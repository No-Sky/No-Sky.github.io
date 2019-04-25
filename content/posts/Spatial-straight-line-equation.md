---
title: "空间直线方程"
author: "nosky"
date: 2019-04-25T16:51:06+08:00
draft: false
tags: ["Math", "Vector Algebra and Analytic Geometry"]
---
# 空间直线的方程
## 直线的一般方程

<div>$$L = \left\{\begin{matrix} A_1x+B_1y+C_1z+D_1=0 \\ A_2x+B_2y+C_2z+D_2=0 \end{matrix}\right.$$</div>

## 直线的点向式方程

已知有一点`$M_0(x_0,y_0,z_0)$`，方向向量`$\vec{s}=(m,n,p)$`，则有：

<div>$$\frac{x-x_0}{m}=\frac{y-y_0}{n}=\frac{z-z_0}{p}$$</div>

## 直线的参数方程

<div>$$\frac{x-x_0}{m}=\frac{y-y_0}{n}=\frac{z-z_0}{p}=t \Rightarrow \left\{\begin{matrix} x= x_0+mt \\ y=y_0+nt \\ z=z_0+pt \end{matrix}\right.$$</dici >

## 直线的两点式方程

<div>$$\frac{x-x-1}{x_2-x_1}=\frac{y-y_1}{y_2-y_1}=\frac{z-z_1}{z_2-z_1}$$</div>

# 空间中两直线的位置关系

`$L_1: \frac{x-x_1}{m_1}=\frac{y-y_1}{n_1}=\frac{z-z_1}{p_1}$`  `$\vec{s_1}=(m_1,n_1,p_1)$`

`$L_2: \frac{x-x_2}{m_2}=\frac{y-y_2}{n_2}=\frac{z-z_2}{p_2}$`  `$\vec{s_2}=(m_2,n_2,p_2)$`

①`$\frac{m_1}{m_2}=\frac{n_1}{n_2}=\frac{p_1}{p_2} \Leftrightarrow \vec{s_1} // \vec{s_2} L_1 // L_2 $`

②`$m_1m_2 + n_1n_2 + p_1p_2 = 0 \Leftrightarrow \vec{s_1} \perp \vec{s_2} \Leftrightarrow L_1 \perp L_2$`

③`$\cos\theta = \cos(\vec{s_1},\vec{s_2}) = \frac{|\vec{s_1}·\vec{s_2}|}{|\vec{s_1}||\vec{s_2}|},\theta \in [0,\frac{\pi}{2}]$`

# 直线与平面的位置关系

`$L: \frac{x-x_0}{m}=\frac{y-y_0}{n}=\frac{z-z_0}{p}$`   `$\vec{s}=(m,n,p)$`

`$\pi: Ax+Bx+Cz+D=0$`    `$\vec{n}={A,B,C}$`

①`$\frac{A}{m}=\frac{B}{n}=\frac{C}{p} \Leftrightarrow \vec{n} // \vec{s} \Leftrightarrow L \perp \pi$`

②`$Am+Bn+Cp=0 \Leftrightarrow \vec{n} \perp \vec{s} \Leftrightarrow \pi$`

​     将直线上已知点的坐标`$(x_0,y_0,z_0)$代入平面的方程中，若恒成立，则直线在平面上，否则，平行。`

③`$\sin\phi = \cos(\vec{s},\vec{n}) = \frac{|\vec{s}·\vec{n}|}{|\vec{s}|·|\vec{n}|},\phi \in [0,\frac{\pi}{2}]$`


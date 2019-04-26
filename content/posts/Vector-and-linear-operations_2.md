---
title: "向量的线性运算"
author: "nosky"
date: 2019-04-23T14:20:06+08:00
draft: fales
tags: ["Math", "Vector Algebra and Analytic Geometry"]
---

# 加法

**定义1：**设`$\vec{a} = (a_1, a_2)$`，`$\vec{b} = (b_1, b_2)$`是二维空间向量`$R^2$`中的两个向量，定义它们的加法为

<div>$$\vec{a} + \vec{b} = (a_1 + b_1, a_2 + b_2)$$</div>

![二维向量的加法.png](https://i.loli.net/2019/04/23/5cbeb3210799b.png)

**定义1**：设`$\vec{a} = (a_1, a_2, a_3)$`，`$\vec{b} = (b_1, b_2, b_3)$`是三维向量空间`$R^3$`中的两个向量，定义它们的加法为：

<div>$$\vec{a} + \vec{b} = (a_1 + b_1, a_2 + b_2, a_3 + b_3)$$</div>

​	一般的，设`$\vec{a} = (a_1,a_2,···,a_n),\vec{b} = (b_1,b_2,···,b_n)$`是`n`维向量空间`$R^n$`中的两个向量，定义它们的加法为：

<div>$$\vec{a} + \vec{b} = (a_1+b_1,a_2+b_2,···,a_n+b_n)$$</div>

**运算规律：**

​	![向量加法运算规律.png](https://i.loli.net/2019/04/23/5cbeb4b583e84.png)

# 数乘

**定义3：**设`$\vec{a} = (a_1, a_2)$`，`$\vec{b} = (b_1, b_2)$`是二维空间向量`$R^2$`中的两个向量，`$\lambda$`是实数，定义`$\lambda$`与`$\vec{a}$`的**数乘**为：

<div>$$\lambda\vec{a} = (\lambda a_1, \lambda a_2)$$</div>

设`$\vec{a}$`是非零向量，`$\lambda$`是非零实数，记`$\vec{b} = \lambda \vec{a}$`，则有

<div>$$|\vec{b}| = \sqrt{(\lambda a_1)^2 + (\lambda a_2)^2 } = |\lambda| \sqrt{(a_1)^2 + ( a_2)^2} = |\lambda||\vec{a}|$$</div>

![向量数乘的性质.png](https://i.loli.net/2019/04/23/5cbeb70e0c3a9.png)

**定义4：**设`$\vec{a} = (a_1, a_2, a_3)$`，`$\vec{b} = (b_1, b_2, b_3)$`是三维空间向量`$R^3$`中的两个向量，`$\lambda$`是实数，定义`$\lambda$`与`$\vec{a}$`的**数乘**为：

<div>$$\lambda\vec{a} = (\lambda a_1, \lambda a_2, \lambda a_3)$$</div>

一般的，对于`n`维向量与实数的数乘以此类推。

# 减法

**利用向量的加法与数乘运算，得出向量的减法**

<div>$$\vec{a} - \vec{b} = \vec{a} + (-1) \vec{b}$$</div>

# 单位向量

## 表示

设`$e_a$`表示非零向量`$\vec{a}$`同向的单位向量，则有

<div>$$\vec{a} = |\vec{a}|e_a 或 e_a = \frac{\vec{a}}{|\vec{a}|}$$</div>

称`$e_a$`为`$\vec{a}$`的单位方向向量

对于三维向量`$\vec{a}$`，有

<div>$$e_a = (\cos \alpha, \cos \beta, \cos \gamma)     \vec{a} = |\vec{a}(\cos \alpha, \cos \beta, \cos \gamma)| $$</div>

## 向量平行等价说法：

（1）`$\vec{a} // \vec{b}$`

（2）存在实数`$\lambda$`，使得`$\vec{b} = \lambda \vec{a}$`

（3）`$\vec{a}与\vec{b}$`对应分量成比例

<div>$$\vec{a} = (a_1,a_2,a_3)，\vec{b} = (b_1, b_2, b_3) \Rightarrow \frac{a_1}{b_1}=\frac{a_2}{b_2}=\frac{a_3}{b_3}$$</div>

（4）存在不全为零的常数`$k_1,k_2$`，使得`$k_1\vec{a} + k_2\vec{b} = 0$`

例：设`$\vec{a} = (2,1),\vec{b} = (-3,1)$`，求`$\vec{c} = \vec{a}+2\vec{b}$`的单位向量

解：`$ \vec{c} = \vec{a} + 2\vec{b} \\\\
           = (2, 1) + 2 (-3, 1) \\\\
           =(-4, 3) \\\\
      |\vec{c}| = \sqrt{(-4)^2 + 3^2} = 5 \\\\
      e_\vec{c} = \frac{1}{5}(-4,3) = (-\frac{4}{5},\frac{3}{5})$`

# 向量的基表示

**在二维空间中**，记`$\vec{i} = (1, 0)，\vec{j} = (0, 1)$`，则`$\vec{i}, \vec{j}$`分别是与`x`轴、`y`轴同向的单位向量方向向量，称之为二维空间中的基向量。

![二维向量的基表示.png](https://i.loli.net/2019/04/23/5cbec38b2d703.png)

**在三维空间中，**记`$\vec{i}=(1,0,0),\vec{j}=(0,1,0),\vec{k}=(0,0,1)$`，则`$\vec{i},\vec{j},\vec{k}$`是与`x`轴、`y`轴、`z`轴同向的单位方向向量，称之为三维向量空间的基向量。

向量`$\vec{a} = (a_1,a_2,a_3)$`可表示为

<div>$$\vec{a} = a_1\vec{i} + a_2\vec{j} + a_3\vec{k}$$</div>

上式称为三维向量`$\vec{a}$`的**基表示**或**基向量分解式**。	

例：设`$A(x_1, y_1，z_1 )和B(x_2,y_2,z_2)$`为已知两点，而在AB直线上的点M分为有向线段`$\overrightarrow{AB}$`为两个有向线段`$\overrightarrow{AM}和\overrightarrow{MB}$`，并使`$\overrightarrow{AM} = \lambda \overrightarrow{MB} (\lambda \neq -1 为常数)$`，求分点M的坐标。

解： `$设M(x, y, z)，由于\\\\
\overrightarrow{AM} = (x-x_1,y-y_1,z-z_1) \\\\ 
\overrightarrow{MB} = (x_2- x, y_2-x, z_2-z) \\\\
由\overrightarrow{AM} = \lambda \overrightarrow{MB}得 \\\\
(x-x_1,y-y_1,z-z_1) = \lambda (x_2- x, y_2-x, z_2-z) \\\\
\Rightarrow x-x_1 = \lambda (x_2-x),y-y_1 = \lambda (y_2-y),z-z_1 = \lambda (z_2-z) \\\\
\Rightarrow x = \frac{x_1+\lambda x_2}{1+\lambda},y = \frac{y_1+\lambda y_2}{1+\lambda},z = \frac{z_1+\lambda z_2}{1+\lambda} \\\\
则得点M的坐标为（\frac{x_1+\lambda x_2}{1+\lambda}，\frac{y_1+\lambda y_2} ,{1+\lambda},\frac{z_1+\lambda z_2}{1+\lambda}）$`

`$A(x_1, y_1，z_1 )和B(x_2,y_2,z_2)$`的**中点坐标**为`$(\frac{x_1+x_2+x_3}{2},\frac{y_1+y_2+y_3}{2},\frac{z_1+z_2+z_3}{2})$`



---
title: "向量的基本概念"
author: "nosky"
date: 2019-04-22T17:03:01+08:00
draft: false
tags: ["Math", "Vector Algebra and Analytic Geometry"]
---

## **向量的基本概念**

**向量：既有大小，又有方向的量。**

**数量：只有大小，没有方向的量。**

**向量表示法：用一条带箭头的线段（即有向线段）表示**

**如：`$\overrightarrow{AB}$` A为起点，B为终点**

**还可以用粗体字母或带箭头的字母表示向量**

**例如：v，a，F  或` $\vec{v}$`，`$\vec{a}$`， `$\vec{F}$`** 

***对于自由向量，如果向量$\vec{a}$与$\vec{b}$大小相等且方向相同，则称`$\vec{a}$`与`$\vec{b}$`相等，记作` $\vec{a}$` = `$\vec{b}$`***

**向量的模**：向量的大小。表示方法：`$|\overrightarrow{AB}|$`或**a**或`$|\vec{a}|$`

**单位向量**：模等于1的向量。

**零向量**：模为零的向量。记作**0**或`$\vec{0}$`. **零向量的起点与终点重合，他的方向可以看作是任意的。**

**向量平行**：两个非零向量如果它们的方向相同或者相反，就称这两个向量平行。如果向量`$\vec{a}$`和`$\vec{b}$`平行，记作`$\vec{a}//\vec{b}$`。***零向量与任何向量平行。***

**负向量**：与`$\vec{a}$`的模相同，但方向相反的向量，记作`$-\vec{a}$`

**向量共线**：即两向量平行。

**向量共面**：向量经平移可移到同一平面上。

## 空间向量的坐标表示

### 前置：

平面上点P(x, y) `$\rightleftharpoons $` 向量`$\overrightarrow{OP}$`（称为径向量）

对平面上的两点`$A(x_1, y_1)$`，`$B(x_2, y_2)$`，有向线段$\overrightarrow{AB}$的坐标表示

![平面向量的坐标表示.png](https://i.loli.net/2019/04/22/5cbd8c105f8f4.png)

向量$\overrightarrow{AB}$与`x`轴和`y`轴的正向夹角`$\alpha $`和`$\beta$`称为**方向角**

![方向角.png](https://i.loli.net/2019/04/22/5cbd8d65cd061.png)

### 空间向量的坐标表示

<div>$$|\overrightarrow{AB}| = (x_2 - x-1, y_2 - y1, z_2 - z_1)$$</div>

其中`$x_2 - x-1, y_2 - y1, z_2 - z_1$`分别称为`$|\overrightarrow{AB}|$`的`x, y, z`轴方向上的**分量**。

**方向角**：`$0 \leq  \alpha , \beta, \gamma  \leq  \pi$`

**方向余弦**：`$\cos\alpha , \cos\beta, \cos\gamma$`

![空间向量的方向角.png](https://i.loli.net/2019/04/22/5cbd8fb4cc966.png)

空间中的向量也由他的分量唯一确定。因此一个空间的向量通常表示为

<div>$\vec{a} = (a_1, a_2, a_3)$$</div>

并且称它为一个三位向量，且有：

`$|\vec{a}| = \sqrt{a_1^2 + a_2^2 + a_3^2}$`             ` $\cos\alpha = \frac{a_1}{\sqrt{a_1^2 + a_2^2 + a_3^2}}$`

 `$\cos\beta = \frac{a_2}{\sqrt{a_1^2 + a_2^2 + a_3^2}}$ `                 `$\cos\gamma = \frac{a_3}{\sqrt{a_1^2 + a_2^2 + a_3^2}}$`

例：**求从原点到点M(1, 1, 1)的向量$\overrightarrow{OM}$的模，方向余弦与方向角。**

解：`$\overrightarrow{OM} = (1-0, 1-0, 1-0,) = (1, 1, 1)$`

​     模：  `$|\overrightarrow{OM}| = \sqrt{1^2+1^2+1^2} = \sqrt{3}$`

​     方向余弦：`$\cos\alpha = \frac{1}{\sqrt{3}}$`       ` $\cos\beta = \frac{1}{\sqrt{3}}$`         ` $\cos\gamma = \frac{1}{\sqrt{3}}$`

​    方向角：`$\alpha = \beta = \gamma = \arccos\frac{1}{\sqrt{3}}$`


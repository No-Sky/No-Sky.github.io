---
title: "齐次方程"
author: "nosky"
date: 2019-04-26T15:56:15+08:00
draft: false
tags: ["Math", "Differential Equation"]
---

# 解法 

**①化为标准形式：`${y}'=f(\frac{y}{x})$`**

**②代入`$u=\frac{y}{x}$`，代入方程小区`y`**

**③化为`x`与`u`的可分离变量的微分方程，求解**

例1：**求`$x{y}'-x\sin\frac{y}{x}-y=0$`的通解。**

解：原方程可化为：

`${y}'-\sin\frac{y}{x}=0 \Rightarrow {y}'=\sin\frac{y}{x}+\frac{y}{x} \\\\
                 令\frac{y}{x}=u, y=xu, {y}'=u+xu \\\\
                 代入原方程得：u+x{u}'=\sin u+u \\\\
                 \Rightarrow x\frac{\mathrm{d} u}{\mathrm{d} x} = \sin u \\\\
                 \Rightarrow \frac{\mathrm{d} u}{\sin u} = \frac{\mathrm{d} x}{x} \\\\
                 \Rightarrow \int \frac{1}{\sin u}\mathrm{d} u = \int \frac{1}{x}\mathrm{d} x \\\\
                 \Rightarrow ln|\csc u - \cot u| = ln|x| + ln|C| \\\\
                 \Rightarrow \csc u - \cot u = Cx \\\\
                 \Rightarrow \csc\frac{y}{x}-\cot\frac{y}{x}=Cx \\\\
                 即原方程的通解是\csc\frac{y}{x}-\cot\frac{y}{x}=Cx$`

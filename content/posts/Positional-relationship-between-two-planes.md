---
title: "空间中两平面的位置关系"
author: "nosky"
date: 2019-04-25T15:57:33+08:00
draft: false
tags: ["Math", "Vector Algebra and Analytic Geometry"]
---

# 两平面的位置关系

**平面**`$\pi_{1}$`： `$A_{1}x + B_{1}y + C_{1}z + D_{1} = 0  \\\\ \vec{n_{1}} = (A_{1}, B_{1}, C_{1}) $`

**平面**`$\pi_{2}$`: `$A_{2}x + B_{2}y + C_{2}z + D_{2} = 0  \\\\ \vec{n_{2}} = (A_{2}, B_{2}, C_{2})$`

① `$\frac{A_{1}}{A_{2}} = \frac{B_{1}}{B_{2}} = \frac{C_{1}}{C_{2}} \Leftrightarrow \vec{n_{1}} // \vec{n_{2}} \Leftrightarrow \pi_{1} // \pi_{2} $`

​    若`$\frac{A_{1}}{A_{2}} = \frac{B_{1}}{B_{2}} = \frac{C_{1}}{C_{2}} = \frac{D_{1}}{D_{2}} ,\pi_{1}与\pi_{2}$`重合

​    若`$\frac{A_{1}}{A_{2}} = \frac{B_{1}}{B_{2}} = \frac{C_{1}}{C_{2}}  \neq \frac{D_{1}}{D_{2}} ,\pi_{1}与\pi_{2}$`平行不重合

②`$A_{1}A_{2} + B_{1}B_{2} + C_{1}C_{2} = 0 \Leftrightarrow \vec{n_{1}} \perp \vec{n_{2}} \Leftrightarrow \pi_{1} \perp \pi_{2}$`

③`$\cos\theta = \cos(\vec{n_{1}}, \vec{n_{2}}) = \frac{|\vec{n_{1}}·\vec{n_{2}}|}{|\vec{n_{1}}||\vec{n_{2}}|},\theta \in [0, \frac{\pi}{2}]$`

# 点到平面的位置

点`$M_{0}(x_{0},y_{0},z_{0})$`到平面`$\pi：Ax + By + Cz + D = 0$`的距离`d`为:

<div>$$d = \frac{Ax_{0}+By_{0}+Cz_{0}+D}{\sqrt{A^2+B^2+C^2}}$$</div>

# 两平行平面的距离

`$\pi_{1}: Ax + By + Cz + D_{1} = 0 \\\\  \pi_{2}: Ax + By + Cz + D_{2} = 0$`

<div>$$d = \frac{|D_{1}-D_{2}|}{\sqrt{A^2+B^2+C^2}}$$</div>
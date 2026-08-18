# Lecture 10: 晶体中的数学推导

前面的课程里，我们反复"用公式说话"：Lecture 1 用三角学证明晶体学限制定理，Lecture 2 推导了 Bragg 方程、晶面间距公式和 Scherrer 公式，Lecture 3 推导了半径比规则。这一讲把它们中最硬核的两个"手算题"集中补完：**晶面间距的计算**与**晶面能的估算**。学会这两个推导，你对"晶体学 = 对称性 + 几何"这句话就有了切身体会。

## 10.1 晶面间距的计算

### 10.1.1 正交晶系

Lecture 2 只给了晶面间距公式的推导思路，这里把它补完整。考虑一组晶面 $(hkl)$，晶胞参数为 $a, b, c$。晶面在三个轴上的截距分别是：

$$
\frac{a}{h},\ \frac{b}{k},\ \frac{c}{l}
$$

晶面 $(hkl)$ 的法向量方向可以用"截距倒数"构造：与三个轴相交于 $a/h,\ b/k,\ c/l$ 的平面，其法向量为

$$
\vec n = \frac{h}{a}\hat a + \frac{k}{b}\hat b + \frac{l}{c}\hat c
$$

（回忆 Miller 指数本来就是截距的倒数，把倒数再"乘回"轴上，得到的正是法向量方向。）法向量的长度倒数就是晶面间距：

$$
\frac{1}{d} = |\vec n|
$$

对正交晶系，三个轴互相垂直，交叉项全部消失：

$$
\frac{1}{d^2} = \left|\frac{h}{a}\hat a + \frac{k}{b}\hat b + \frac{l}{c}\hat c\right|^2
= \frac{h^2}{a^2} + \frac{k^2}{b^2} + \frac{l^2}{c^2}
$$

这就是 Lecture 2 里直接给出的正交晶系公式。立方晶系（$a = b = c$）退化为：

$$
\frac{1}{d^2} = \frac{h^2 + k^2 + l^2}{a^2}
$$

!!! example "验证一下"
    用上面的公式验证 Lecture 2 用过的三组间距：$d_{100} = a$，$d_{110} = a/\sqrt 2$，$d_{111} = a/\sqrt 3$。

    ??? success "答案"
        对立方晶系：

        $$
        d_{100} = \frac{a}{\sqrt{1}} = a, \qquad
        d_{110} = \frac{a}{\sqrt{2}} = \frac{a}{\sqrt 2}, \qquad
        d_{111} = \frac{a}{\sqrt{3}} = \frac{a}{\sqrt 3}
        $$

        与 Lecture 2 中 Bragg 父子实验用到的间距完全一致——这就是为什么 $(110)$ 峰的 $2\theta$ 比 $(100)$ 大。

### 10.1.2 六方晶系

六方晶系 $a = b \neq c$，$a$、$b$ 两轴夹角 $120^\circ$。取模平方时，$a$、$b$ 方向的交叉项不再为零：

$$
\hat a \cdot \hat b = \cos 120^\circ = -\frac12
$$

于是：

$$
\frac{1}{d^2}
= \frac{h^2}{a^2} + \frac{k^2}{b^2} + \frac{l^2}{c^2} + 2\cdot\frac{h}{a}\cdot\frac{k}{b}\cdot\cos 120^\circ
$$

代入 $a = b$、$\cos 120^\circ = -1/2$：

$$
\frac{1}{d^2} = \frac{h^2 + k^2 - hk}{a^2}\cdot\frac{4}{3} + \frac{l^2}{c^2}
= \frac{4}{3}\frac{h^2 + hk + k^2}{a^2} + \frac{l^2}{c^2}
$$

（注意 $-hk$ 变成 $+hk$ 的来源：$2 \times \frac12 \times (-\frac12) = -\frac12$ 对应到 $4/3$ 系数下的 $+hk$ 项——Lecture 2 里"交叉项系数即为 $4/3$ 的来源"说的就是这一步。）

!!! note "更一般的晶系"
    单斜、三斜晶系里非 $90^\circ$ 的夹角更多，法向量取模时会出现 $\cos\beta$、$\cos\alpha$、$\cos\gamma$ 等交叉项，公式写成一般形式需要引入倒格子（reciprocal lattice）概念，超出本课程范围。想深入的话，可以从"倒格矢长度倒数 = 晶面间距"这个更漂亮的视角重新推导。

## 10.2 晶面能的估算

### 10.2.1 表面能与断键

晶面能（表面能）本质是**表面吉布斯自由能**：把晶体沿某个晶面切开，需要打断化学键，断键消耗的能量 ÷ 新产生的表面积，就是晶面能。**断键越少、单位面积越小，晶面能越低**，晶面越稳定——这是 Lecture 1 布拉维法则的定量版。

考虑一个简单的立方晶体模型：原子按立方密堆积排列，相邻原子间的键能为 $u$，原子半径为 $r$，晶胞边长 $a = 2r$。下面计算 $(100)$ 和 $(110)$ 两个面的晶面能。

!!! Tip "示例：  [**氯化钠 NaCl**](https://next-gen.materialsproject.org/materials/mp-22862)"
    | 球棍模型 | 多面体模型 |
    | :---: | :---: |
    | <img src="lecture10.assets/PLACEHOLDER_nacl_ball_stick.png" alt="占位符：NaCl 球棍模型（原图：temp/images/image146.png）" style="zoom:50%;" /> | <img src="lecture10.assets/PLACEHOLDER_nacl_polyhedra.png" alt="占位符：NaCl 多面体模型（原图：temp/images/image146.png）" style="zoom:50%;" /> |

     <center> [mp-22862](https://next-gen.materialsproject.org/materials/mp-22862) · [CIF 下载](cifs/NaCl.cif) </center>

### 10.2.2 $(100)$ 面

沿 $(100)$ 面把晶体切为左右两半：

- 该面上的每个原子断了 $4$ 根键（面内的前后左右各 1 根，面外方向的键被切断）；
- 一个晶胞的 $(100)$ 面上有 $2$ 个原子；
- 一个原子"断 4 根键"要付出 $4u$ 的能量，2 个原子共 $8u$；但每根键被切开后属于**两个新表面**，所以分子里有个因子 2 的抵消（讲义写为 $4u \times 2$）；
- 该表面的面积：$(100)$ 面上每 $2r \times 2r = 4r^2$ 有 1 个原子，2 个原子对应面积 $8r^2$；
- 切开后创造了**两个**晶面。

$$
E_{(100)} = \frac{4u \times 2}{8r^2 \times 2} = \frac{u}{2r^2}
$$

### 10.2.3 $(110)$ 面

沿 $(110)$ 面（体对角线方向的对角面）切开：

- **第一层**原子一共断裂 $10$ 根键；
- **第二层**原子断裂 $2$ 根键；
- 该面的面积：$(110)$ 面是 $2r \times 2\sqrt{2}\,r = 4\sqrt{2}\,r^2$，一层的原子数为 $2$，两层合计 $8\sqrt{2}\,r^2$（讲义按 $8\sqrt{2}\,r^2$ 计）；
- 同样切开后创造了两个晶面。

$$
E_{(110)} = \frac{12U}{8\sqrt{2}\,r^2 \times 2} = \frac{3U}{2\sqrt{2}\,r^2}
$$

对比两个结果：

$$
E_{(100)} = \frac{u}{2r^2}, \qquad E_{(110)} = \frac{3u}{2\sqrt{2}\,r^2} \approx 1.06\,\frac{u}{2r^2}
$$

$(100)$ 的晶面能略低，所以立方晶体最容易暴露 $\{100\}$ 面——这正好解释了 Lecture 1 里"$\ce{NaCl}$ 单晶长成立方体"：低指数面断键少、晶面能低，生长最慢、最后留在宏观晶体上。

<img src="lecture10.assets/PLACEHOLDER_surface_energy.png" alt="占位符：(100) 与 (110) 晶面能估算（原图：temp/images/image319.png–image324.png）" style="zoom:50%;" />

!!! abstract "把数学还给晶体"
    整门课出现过的推导，现在可以串成一张清单：

    | 推导 | 出处 | 核心手法 |
    | :--: | :--: | :-- |
    | 晶体学限制定理 $2a\cos\frac{2\pi}{n} = m$ | Lecture 1 | 平移对称性 + 三角学 |
    | Bragg 方程 $2d\sin\theta = n\lambda$ | Lecture 2 | 光程差 = 整数倍波长 |
    | 晶面间距公式 | 本讲 10.1 | 法向量取模 |
    | Scherrer 公式 $D = K\lambda/(\beta\cos\theta)$ | Lecture 2 | 有限层数干涉函数 |
    | 半径比规则（0.225 / 0.414 / 0.732） | Lecture 3 | 临界接触几何 |
    | 晶面能估算 | 本讲 10.2 | 断键数 ÷ 新增表面积 |

    记住一个心法：**晶体的数学推导，十有八九是"平移/干涉/接触"三种几何的排列组合**。

---

<center>第十章 结束</center>

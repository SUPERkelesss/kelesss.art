# Lecture 5: 单质晶体

前面几讲我们一直在看"两种原子怎么配合"，这一讲换个口味：**只有一种原子时，晶体怎么选结构？** 答案是：先把球堆起来（稀有气体、金属），再让化学键说了算（共价单质）。这一讲你会看到，堆积语言不仅能描述化合物，还能解释"为什么 $\ce{Mg}$ 是 hcp、$\ce{Fe}$ 是 bcc、金刚石是四面体"这类最基础的问题。

## 5.1 稀有气体与金属的密堆积

### 5.1.1 稀有气体：全都 ccp

稀有气体原子之间只有微弱的范德华力，没有方向性，所以它们尽量堆得最密——几乎所有稀有气体晶体都是 **ccp**：

$$
\text{稀有气体}: \quad 3P
$$

<img src="lecture5.assets/PLACEHOLDER_noble_gas.png" alt="占位符：稀有气体的 ccp 堆积（原图：temp/images/image114.png）" style="zoom:50%;" />

### 5.1.2 金属：三种常见堆积

金属键同样没有方向性，金属原子按密堆积"自觉排队"，常见的有三种：

| 堆积 | 记号 | 实例 |
| :--: | :--: | :-- |
| hcp | $2P$ | $\ce{Mg}$、$\ce{Zn}$ |
| ccp / fcc | $3P$ | $\ce{Cu}$、$\ce{Al}$ |
| bcc | $3 \cdot 2PTOT$ | $\ce{Fe}$（$\alpha$）、$\ce{Na}$、$\ce{W}$ |

其中 bcc 的堆积记号说明它其实可以看作"体心空隙被填满的密堆积"——对 ccp 而言 $P$ 与 $O$ 等价，所以也常写作 $2$。此外还有**双六方密堆积**（dhcp）：层序 $ABAC$，周期 4 层，如 $\ce{La}$ 等稀土金属（$4P$）。

<img src="lecture5.assets/PLACEHOLDER_metal_packings.png" alt="占位符：hcp、ccp、bcc、dhcp 四种金属堆积（原图：temp/images/image115.png）" style="zoom:50%;" />

!!! note "C 族例外：金刚石"
    共价性较强的碳族元素（$\ce{C}$、$\ce{Si}$、$\ce{Ge}$ 等）放弃密堆积，选择方向性的 $sp^3$ 键，采取**金刚石**结构 $3 \cdot 2PT$（Lecture 7 闪锌矿的"单元素版"）。碳的同素异形体我们 5.6 再细说。

!!! Tip "示例：  [**金刚石 C**](https://next-gen.materialsproject.org/materials/mp-XXXXXX)"
    | 球棍模型 | 多面体模型 |
    | :---: | :---: |
    | <img src="lecture5.assets/PLACEHOLDER_diamond_ball_stick.png" alt="占位符：金刚石球棍模型（原图：temp/images/image137.png）" style="zoom:50%;" /> | <img src="lecture5.assets/PLACEHOLDER_diamond_polyhedra.png" alt="占位符：金刚石四面体模型（原图：temp/images/image137.png）" style="zoom:50%;" /> |

     <center> [mp-XXXXXX](https://next-gen.materialsproject.org/materials/mp-XXXXXX) · [CIF 下载](cifs/PLACEHOLDER_diamond.cif) </center>

## 5.2 金属堆积的选择：为什么会有 bcc？

既然 hcp 和 ccp 的堆积系数（$74\%$）都比 bcc（$68\%$）高，为什么还有那么多金属选 bcc？讲义给了三个视角：

### 5.2.1 变形性

金属要能"滑"，滑移方向不能被原子挡住：

- **bcc**：滑移方向被原子阻断，变形性**最差**；
- **hcp**：只有一个方向可以发生层间滑动（$c$ 方向的层错），变形性居中；
- **ccp**：三个方向都可以滑移，**最好**——这也是金、铝容易打弯而镁、锌容易脆断的原因。

### 5.2.2 成键与单电子轨道

bcc 的每个原子有 **8 + 6 = 14** 个近邻（8 个最近 + 6 个次近），比 ccp 的 12 个更多，成键机会更多。因此**单电子轨道较多**的金属（中间的过渡系金属、碱金属和碱土金属）倾向于用 bcc 多"键"几个邻居。

### 5.2.3 温度效应

很多金属随温度变换堆积：**低温有利于 bcc，中温有利于 hcp，高温又回到 bcc**——高温下晶格振动幅度大，bcc 给原子留出的"呼吸空间"更大。

!!! note "讲座的说法"
    讲义原话："低温有利于 bcc，而中温有利于 hcp，然而高温又有利于 bcc（晶格振动空间更大）。"铁就是活例子：$\alpha$-$\ce{Fe}$（bcc）→ $\gamma$-$\ce{Fe}$（ccp）→ $\delta$-$\ce{Fe}$（bcc）。

## 5.3 特殊的金属晶体鉴赏

金属也不是总那么"守规矩"，讲义带我们欣赏了一批"叛逆"的晶体：

- **$\ce{Mn}$**：bcc 基础，但晶格畸变导致**四种不同构型**的锰（$\alpha$、$\beta$、$\gamma$、$\delta$）；
- **$\ce{Zn}$ / $\ce{Cd}$**：hcp 但 $a/c$ 比**严重偏离理想值**，配位多面体的上下两层被拉伸——因为满的 $d^{10}$ 轨道无法有效成键，上下层只能"貌合神离"；
- **$\ce{Ga}$**：形成明显的 $\ce{Ga2}$ **原子对**（和 $\ce{I2}$ 分子类似，图中 $c$ 方向），所以镓熔点极低；
- **$\alpha$-$\ce{As}$、$\ce{Sb}$、$\ce{Bi}$**：层状结构，层间像"手风琴"一样弱结合；
- **$\ce{In}$**：四方畸变的 bcc；
- **$\beta$-$\ce{Sn}$**：四方畸变的金刚石（注意晶胞选取），而 $\alpha$-$\ce{Sn}$ 就是正常的金刚石结构——白锡和灰锡的秘密就在这里；
- **$\ce{Sm}$**：不知为何采取 9 层堆积（$ABACACBCB$，Lecture 3 表里出现过）；
- **$\beta$-$\ce{W}$**：A15 结构，我们 Lecture 9 讲 Frank–Kasper 相时还会见到。

<img src="lecture5.assets/PLACEHOLDER_special_metals1.png" alt="占位符：Mn、Zn/Cd、Ga、As/Sb/Bi 的晶体（原图：temp/images/image116.png、image117.png、image118.png、image119.png）" style="zoom:50%;" />

<img src="lecture5.assets/PLACEHOLDER_special_metals2.png" alt="占位符：In、β-Sn、Sm、β-W 的晶体（原图：temp/images/image120.png、image121.png、image122.png、image123.png）" style="zoom:50%;" />

## 5.4 从 ccp 到 bcc 的"变形记"

### 5.4.1 压缩密置层

bcc 和 ccp 不是毫无关系：**把每个 ccp 的密置层压缩**，让原子在层内互相靠近、层间距离拉开，ccp 就"塌"成了 bcc。因此 $3 \cdot 2PTOT$ 某种程度上可以看作**扭曲的 $3P$**；另一种看法是把它看成**素晶胞的拉伸**。

<img src="lecture5.assets/PLACEHOLDER_ccp_to_bcc.png" alt="占位符：从 ccp 到 bcc 的密置层压缩（原图：temp/images/image124.png、image125.png）" style="zoom:50%;" />

### 5.4.2 bcc 的密度之谜

一个"令人迷惑的事实"：**bcc 的密度通常高于同温下的 ccp/hcp**，尽管硬球模型里 bcc 的堆积系数更低。这说明**硬球模型的局限性**：

- bcc 的原子是"**软球**"——考虑到周围环境，bcc（8 + 6）比 ccp（12）成的"键"更多；
- 相比于比较封闭的密堆积，bcc 原子还能与**再外围的 12 个原子**发生作用；
- 结果就是 bcc 原子像"陷"在周围原子中，有效原子间距更小，密度反而更高。

<img src="lecture5.assets/PLACEHOLDER_bcc_density.png" alt="占位符：bcc 软球模型与周围原子作用（原图：temp/images/image126.png）" style="zoom:50%;" />

!!! abstract "小结"
    选择堆积不是只看"堆得最密"，而是**成键数目、滑移能力、温度**三者的平衡。bcc 靠"多邻居"取胜，ccp/hcp 靠"堆得紧、滑得动"取胜。

## 5.5 双原子气体与分子晶体

### 5.5.1 氢、氮：分子做球

$\ce{H2}$、$\ce{N2}$ 分子近似看成椭球，晶体采取 hcp/ccp 堆积（分子取向可以忽略）。

<img src="lecture5.assets/PLACEHOLDER_h2_n2.png" alt="占位符：H2/N2 的分子堆积（原图：temp/images/image127.png）" style="zoom:50%;" />

### 5.5.2 A15 无序：β-F$_2$、γ-O$_2$、δ-N$_2$

$\beta$-$\ce{F2}$、$\gamma$-$\ce{O2}$、$\delta$-$\ce{N2}$ 形成一类有趣的结构：分子在 A15 骨架中**无序排布**，但面上的分子**只能沿某个平面运动**（为保持 $Pm\overline{3}n$ 的晶体对称性）。这就像"分子被关在笼子里，但笼子给它留了一条滑梯"。

<img src="lecture5.assets/PLACEHOLDER_a15_molecules.png" alt="占位符：A15 结构中无序排布的分子（原图：temp/images/image128.png）" style="zoom:50%;" />

### 5.5.3 氧的高压相与红氧

$\ce{O2}$ 随压力增大形成一系列有趣的相（$\alpha \to \beta \to \gamma \to \delta \to \varepsilon \to \zeta \to \dots$）。其中 **$\varepsilon$-$\ce{O2}$（红氧）**最为出名：它形成 **$\ce{O8}$ 结构**——相邻 $\ce{O2}$ 的垂直方向 $\pi$ 轨道互相成键，四个氧分子"手拉手"围成一个环。

<img src="lecture5.assets/PLACEHOLDER_o2_phases.png" alt="占位符：O2 的高压相与 ε-O2 的 O8 结构（原图：temp/images/image129.png、image130.png）" style="zoom:50%;" />

### 5.5.4 卤素晶体

$\alpha$-$\ce{F2}$、$\ce{Cl2}$、$\ce{Br2}$、$\ce{I2}$ 晶体类似，都有**增强的层间相互作用**（分子间作用随卤素原子增大而增强）：除 $\ce{F2}$ 为单斜（$m$）外，其余均为正交（$o$）。$\ce{I2}$ 中明显的分子层就是"层状分子晶体"的教科书案例。

<img src="lecture5.assets/PLACEHOLDER_halogens.png" alt="占位符：卤素晶体的层状结构（原图：temp/images/image131.png、image132.png）" style="zoom:50%;" />

## 5.6 大型离散非金属

### 5.6.1 硼：B$_{12}$ 簇

硼单质的骨架由 **$\ce{B12}$ 二十面体簇**连接而成。每个簇有 $36$ 个电子，分三笔"账"：

1. $26$ 个电子用于**簇内成键**；
2. 赤道面上的六元环**共用 $4$ 个电子**，形成 $3c2e$（三中心两电子）键；
3. 其余的电子形成普通的 **$\ce{B-B}$ 单键**，把簇与簇连接起来，整体做 $ABCABC$ 近似堆积。

<img src="lecture5.assets/PLACEHOLDER_boron_b12.png" alt="占位符：B12 簇的三种成键（原图：temp/images/image133.png、image134.png、image135.png）" style="zoom:50%;" />

### 5.6.2 硫：三种形态

硫有**单斜硫**、**菱方硫**（$\ce{S8}$ 环，相对稳定）和**弹性硫**（无限 $\ce{S}$ 长链）三种常见形态；还有由 $\ce{S6}$ 环组成的硫晶体。

<img src="lecture5.assets/PLACEHOLDER_sulfur.png" alt="占位符：S8 环与 S6 晶体（原图：temp/images/image136.png）" style="zoom:50%;" />

### 5.6.3 碳与氮化硼

碳的堆积语言非常丰富：金刚石 $3 \cdot 2PT$、六方金刚石（$2 \cdot 2PT$ 型）、石墨的 $2IP$ 与 $3IP$——其中 $IP$ 指**石墨中相互叠加的密置层**（$\ce{C}$ 蜂窝层）。

!!! Tip "示例：  [**石墨 C**](https://next-gen.materialsproject.org/materials/mp-XXXXXX)"
    | 球棍模型 | 多面体模型 |
    | :---: | :---: |
    | <img src="lecture5.assets/PLACEHOLDER_graphite_ball_stick.png" alt="占位符：石墨球棍模型（原图：temp/images/image137.png）" style="zoom:50%;" /> | <img src="lecture5.assets/PLACEHOLDER_graphite_layers.png" alt="占位符：石墨层状模型（原图：temp/images/image137.png）" style="zoom:50%;" /> |

     <center> [mp-XXXXXX](https://next-gen.materialsproject.org/materials/mp-XXXXXX) · [CIF 下载](cifs/PLACEHOLDER_graphite.cif) </center>

- **金刚石 → 石墨**：可以看作**压缩密置层**的结果——把 $sp^3$ 骨架压扁，层内连成六元环、层间变成范德华力；
- **$\ce{BN}$**（氮化硼）：结构与石墨类似，但**没有层间滑移**（层间存在电性相互作用），所以 BN 是白色的"绝缘石墨"，比石墨硬得多。

<img src="lecture5.assets/PLACEHOLDER_c_bn.png" alt="占位符：金刚石到石墨的转变与 BN（原图：temp/images/image138.png、image139.png）" style="zoom:50%;" />

### 5.6.4 磷：四种结构

磷的四种常见形态：

- **白磷（$\ce{P4}$）**：四面体分子，分子晶体；
- **红磷**：无定形；
- **黑磷**：一种堆积可看作**扭曲的 $2IP$**，层序写为 $IP(AA')IP(BB')$——它是磷最稳定、最像金属的形式；
- **紫磷**：结构单元为 $\ce{P2 P8 P2 P9}$，其中 $\ce{P9}$ 单元相互连接，两个**管状结构相互交叉**。

!!! Tip "示例：  [**白磷 P4**](https://next-gen.materialsproject.org/materials/mp-XXXXXX)"
    | 球棍模型 | 多面体模型 |
    | :---: | :---: |
    | <img src="lecture5.assets/PLACEHOLDER_p4_ball_stick.png" alt="占位符：白磷 P4 分子（原图：temp/images/image140.png）" style="zoom:50%;" /> | <img src="lecture5.assets/PLACEHOLDER_p4_packing.png" alt="占位符：白磷晶体堆积（原图：temp/images/image140.png）" style="zoom:50%;" /> |

     <center> [mp-XXXXXX](https://next-gen.materialsproject.org/materials/mp-XXXXXX) · [CIF 下载](cifs/PLACEHOLDER_white_phosphorus.cif) </center>

<img src="lecture5.assets/PLACEHOLDER_phosphorus.png" alt="占位符：黑磷与紫磷的结构（原图：temp/images/image141.png、image142.png、image143.png、image144.png）" style="zoom:50%;" />

### 5.6.5 硒、碲：螺旋轴

$\ce{Se}$、$\ce{Te}$ 的晶体由**螺旋链**组成，链内的共价键沿螺旋轴（Lecture 1 讲过的 $3_1$ 或 $3_2$ 螺旋轴）连接，链间靠范德华力。所以硒碲既是半导体又能解理成纤维状。

<img src="lecture5.assets/PLACEHOLDER_se_te.png" alt="占位符：Se/Te 的螺旋链结构（原图：temp/images/image145.png）" style="zoom:50%;" />

## 5.7 一些分子的结构

最后看两个"分子作单元"的例子：

- **$\ce{CO}$、$\ce{CO2}$**：堆积方式与 $\ce{N2}$ 相同（分子近似椭球，hcp/ccp 堆积）；
- **二苯铬 $\ce{Cr(C6H6)2}$**：两个苯环夹着铬的**夹心结构**，可以看作八面体配位（$PO$）的"分子版"——苯环的 $\pi$ 电子云代替了六个配位原子。

!!! abstract "本讲总结"
    单质晶体的选择逻辑：

    - 无方向性作用（范德华/金属键）→ 密堆积（ccp/hcp/bcc），具体选哪种由成键数、滑移、温度决定；
    - 有方向性作用（共价键）→ 低配位骨架（金刚石 $3 \cdot 2PT$、石墨 $IP$、$\ce{B12}$ 簇、$\ce{P4}$ 分子）；
    - 同一元素可以有多种堆积（碳、硫、磷、氧），结构化学的任务之一就是解释"为什么是这一种"。

---

<center>第五章 结束</center>

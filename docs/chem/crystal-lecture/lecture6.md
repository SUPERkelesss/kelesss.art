# Lecture 6: 八面体配位的晶体

从本讲开始，我们正式进入"堆积语言"的收获期：把 Lecture 3 学会的记号（$P$ 密置层、$T$ 四面体空隙、$O$ 八面体空隙）套到真实的晶体上。本讲的主角是**八面体空隙**——凡是堆积记号里出现 $O$ 的结构，阳离子都坐在阴离子密堆积留下的八面体空隙里，最常见的化学计量比是 1 : 1（全填 $O$）或 1 : 2（填一半 $O$）。我们先从最经典的 $\ce{NaCl}$ 出发，再看它的各种"变装"，最后一路看到层状结构。

## 6.1 ccp：NaCl 型

### 6.1.1 基本结构

氯化钠是堆积语言的第一个标准答案：氯离子做**立方密堆积**（ccp，层序 $ABC$），钠离子填满**全部八面体空隙**。用 Lecture 3 的记号写出来就是：

$$
\ce{NaCl}: \quad 3 \cdot 2PO \qquad (P(A)\,O\,P(B)\,O\,P(C)\,O)
$$

每个密置层原子对应 1 个八面体空隙（3.1.3 的计数规律），全部填满后阳:阴 = 1 : 1，正好是 $\ce{NaCl}$。结构信息汇总如下：

- 晶系/点群：立方晶系，$O_h$；
- 点阵形式：$cF$（面心立方）；
- 空间群：$Fm\overline{3}m$；
- 堆积记号：$3 \cdot 2PO$；
- $\ce{Na}$ 占据 $4a$ 位 $(0,0,0)$，$\ce{Cl}$ 占据 $4b$ 位 $(\frac12,\frac12,\frac12)$（Wyckoff 记号，见 Lecture 1）。

!!! Tip "示例：  [**氯化钠 NaCl**](https://next-gen.materialsproject.org/materials/mp-22862)"
    | 球棍模型 | 多面体模型 |
    | :---: | :---: |
    | <img src="lecture6.assets/PLACEHOLDER_nacl_ball_stick.png" alt="占位符：NaCl 球棍模型（原图：temp/images/image146.png）" style="zoom:50%;" /> | <img src="lecture6.assets/PLACEHOLDER_nacl_polyhedra.png" alt="占位符：NaCl 多面体模型（原图：temp/images/image146.png）" style="zoom:50%;" /> |

     <center> [mp-22862](https://next-gen.materialsproject.org/materials/mp-22862) · [CIF 下载](cifs/NaCl.cif) </center>

!!! note "NaCl 在 Lecture 2 里的伏笔"
    我们在 2.1.3 和 2.2.2 用 $\ce{NaCl}$ 演示过系统消光：$F$ 点阵要求 $h,k,l$ 同奇同偶，所以 $(100)$、$(110)$ 被消光，一级衍射从 $(200)$、$(220)$、$(111)$ 开始。现在看到 $cF$ 就知道这是面心点阵的必然结果，两个 Lecture 在这里闭环了。

### 6.1.2 NaCl 的缺陷化学

完美的 $\ce{NaCl}$ 只是起点，真实晶体总是带着缺陷，而缺陷常常直接改变晶体的颜色和导电性。

**1）色心（F-center）。** 把 $\ce{NaCl}$ 放在钠蒸气中加热，多余的钠原子会进入晶体：钠给出电子变成 $\ce{Na^+}$ 占据正常位点，同时留下**氯离子空位**，被空位"囚禁"的电子吸收可见光，晶体呈现**黄色**。这种电子缺陷叫色心，我们 Lecture 4 讲晶体显色时还会见到它。

<img src="lecture6.assets/PLACEHOLDER_f_center.png" alt="占位符：NaCl 色心示意图（原图：temp/images/image147.png）" style="zoom:50%;" />

**2）Koch 原子簇（$\ce{Fe_{1-x}O}$）。** 正常 $\ce{FeO}$ 就是 $\ce{NaCl}$ 结构；但 $\ce{FeO}$ 在氧气中加热会部分氧化，部分 $\ce{Fe^{2+}}$ 变成 $\ce{Fe^{3+}}$。$\ce{Fe^{3+}}$ 半径更小，不再安分地待在八面体空隙里，而是**跑进四面体空隙**，形成 $\ce{Fe4O10}$ 原子簇。为了电荷中性，一个 $\ce{Fe4O10}$ 簇对应 6 个 $\ce{Fe^{2+}}$ 空位：其中 1 个位于体心，5 个无序地分布在棱上。这就是非整比化合物 $\ce{Fe_{1-x}O}$ 微观上的真相。

<img src="lecture6.assets/PLACEHOLDER_koch_cluster.png" alt="占位符：Fe4O10 Koch 原子簇（原图：temp/images/image148.png）" style="zoom:50%;" />

**3）NbO 结构（$3 \cdot 2P_{3/4}O_{3/4}$）。** 如果阳离子自己很想成键，情况会更极端。$\ce{NbO}$ 可以看成"挖掉一部分原子"的 $\ce{NaCl}$：堆积记号为 $3 \cdot 2P_{3/4}O_{3/4}$，即密置层和八面体空隙都只填充 $3/4$。剩下 $\ce{Nb}$ 之间强烈的金属-金属成键形成了**$\ce{Nb6}$ 原子簇**——注意此时每个 $\ce{Nb}$ 的配位数高达 12。其他铌化合物（如 $\ce{Nb2F5}$）里也常见 $\ce{Nb6}$ 簇。

<img src="lecture6.assets/PLACEHOLDER_nbo_structure.png" alt="占位符：NbO 结构与 Nb6 原子簇（原图：temp/images/image149.png、image150.png）" style="zoom:50%;" />

!!! note "Mg3NF3"
    $\ce{Mg3NF3}$ 可以看作 $\ce{NaCl}$ 型框架中，八面体空隙的中心由 $\ce{N^{3-}}$ 占据的特殊情形——同样是八面体配位，但中心离子换成了阴离子，结构依然稳定。

### 6.1.3 NaCl 的变种

$\ce{NaCl}$ 型结构太常见了，以至于化学家们不断往里面"塞私货"。讲义整理了五种典型变种：

**1）$\ce{CaC2}$ / $\ce{BaO2}$ 型。** 把 $\ce{NaCl}$ 里的一个阴离子换成哑铃形的 $\ce{C2^{2-}}$ 或 $\ce{O2^{2-}}$。如果所有哑铃都朝同一个方向，立方对称性被破坏，晶系降为**四方**。

**2）$\ce{FeS2}$ / $\ce{PtN2}$ 型。** 同样是把阴离子换成 $\ce{S2^{2-}}$，但这些哑铃的取向像干冰（二氧化碳）那样交错排列，整体仍保持**立方**晶系（黄铁矿就是这种结构）。

<img src="lecture6.assets/PLACEHOLDER_nacl_variants.png" alt="占位符：CaC2 型与 FeS2 型的哑铃取向（原图：temp/images/image152.png、image153.png）" style="zoom:50%;" />

**3）混合堆积：$\ce{NaFeO2}$、$\ce{AgBiSe2}$ 等。** 当阳离子不止一种，密置层和八面体填充层可以交替"混搭"，例如 $3 \cdot 4POPO$ 形式——$P$ 层和 $O$ 填充层交错出现，相当于把多个 $\ce{NaCl}$ 层"剪辑"拼在一起。

<img src="lecture6.assets/PLACEHOLDER_nafeo2.png" alt="占位符：NaFeO2 的 3·4POPO 混合堆积（原图：temp/images/image154.png、image155.png）" style="zoom:50%;" />

**4）方解石 $\ce{CaCO3}$。** 把 $\ce{NaCl}$ 中的一个原子替换成平面三角形的 $\ce{CO3^{2-}}$ 基团。由于 $\ce{CO3}$ 有取向，晶系降为**三方**，$c$ 轴扩充一倍。$\ce{CaCO3}$ 的另一个同分异构体霰石则来自 $\ce{NiAs}$ 型（见 6.2.2），两个碳酸钙摆在一起看特别有意思。

<img src="lecture6.assets/PLACEHOLDER_calcite.png" alt="占位符：方解石 CaCO3 结构（原图：temp/images/image156.png）" style="zoom:50%;" />

**5）锐钛矿 $\ce{TiO2}$（$3 \cdot 4PO_{2/3}PO_{1/3}$）。** 把 $\ce{NaCl}$ 的八面体空隙按 $2/3 : 1/3$ 交替填充，可以看作"去原子的 $\ce{NaCl}$"——它和 6.4.1 的金红石同为 $\ce{TiO2}$，但堆积方式完全不同。

<img src="lecture6.assets/PLACEHOLDER_anatase.png" alt="占位符：锐钛矿 TiO2 结构（原图：temp/images/image157.png、image158.png）" style="zoom:50%;" />

!!! abstract "NaCl 家族速查"
    | 变种 | 堆积记号 | 关键改动 |
    | :--: | :--: | :-- |
    | $\ce{NaCl}$ | $3 \cdot 2PO$ | 标准型 |
    | $\ce{NbO}$ | $3 \cdot 2P_{3/4}O_{3/4}$ | 原子空缺 + $\ce{Nb6}$ 簇 |
    | $\ce{CaC2}$ | $3 \cdot 2PO$ | 阴离子换哑铃，四方 |
    | $\ce{FeS2}$ | $3 \cdot 2PO$ | 哑铃交错，仍立方 |
    | $\ce{NaFeO2}$ | $3 \cdot 4POPO$ | 混合堆积 |
    | $\ce{CaCO3}$（方解石） | 三方化 | $\ce{CO3^{2-}}$ 取向 |
    | $\ce{TiO2}$（锐钛矿） | $3 \cdot 4PO_{2/3}PO_{1/3}$ | 空隙部分填充 |

## 6.2 hcp：NiAs 型

### 6.2.1 基本结构

把阴离子堆积从 ccp 换成 hcp（层序 $AB$），八面体空隙全部填满，就得到 $\ce{NiAs}$ 型结构：

$$
\ce{NiAs}: \quad 2 \cdot 2PO
$$

结构信息：

- 晶系/点群：六方晶系，$D_{6h}$；
- 点阵形式：$hP$；
- 空间群：$P6_3/mmc$；
- 堆积记号：$2 \cdot 2PO$。

!!! Tip "示例：  [**砷化镍 NiAs**](https://next-gen.materialsproject.org/materials/mp-XXXXXX)"
    | 球棍模型 | 多面体模型 |
    | :---: | :---: |
    | <img src="lecture6.assets/PLACEHOLDER_nias_ball_stick.png" alt="占位符：NiAs 球棍模型（原图：temp/images/image159.png）" style="zoom:50%;" /> | <img src="lecture6.assets/PLACEHOLDER_nias_polyhedra.png" alt="占位符：NiAs 多面体模型（原图：temp/images/image160.png）" style="zoom:50%;" /> |

     <center> [mp-XXXXXX](https://next-gen.materialsproject.org/materials/mp-XXXXXX) · [CIF 下载](cifs/PLACEHOLDER_NiAs.cif) </center>

$\ce{NiAs}$ 有两点特别值得注意：

- **三棱柱配位**：由于 $\ce{Ni-As}$ 间共价性较强，$\ce{Ni}$ 实际处于由 6 个 $\ce{As}$ 围成的**三棱柱**中，而且这些三棱柱还**共面连接**——在离子晶体里共面是"禁忌"（鲍林规则 3），共价成分高的 $\ce{NiAs}$ 才敢这么干；
- **沿 $c$ 轴的 $\ce{Ni}$ 链**：$\ce{Ni}$ 原子在 $c$ 方向连成直线，金属-金属接触使 $\ce{NiAs}$ 具有良好的导电性。

<img src="lecture6.assets/PLACEHOLDER_nias_trigonal_prism.png" alt="占位符：NiAs 的三棱柱配位与 c 轴 Ni 链（原图：temp/images/image159.png、image160.png）" style="zoom:50%;" />

### 6.2.2 NiAs 的变式

**1）$\ce{ZnWO4}$：$2 \cdot 2PO_{1/2}(\ce{Zn})PO_{1/2}(\ce{W})$。** 把两种阳离子分开放进两套八面体空隙，各填一半。为了容纳两种不同大小的阳离子，晶系畸变为（近乎正交的）**单斜**。作为对比，$\ce{CaWO4}$（白钨矿）反而更接近锐钛矿，我们 Lecture 7 讲萤石时再提。

<img src="lecture6.assets/PLACEHOLDER_znwo4.png" alt="占位符：ZnWO4 结构（原图：temp/images/image161.png）" style="zoom:50%;" />

**2）霰石 $\ce{CaCO3}$。** 方解石的孪生兄弟霰石是 **正交** 晶系，堆积方式与 $\ce{NiAs}$ 有关：$\ce{CO3^{2-}}$ 被**分裂成两层**，把 $\ce{NiAs}$ 的层序改造成了正交堆叠。把方解石（$a$）和霰石摆在一起对比，能直观看到 $\ce{CO3}$ 取向如何影响晶系。

<img src="lecture6.assets/PLACEHOLDER_aragonite.png" alt="占位符：霰石 CaCO3 与方解石对比（原图：temp/images/image162.png、image163.png、image164.png）" style="zoom:50%;" />

**3）$\ce{InNi2}$：填隙的 $\ce{NiAs}$。** 在 $\ce{NiAs}$ 的基础上，把额外的 $\ce{In}$ 填进剩余的空隙，就得到 $\ce{InNi2}$——结构的主干仍然是 $\ce{NiAs}$ 型的 hcp 骨架。

<img src="lecture6.assets/PLACEHOLDER_inni2.png" alt="占位符：InNi2 填隙 NiAs 结构（原图：temp/images/image165.png）" style="zoom:50%;" />

## 6.3 钙钛矿 CaTiO$_3$：部分填充的 PO

### 6.3.1 堆积描述

钙钛矿（perovskite）是材料科学里最著名的结构家族，但它的堆积描述其实很朴素——**部分填充的 $PO$**：

$$
\ce{CaTiO3}: \quad 3 \cdot 2P_{1/4\,3/4}O_{1/4}
$$

其中"部分填充层"由 $\ce{Ca}$ 和 $\ce{O}$ **共同堆积**（六方排布），$\ce{Ti}$ 只填四分之一的八面体空隙。这样写的好处是：它清清楚楚地说明钙钛矿是从密堆积出发的，而不是什么天外飞仙。

!!! Tip "示例：  [**钛酸钙 CaTiO3**](https://next-gen.materialsproject.org/materials/mp-XXXXXX)"
    | 球棍模型 | 多面体模型 |
    | :---: | :---: |
    | <img src="lecture6.assets/PLACEHOLDER_catio3_ball_stick.png" alt="占位符：CaTiO3 球棍模型（原图：temp/images/image166.png）" style="zoom:50%;" /> | <img src="lecture6.assets/PLACEHOLDER_catio3_polyhedra.png" alt="占位符：CaTiO3 多面体模型（原图：temp/images/image166.png）" style="zoom:50%;" /> |

     <center> [mp-XXXXXX](https://next-gen.materialsproject.org/materials/mp-XXXXXX) · [CIF 下载](cifs/PLACEHOLDER_CaTiO3.cif) </center>

!!! note "为什么钙钛矿这么出名？"
    它的骨架（$\ce{BO6}$ 八面体共顶点网络）可以容纳几乎任意大小的阳离子（A 位），还能容忍大量缺陷和替换——铁电、压电、超导、催化都有它的身影。Lecture 4 讲铁电体时还会看到 $\ce{BaTiO3}$。

### 6.3.2 钙钛矿的变形

**1）$\ce{BaTiO3}$ 的温度相变。** 随温度升高，$\ce{BaTiO3}$ 依次经历**立方 → 四方 → 正交 → 六方**的晶型变化（后面变体有时需要扩倍晶胞以满足对称性）。这是钙钛矿"怕冷"的典型故事：低温下 $\ce{Ti^{4+}}$ 偏离八面体中心，对称性一降再降。

<img src="lecture6.assets/PLACEHOLDER_batio3_phases.png" alt="占位符：BaTiO3 的立方/四方/正交/六方相变（原图：temp/images/image167.png）" style="zoom:50%;" />

**2）铜基超导体。** 高温超导体可以看作钙钛矿层的"叠加"：四方变体（严格说是正交）中，$\ce{YBa2Cu3O7}$ 的氧存在**无序填充**；六方变体则把钙钛矿层旋转/堆叠成六方周期。理解超导材料从钙钛矿出发，是结构化学给材料科学的见面礼。

<img src="lecture6.assets/PLACEHOLDER_ybco.png" alt="占位符：YBa2Cu3O7 与铜基超导体结构（原图：temp/images/image168.png、image169.png）" style="zoom:50%;" />

**3）$\ce{ReO3}$ / $\ce{WO3}$：$3 \cdot 2P_{3/4}O_{1/4}$。** 把钙钛矿的 A 位阳离子全部拿走，只剩下 $\ce{BO6}$ 八面体共顶点网络，就是 $\ce{ReO3}$ 型。它的空隙很大，**可以再填入原子**——填入钠就生成"钨青铜"（$\ce{Na_xWO3}$），颜色从金黄到深蓝随 $x$ 变化。

<img src="lecture6.assets/PLACEHOLDER_reo3.png" alt="占位符：ReO3/WO3 结构与钨青铜（原图：temp/images/image170.png、image171.png）" style="zoom:50%;" />

**4）Ruddlesden–Popper 相（R-P 相）。** 多层钙钛矿的叠加可以写成统一公式：

$$
A_{n+1}B_nX_{3n+1}
$$

$n = 1$ 时就是单层钙钛矿，$n$ 增大时相当于在每两层钙钛矿之间插入一层岩盐型 $\ce{AX}$ 层。

<img src="lecture6.assets/PLACEHOLDER_rp_phase.png" alt="占位符：R-P 相 An+1BnX3n+1 结构（原图：temp/images/image172.png）" style="zoom:50%;" />

**5）$\ce{CsAuCl3}$ 及各种畸变。** 金、卤素等替换后仍保持钙钛矿框架，但通常伴随四方/正交畸变——钙钛矿家族的"变装"数不胜数。

## 6.4 部分填充的 hcp

### 6.4.1 填充 1/2：金红石 TiO$_2$

金红石是"部分填充 hcp"最著名的代表：氧做 hcp，钛填**一半**八面体空隙：

$$
\ce{TiO2}: \quad 2 \cdot 2PO_{1/2}
$$

结构信息：

- 晶系/点群：四方晶系，$D_{4h}$；
- 点阵形式：$tP$；
- 空间群：$P4_2/mnm$（特征对称元素是 $4_2$ 螺旋轴）；
- 堆积记号：近似的 $2 \cdot 2PO_{1/2}$。

一个很好记的视角：**金红石可以看作"去除一半填隙原子"的 $\ce{NiAs}$**——把 $\ce{NiAs}$ 里一半的八面体空隙留空，剩下的一半按规则排列，就是金红石。

!!! Tip "示例：  [**金红石 TiO2**](https://next-gen.materialsproject.org/materials/mp-XXXXXX)"
    | 球棍模型 | 多面体模型 |
    | :---: | :---: |
    | <img src="lecture6.assets/PLACEHOLDER_tio2_ball_stick.png" alt="占位符：金红石 TiO2 球棍模型（原图：temp/images/image173.png）" style="zoom:50%;" /> | <img src="lecture6.assets/PLACEHOLDER_tio2_polyhedra.png" alt="占位符：金红石 TiO2 多面体模型（原图：temp/images/image173.png）" style="zoom:50%;" /> |

     <center> [mp-XXXXXX](https://next-gen.materialsproject.org/materials/mp-XXXXXX) · [CIF 下载](cifs/PLACEHOLDER_TiO2_rutile.cif) </center>

金红石的变式：

- **白铁矿 $\ce{FeS2}$**：金红石的"硫版"——$\ce{S}$ 相互连接成 $\ce{S2^{2-}}$ 哑铃，畸变为**正交**晶系；
- **双金红石链**：多条金红石链并排连接，形成更宽的链状骨架；
- **$\ce{ZnSb2O6}$**：多个金红石单元叠加在一起。

<img src="lecture6.assets/PLACEHOLDER_rutile_variants.png" alt="占位符：白铁矿、双金红石链与 ZnSb2O6（原图：temp/images/image175.png–image180.png）" style="zoom:50%;" />

### 6.4.2 填充 2/3：刚玉 Al$_2$O$_3$

氧做 hcp，铝填**三分之二**的八面体空隙，就是刚玉：

$$
\ce{Al2O3}: \quad 2 \cdot 6PO_{2/3}
$$

其中 $2/3$ 填充层由三种不同排布的 $2/3$ 层交替形成。刚玉家族也有一串变式：

- **$\alpha$-$\ce{Fe2O3}$**（赤铁矿）：$2 \cdot 2PO_{2/3}$，此时 $2/3$ 层**分裂为两层**；
- **$\ce{VF3}$**：$2 \cdot 2PO_{1/3}$，把 $2/3$ 换成 $1/3$；
- **$\beta$-$\ce{TiCl3}$**：另一种 $2 \cdot 2PO_{1/3}$，但由于 $\ce{Ti^{3+}}$ 的单电子有强烈的成键倾向，钛都填充在一侧，形成**链状结构**；这种效应在更高周期的 $\ce{ZrCl3}$ 中更加明显。

!!! Tip "示例：  [**刚玉 Al2O3**](https://next-gen.materialsproject.org/materials/mp-XXXXXX)"
    | 球棍模型 | 多面体模型 |
    | :---: | :---: |
    | <img src="lecture6.assets/PLACEHOLDER_al2o3_ball_stick.png" alt="占位符：刚玉 Al2O3 球棍模型（原图：temp/images/image181.png）" style="zoom:50%;" /> | <img src="lecture6.assets/PLACEHOLDER_al2o3_polyhedra.png" alt="占位符：刚玉 Al2O3 多面体模型（原图：temp/images/image181.png）" style="zoom:50%;" /> |

     <center> [mp-XXXXXX](https://next-gen.materialsproject.org/materials/mp-XXXXXX) · [CIF 下载](cifs/PLACEHOLDER_Al2O3.cif) </center>

<img src="lecture6.assets/PLACEHOLDER_corundum_variants.png" alt="占位符：α-Fe2O3、VF3 与 β-TiCl3（原图：temp/images/image182.png–image186.png）" style="zoom:50%;" />

### 6.4.3 填充 1/4：六方 BaTiO$_3$

把 hcp 的密置层替换为**混合密置层**，八面体空隙只填 $1/4$，就得到六方相的 $\ce{BaTiO3}$——它是 6.3.2 里 $\ce{BaTiO3}$ 温度相变的终点（高温六方相）。

<img src="lecture6.assets/PLACEHOLDER_hex_batio3.png" alt="占位符：六方 BaTiO3 的 1/4 填充（原图：temp/images/image187.png）" style="zoom:50%;" />

## 6.5 层状结构：CdCl$_2$ 型

### 6.5.1 基本结构

如果八面体空隙按**层**填充，且填充层之间隔着空的密置层，结构就"摊开"成二维的层状：

$$
\ce{CdCl2}: \quad 3 \cdot 3POP
$$

即 $P$（密置层）— $O$（八面体填充层）— $P$（密置层）的夹心结构。$\ce{CdCl2}$ 中氯做 ccp，镉填在交替的八面体空隙层里，层与层之间只有范德华力，所以它像石墨一样容易解理。

!!! Tip "示例：  [**氯化镉 CdCl2**](https://next-gen.materialsproject.org/materials/mp-XXXXXX)"
    | 球棍模型 | 多面体模型 |
    | :---: | :---: |
    | <img src="lecture6.assets/PLACEHOLDER_cdcl2_ball_stick.png" alt="占位符：CdCl2 球棍模型（原图：temp/images/image188.png）" style="zoom:50%;" /> | <img src="lecture6.assets/PLACEHOLDER_cdcl2_polyhedra.png" alt="占位符：CdCl2 多面体模型（原图：temp/images/image188.png）" style="zoom:50%;" /> |

     <center> [mp-XXXXXX](https://next-gen.materialsproject.org/materials/mp-XXXXXX) · [CIF 下载](cifs/PLACEHOLDER_CdCl2.cif) </center>

### 6.5.2 CdCl$_2$ 的变式

**1）改变 $O$ 的填充：**

- $\ce{CrCl3}$：$3 \cdot 3PO_{2/3}P$，八面体空隙只填 $2/3$；
- $\ce{Fe4N}$：$3 \cdot 3PO_{1/2}P$，只填一半。

**2）改变堆积方式：**

- $\ce{CdI2}$ / $\ce{Mg(OH)2}$：$2 \cdot 3/2\,POP$，从 ccp 换成 hcp 的夹心结构；
- $\ce{CuCl2}$：在 $\ce{CdI2}$ 型基础上发生**姜-泰勒畸变**（Jahn–Teller effect），八面体被拉长，层内结构进一步变形。

**3）改变密置层数：**

- $\ce{La2O3}$：$3 \cdot 5/3\,POPOP$，密置层数增加的同时也增强了层间相互作用；
- $\ce{Ba5Ta4O15}$：$5 \cdot 9/5\,PO_{1/4}PO_{1/4}P$，更复杂的多层夹心。

<img src="lecture6.assets/PLACEHOLDER_cdcl2_variants.png" alt="占位符：CrCl3、CdI2、La2O3 等层状变式（原图：temp/images/image189.png–image194.png）" style="zoom:50%;" />

!!! abstract "本讲总结"
    八面体配位的全部套路都可以用一句话概括：**先选密堆积（ccp/hcp），再决定八面体空隙填多少、怎么填**。

    | 结构 | 堆积记号 | 空隙填充 |
    | :--: | :--: | :--: |
    | $\ce{NaCl}$（ccp） | $3 \cdot 2PO$ | 全部 |
    | $\ce{NiAs}$（hcp） | $2 \cdot 2PO$ | 全部 |
    | $\ce{CaTiO3}$（钙钛矿） | $3 \cdot 2P_{1/4\,3/4}O_{1/4}$ | 部分 |
    | $\ce{TiO2}$（金红石） | $2 \cdot 2PO_{1/2}$ | 一半 |
    | $\ce{Al2O3}$（刚玉） | $2 \cdot 6PO_{2/3}$ | $2/3$ |
    | $\ce{CdCl2}$（层状） | $3 \cdot 3POP$ | 层状填充 |

---

<center>第六章 结束</center>

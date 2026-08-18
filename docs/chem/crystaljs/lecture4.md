# Lecture 4: 晶体与光电磁

前面的章节都在回答"晶体里原子怎么排"，这一讲回答另一个问题：**排布方式决定了晶体的哪些性质？** 对称性在这里再次成为主角——有没有对称中心、有没有手性、磁矩怎么排、能带怎么填，直接决定了晶体是压电的、铁磁的、导电的，还是彩色的。这一讲我们不堆新的堆积记号，而是把 Lecture 1 的对称性知识和 Lecture 5–8 的结构知识"通电"。

## 4.1 晶体的电属性

### 4.1.1 压电效应

**压电效应**（piezoelectric effect）：对没有对称中心的晶体施加机械压力，原子发生位移、偶极矩改变，某些表面就会产生电荷。

反过来，对这样的晶体施加电场，会产生机械形变——这叫**反压电效应**。打火机的压电点火器、石英手表里的振荡器，靠的都是这个效应。

!!! abstract "判据"
    产生压电效应的前提是**没有对称中心**。不过有一个例外：点群 $O$（$432$）没有对称中心，但它的高对称性使压电效应为零。所以准确的判据是：**无对称中心的点群几乎都有压电效应，除了 $O$-$432$**。

### 4.1.2 热电效应

在压电晶体的基础上，如果晶体**本身具有偶极矩**（自发极化），但平时被表面电荷"屏蔽"了，只有**加热**时才显示出来——这就是**热电效应**（pyroelectric effect）。

热电晶体和普通压电晶体的区别在于：热电晶体两端**没有对称元素联系**（否则偶极矩会被对称操作抵消）。也就是说，热电晶体一定是极性晶体。

### 4.1.3 铁电效应

如果热电晶体的**极化方向能在强电场下反向**，就升级为**铁电体**（ferroelectric）：

- 名字里的"铁"不是因为含铁，而是类比**铁磁体**：铁电体有**电滞回线**（极化 $P$ 不随电场 $E$ 线性变化，而是"绕圈"）；
- 铁电体存在**居里温度** $T_C$：超过 $T_C$，自发极化消失，变成普通顺电体。

三种电性的"极化-电场"关系对比：

| 类型 | $P$ 与 $E$ 的关系 | 特征 |
| :--: | :--: | :-- |
| 一般晶体 | $P \propto E$（线性） | 无记忆 |
| 准电性（非线性介电） | $P = f(E)$（函数） | 非线性但可逆 |
| 铁电体 | 电滞回线 | 有记忆、可翻转 |

<img src="lecture4.assets/PLACEHOLDER_pe_loops.png" alt="占位符：线性、非线性与铁电的 P-E 关系（原图：temp/images/image101.png、image102.png、image103.png）" style="zoom:50%;" />

!!! Tip "示例：  [**钛酸钡 BaTiO3**](https://next-gen.materialsproject.org/materials/mp-XXXXXX)"
    | 球棍模型 | 多面体模型 |
    | :---: | :---: |
    | <img src="lecture4.assets/PLACEHOLDER_batio3_ball_stick.png" alt="占位符：BaTiO3 球棍模型（原图：temp/images/image105.png）" style="zoom:50%;" /> | <img src="lecture4.assets/PLACEHOLDER_batio3_polyhedra.png" alt="占位符：BaTiO3 多面体模型（原图：temp/images/image105.png）" style="zoom:50%;" /> |

     <center> [mp-XXXXXX](https://next-gen.materialsproject.org/materials/mp-XXXXXX) · [CIF 下载](cifs/PLACEHOLDER_BaTiO3.cif) </center>

!!! example "铁电体是怎么产生极化的？"
    以 $\ce{BaTiO3}$ 为例：施加电场后，$\ce{Ti^{4+}}$ 和 $\ce{O^{2-}}$ 相对移动，正负电荷中心分离，产生偶极矩；撤去电场后位移保持（电滞回线的"记忆"）。$\ce{PbTiO3}$ 的情况类似，只是位移更大。

<img src="lecture4.assets/PLACEHOLDER_tio_displacement.png" alt="占位符：BaTiO3/PbTiO3 中 Ti 与 O 的位移（原图：temp/images/image105.png）" style="zoom:50%;" />

!!! note "氢键铁电体：H3PO4"
    磷酸氢键晶体（$\ce{H3PO4}$）是另一类铁电体：**低温**时氢键取向按电场排布（铁电），**高温**时氢键取向趋于无序（顺电）。这说明"铁电"不一定是离子位移，氢键的取向有序同样可以贡献极化。

## 4.2 晶体的磁属性

### 4.2.1 五种磁性

按磁矩的排列方式，晶体磁性分为以下几种：

- **抗磁性**（diamagnetic）：在磁场中产生相反的感应磁场，磁化率为负（所有物质都有，只是常被掩盖）；
- **顺磁性**（paramagnetic）：产生与磁场同方向的磁化，但不会保留磁化（撤场即失）；
- **铁磁性**（ferromagnetic）：铁磁耦合使磁矩指向同一方向，产生**磁滞回线**——磁矩排布取决于过去的物理状态，有记忆；
- **反铁磁性**（antiferromagnetic）：反铁磁耦合使相邻磁矩**相反**，净磁矩为零；
- **亚铁磁性**（ferrimagnetic）：磁矩翻转后，由于原子性质不同，仍有**净磁矩**（铁氧体磁铁就是这类）；
- **自旋玻璃**（spin glass）：相邻耦合混乱，导致无序的自旋结构。

<img src="lecture4.assets/PLACEHOLDER_magnetism_types.png" alt="占位符：抗/顺/铁/反铁/亚铁/自旋玻璃的磁矩排列（原图：temp/images/image106.png、image107.png、image108.png、image109.png、image111.png）" style="zoom:50%;" />

!!! note "磁补偿点"
    亚铁磁体中，当两套磁矩的大小在某温度恰好相等时，净磁矩为零，这个温度叫**磁补偿点**（magnetic compensation point）——注意它和居里温度不是一回事。

<img src="lecture4.assets/PLACEHOLDER_compensation_point.png" alt="占位符：磁补偿点处磁矩为零（原图：temp/images/image110.png）" style="zoom:50%;" />

!!! abstract "居里温度的统一"
    铁磁、反铁磁、亚铁磁、自旋玻璃这四种有序磁性，都会在各自的特征温度（居里温度 $T_C$ 或奈尔温度 $T_N$）以上变成**顺磁性**——热运动把有序排列"搅乱"了。

!!! Tip "示例：  [**铁 Fe**](https://next-gen.materialsproject.org/materials/mp-XXXXXX)"
    | 球棍模型 | 多面体模型 |
    | :---: | :---: |
    | <img src="lecture4.assets/PLACEHOLDER_fe_ball_stick.png" alt="占位符：α-Fe 球棍模型（原图：temp/images/image106.png）" style="zoom:50%;" /> | <img src="lecture4.assets/PLACEHOLDER_fe_magnetic.png" alt="占位符：铁磁有序示意图（原图：temp/images/image106.png）" style="zoom:50%;" /> |

     <center> [mp-XXXXXX](https://next-gen.materialsproject.org/materials/mp-XXXXXX) · [CIF 下载](cifs/PLACEHOLDER_Fe.cif) </center>

## 4.3 晶体的导电性

导电的本质是**载流子**，晶体里的载流子可以有好几种，讲义总结了六种"导电方式"：

| 导电方式 | 载流子 | 实例 |
| :--: | :--: | :-- |
| 电子迁移（能带） | 电子/空穴 | 绝大部分金属、本征半导体 |
| 离子迁移 | 离子 | $\ce{AgI}$、$\ce{Li3N}$、$\ce{ZrO2 \cdot CaO}$（快离子导体） |
| $d$-$d$ 重叠（超交换作用） | 电子 | $\ce{TiO}$、$\ce{MnO}$ |
| $d$-$p$ $\pi$ | 电子 | $\ce{ReO3}$ |
| 缺陷导电 | 电子/空穴 | $\ce{FeO_{1+x}}$ |
| 电子盐 | 电子 | $\ce{Cu2N}$（电子占阴离子位） |

<img src="lecture4.assets/PLACEHOLDER_conductivity.png" alt="占位符：六种导电方式示意（原图：temp/images/image112.png）" style="zoom:50%;" />

!!! note "温度对导电性的影响"
    升温对不同载流子的效果完全不同：

    - **电子载流子**：晶格振动增强，电子迁移受阻，导电性**下降**（金属）；
    - **离子载流子**：原子迁移加快，导电性**上升**（快离子导体）；
    - **电子盐/缺陷**：升温造成"猝灭"（结构坍塌/缺陷复合），导电性**下降**。

!!! note "超交换作用"
    超交换作用（superexchange）是以**氧原子为介导**的阳离子-阳离子磁性耦合，常见于 $d$-$d$ 重叠体系（$\ce{TiO}$、$\ce{MnO}$）：

    - 阳离子夹角为 **$180^\circ$** 时，$\sigma$ 键重叠，电子趋向**反平行**（反铁磁）；
    - 夹角为 **$90^\circ$** 时，$\pi$ 键重叠，电子趋向**平行**（铁磁）。

    <img src="lecture4.assets/PLACEHOLDER_superexchange.png" alt="占位符：180° 与 90° 的超交换作用（原图：temp/images/image113.png）" style="zoom:50%;" />

!!! Tip "示例：  [**氧化钛 TiO**](https://next-gen.materialsproject.org/materials/mp-XXXXXX)"
    | 球棍模型 | 多面体模型 |
    | :---: | :---: |
    | <img src="lecture4.assets/PLACEHOLDER_tio_ball_stick.png" alt="占位符：TiO 球棍模型（原图：temp/images/image112.png）" style="zoom:50%;" /> | <img src="lecture4.assets/PLACEHOLDER_tio_polyhedra.png" alt="占位符：TiO 多面体模型（原图：temp/images/image112.png）" style="zoom:50%;" /> |

     <center> [mp-XXXXXX](https://next-gen.materialsproject.org/materials/mp-XXXXXX) · [CIF 下载](cifs/PLACEHOLDER_TiO.cif) </center>

## 4.4 晶体的显色

晶体为什么有颜色？本质是它**吸收了可见光中某些波长的光**。吸收机制主要有四种：

### 4.4.1 d-d 跃迁

过渡金属离子在配位场中，$d$ 轨道分裂，电子在分裂能级间跃迁吸收光。**分裂能越大，吸收波长越短**，颜色红移。经典例子是刚玉 $\ce{Al2O3}$ 中逐渐掺入 $\ce{Cr2O3}$：

| 掺入量 | 颜色 | 名称 |
| :--: | :--: | :--: |
| 少量 $\ce{Cr^{3+}}$ | 红 | 红宝石 |
| 中等 $\ce{Cr^{3+}}$ | 变色 | 变石 |
| 较多 $\ce{Cr^{3+}}$ | 绿 | 祖母绿 |

### 4.4.2 荷移跃迁

电子在不同离子/轨道之间"搬家"时吸收光，分两种：

- **$\ce{MMCT}$**（金属→金属荷移）：$\ce{Al2O3}$ 掺 $\ce{Fe(II)+Ti(IV)}$ → **蓝宝石**；$\ce{Be3Al2Si6O18}$（绿柱石）掺 $\ce{Fe(II)+Fe(III)}$ → **海蓝宝石**；
- **$\ce{LMCT}$**（配体→金属荷移）：$\ce{SiO2}$ 掺 $\ce{Fe(IV)}$ → **紫水晶**。

!!! Tip "示例：  [**刚玉 Al2O3（蓝宝石）**](https://next-gen.materialsproject.org/materials/mp-XXXXXX)"
    | 球棍模型 | 多面体模型 |
    | :---: | :---: |
    | <img src="lecture4.assets/PLACEHOLDER_sapphire_ball_stick.png" alt="占位符：蓝宝石 Al2O3 球棍模型（原图：temp/images/image181.png）" style="zoom:50%;" /> | <img src="lecture4.assets/PLACEHOLDER_sapphire_polyhedra.png" alt="占位符：蓝宝石 Al2O3 多面体模型（原图：temp/images/image181.png）" style="zoom:50%;" /> |

     <center> [mp-XXXXXX](https://next-gen.materialsproject.org/materials/mp-XXXXXX) · [CIF 下载](cifs/PLACEHOLDER_sapphire.cif) </center>

### 4.4.3 能带

半导体的带隙决定吸收边。金刚石掺入不同杂质改变能带结构：

- 掺 **$\ce{B}$**（受主）→ **蓝钻**；
- 掺 **$\ce{N}$**（施主）→ **黄钻**。

### 4.4.4 色心

晶格缺陷（如阴离子空位捕获电子）也会吸收光——Lecture 6 里 $\ce{NaCl}$ 在钠蒸气中加热变黄，就是色心的功劳。

!!! abstract "本讲总结"
    | 性质 | 结构根源 |
    | :--: | :-- |
    | 压电/热电/铁电 | 无对称中心、极性、极化可翻转 |
    | 铁磁/反铁磁/亚铁磁 | 磁矩排列方式与超交换 |
    | 导电 | 载流子类型（电子/离子/缺陷） |
    | 显色 | d-d 跃迁、荷移、能带、色心 |

---

<center>第四章 结束</center>

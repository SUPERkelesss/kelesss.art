# Lecture 9: 分子晶体及其他

这一讲是"大杂烩"，但杂得有逻辑：先回答**分子晶体是怎么来的**（成键与晶体构造），再看具体的分子晶体（氢键、配位、包合物、夹层），然后补上讲义里的拾遗（五/八/九配位）、多层合并结构，最后是两大矿物/金属家族——**合金与复杂堆积**、**硅酸盐与沸石**。读完后，你的"堆积语言"就毕业了。

## 9.1 成键与晶体构造：分子晶体的成因

### 9.1.1 离子的屏蔽效应

先看一个经典的问题。同样是 $\ce{SnX4}$ 的组成，锡和卤素的比例都是 1 : 4，晶体结构却截然不同：

- $\ce{SnCl4}$ 是**分子晶体**，形成孤立的 $\ce{SnCl4}$ 四面体分子，熔点很低（约 $-33\ ^\circ\text{C}$），常温下是液体；
- $\ce{SnF4}$ 却是**非分子晶体**，每个 $\ce{F}$ 桥联两个 $\ce{Sn}$，形成无限的层状/链状骨架，熔点高达约 $700\ ^\circ\text{C}$。

<img src="lecture9.assets/PLACEHOLDER_snx4_structures.png" alt="占位符：SnCl4 分子与 SnF4 桥联结构对比（原图：temp/images/image096.png）" style="zoom:50%;" />

同样都是四卤化锡，为什么结构差别这么大？讲座笔记给出的解释是**离子的屏蔽效应**（screening effect）：

!!! abstract "屏蔽效应"
    阳离子周围的一层阴离子，会"挡住"外围的其他阴离子，使它们无法再靠近阳离子配位。**阴离子越大、越容易被极化，屏蔽能力就越强**，阳离子就越容易被"包死"成一个孤立的分子单元。

对于 $\ce{SnCl4}$，$\ce{Cl^-}$ 体积大、电子云松软（极化率高），四个氯离子足以把 $\ce{Sn^{4+}}$ 严严实实地包裹起来，外围的氯离子再也凑不进来，于是晶体只能以孤立的 $\ce{SnCl4}$ 分子形式存在——典型的分子晶体。而对于 $\ce{SnF4}$，$\ce{F^-}$ 太小、太"硬"（极化率低），四个氟离子盖不住 $\ce{Sn^{4+}}$ 的"吸引力"，于是外围的氟离子继续与锡成键，形成 $\ce{F}$ 桥联的无限骨架。

从堆积的角度看，非分子晶体（如 $\ce{SnF4}$）的卤原子往往采取**密堆积**，阳离子坐在空隙里，靠静电作用把整个骨架"焊"在一起；而分子晶体的阴离子只包围在单个阳离子周围，分子与分子之间只剩下微弱的范德华力。讲座笔记用下面这张图说明这一点：左侧是非分子晶体的无限骨架，右侧表示卤原子密堆积后形成的电性相互作用网络。

<img src="lecture9.assets/PLACEHOLDER_molecular_vs_extended.png" alt="占位符：分子晶体与非分子晶体的卤原子堆积对比（原图：temp/images/image097.png）" style="zoom:50%;" />

!!! warning "注意"
    这里说的"屏蔽"和原子物理里的电子屏蔽不是一回事。我们讨论的是**晶体中阴离子对阳离子配位环境的屏蔽**：它决定的是一个阳离子能"独占"几个阴离子，还是必须把阴离子让出来给周围的阳离子共用。屏蔽效应也可以看作"空间位阻"的电性版本：屏蔽能力越强，阳离子的**有效配位数越低**。

### 9.1.2 离子键与共价键的过渡

屏蔽效应背后更深层的原因，是**阴离子的极化**。当阳离子电荷高、体积小时（极化力强），它会把阴离子的电子云"拽"向自己，使键从纯静电的离子键逐渐过渡到有方向性的共价键。决定这一过渡程度的物理量是阴离子的**极化率**（polarizability）：

- **极化率大**（如 $\ce{S^{2-}}$、$\ce{I^-}$、$\ce{Cl^-}$）：电子云松软，容易变形，共价成分增大；
- **极化率小**（如 $\ce{F^-}$、$\ce{O^{2-}}$）：电子云紧致，变形困难，保持离子性。

<img src="lecture9.assets/PLACEHOLDER_bond_continuum.png" alt="占位符：离子键到共价键的过渡与极化率（原图：temp/images/image098.png）" style="zoom:50%;" />

键型的不同直接反映在晶体结构上：

| 主导因素 | 键的特点 | 结构倾向 | 实例 |
| :--: | :--: | :--: | :-- |
| 离子键成分大 | 静电作用、无方向性 | **高配位数**、多面体共棱共面 | $\ce{NaCl}$（6 配位，Lecture 6）、$\ce{CsCl}$（8 配位，Lecture 8） |
| 共价（极化）成分大 | 有方向性、饱和性 | **低配位数**、多面体孤立或共顶点 | $\ce{SiS2}$（4 配位链）、$\ce{ZnS}$（4 配位，Lecture 7） |

讲座给出的实例是 $\ce{GeO2}$ 与 $\ce{SiS2}$：$\ce{GeO2}$ 中 $\ce{O^{2-}}$ 极化率低，键以离子性为主，采取**金红石型**（$\ce{Ge}$ 6 配位，见 Lecture 6）；$\ce{SiS2}$ 中 $\ce{S^{2-}}$ 极化率很高，共价成分占主导，采取**四面体链**（$\ce{Si}$ 4 配位，四面体共顶点连成一维链）。

!!! Tip "示例：  [**二硫化硅 SiS2**](https://next-gen.materialsproject.org/materials/mp-XXXXXX)"
    | 球棍模型 | 多面体模型 |
    | :---: | :---: |
    | <img src="lecture9.assets/PLACEHOLDER_sis2_ball_stick.png" alt="占位符：SiS2 球棍模型（原图：temp/images/image100.jpg）" style="zoom:50%;" /> | <img src="lecture9.assets/PLACEHOLDER_sis2_polyhedra.png" alt="占位符：SiS2 四面体链模型（原图：temp/images/image100.jpg）" style="zoom:50%;" /> |

     <center> [mp-XXXXXX](https://next-gen.materialsproject.org/materials/mp-XXXXXX) · [CIF 下载](cifs/PLACEHOLDER_SiS2.cif) </center>

!!! question "为什么是 GeO$_2$ 和 SiS$_2$ 而不是反过来？"
    尝试回答：$\ce{GeS2}$ 和 $\ce{SiO2}$ 各更偏向哪种结构？

    ??? success "答案"
        $\ce{GeS2}$ 中 $\ce{S^{2-}}$ 极化率大，偏向共价、低配位（实际结构与 $\ce{SiS2}$ 类似，由四面体链构成）；$\ce{SiO2}$ 中 $\ce{O^{2-}}$ 极化率低，虽然硅的极化力很强，但氧的"硬"使结构仍以四面体骨架为主（石英家族，见 9.6）。判断键型时，**阴离子极化率往往比阳离子极化力更关键**。

## 9.2 部分分子晶体

### 9.2.1 氢键结构

- **尿素**：分子间 $\ce{N-H \cdots O}$ 氢键连成锯齿链/平面层；
- **乌洛托品**（六亚甲基四胺）：靠 $\ce{C-H \cdots N}$ 氢键连接。

<img src="lecture9.assets/PLACEHOLDER_h_bond_molecules.png" alt="占位符：尿素与乌洛托品的氢键结构（原图：temp/images/image302.png、image303.png）" style="zoom:50%;" />

### 9.2.2 配位结构

- **四聚甲基锂 $\ce{[LiCH3]4}$**：四个锂和四个甲基交替围成**立方体**（四面体配位），是有机锂试剂的经典结构。

<img src="lecture9.assets/PLACEHOLDER_methyllithium.png" alt="占位符：四聚甲基锂结构（原图：temp/images/image304.png）" style="zoom:50%;" />

### 9.2.3 包合物

- **可燃冰（甲烷水合物）**：水分子组成笼状结构，把甲烷装进去，化学式 $8\ce{CH4} \cdot 46\ce{H2O}$；
- **Hoffmann 包合物 $\ce{Ni(CN)2 \cdot NH3 \cdot C6H6}$**：$\ce{Ni(CN)4}$ 平面网格层叠，层间用 $\ce{NH3}$ 撑开，苯分子"夹"在层间。

!!! Tip "示例：  [**甲烷水合物（可燃冰）**](https://next-gen.materialsproject.org/materials/mp-XXXXXX)"
    | 球棍模型 | 多面体模型 |
    | :---: | :---: |
    | <img src="lecture9.assets/PLACEHOLDER_clathrate_ball_stick.png" alt="占位符：可燃冰球棍模型（原图：temp/images/image305.png）" style="zoom:50%;" /> | <img src="lecture9.assets/PLACEHOLDER_clathrate_cages.png" alt="占位符：水笼与甲烷（原图：temp/images/image305.png）" style="zoom:50%;" /> |

     <center> [mp-XXXXXX](https://next-gen.materialsproject.org/materials/mp-XXXXXX) · [CIF 下载](cifs/PLACEHOLDER_methane_hydrate.cif) </center>

### 9.2.4 夹心化合物：石墨夹层

把金属"塞"进石墨层间就是**石墨夹层化合物 $\ce{KC_x}$**。插入钾后：

- 石墨层**没有发生明显滑移**；
- 经典的 $\ce{KC8}$ 中，石墨的六方堆积**变成正交**（层间原子有序排列）。

<img src="lecture9.assets/PLACEHOLDER_graphite_intercalation.png" alt="占位符：KCx 石墨夹层结构（原图：temp/images/image307.png、image308.png）" style="zoom:50%;" />

## 9.3 多层合并结构

把密置层和填充层"合并"成双层/三层单元，就得到一系列与石墨层类似的结构：

### 9.3.1 双层（石墨层）结构

- **$\ce{MgB2}$：$2PIP$**。$\ce{Mg}$ 层与 $\ce{B}$ 蜂窝层交替，是著名的 39 K 超导体——这里 $I$ 代表**层间**（interlayer）记号；
- **硼酸盐 $\ce{Y(BO3)}$**：类 $\ce{CaCO3}$ 的平面基团层（Lecture 6 方解石）；
- **$\ce{Na3As}$：$2 \cdot 3IPTT$**；
- **$\ce{Y(OH)3}$：$2IP_{1/4\,1/4}$**（$(\ce{OH})_3$ 作为一个整体单元）；
- **$\ce{N2O5}$**：$\ce{NO2^+}$ 与 $\ce{NO3^-}$ 组成的层状结构；
- **$\ce{CuS}$：$8P_{1/4}T_{1/4}IP_{1/4\,1/4}T_{1/4}$**，化学式拆开看是 $(\ce{Cu^+})_3(\ce{S^{2-}})(\ce{S2^-})$。

!!! Tip "示例：  [**二硼化镁 MgB2**](https://next-gen.materialsproject.org/materials/mp-XXXXXX)"
    | 球棍模型 | 多面体模型 |
    | :---: | :---: |
    | <img src="lecture9.assets/PLACEHOLDER_mgb2_ball_stick.png" alt="占位符：MgB2 球棍模型（原图：temp/images/image247.png）" style="zoom:50%;" /> | <img src="lecture9.assets/PLACEHOLDER_mgb2_polyhedra.png" alt="占位符：MgB2 层状模型（原图：temp/images/image247.png）" style="zoom:50%;" /> |

     <center> [mp-XXXXXX](https://next-gen.materialsproject.org/materials/mp-XXXXXX) · [CIF 下载](cifs/PLACEHOLDER_MgB2.cif) </center>

<img src="lecture9.assets/PLACEHOLDER_double_layer.png" alt="占位符：Y(BO3)、Na3As、Y(OH)3、N2O5 与 CuS 双层结构（原图：temp/images/image248.png–image254.png）" style="zoom:50%;" />

### 9.3.2 三层结构：BiI$_3$

三层合并结构的代表是 $\ce{BiI3}$：$\ce{Bi}$ 层夹在两层碘之间，形成"三明治"，层间靠范德华力结合。它也是 Lecture 6 层状结构（$\ce{CdCl2}$ 家族）向"更厚夹心"方向的发展。

<img src="lecture9.assets/PLACEHOLDER_bii3.png" alt="占位符：BiI3 三层结构（原图：temp/images/image255.png、image256.png）" style="zoom:50%;" />

## 9.4 拾遗：五、八、九配位结构

讲义最后补充了几类"非主流"配位：

### 9.4.1 五配位

- **四方锥**：$\ce{V2O5}$、$\ce{K2Ti2O5}$——锥顶不共用，锥底一个锥共用 $2$ 个、三个锥共用 $3$ 个；
- **三角双锥**：$\ce{LaF3}$。

### 9.4.2 八配位

- **六角双锥**：$\ce{UO2F2}$、$\ce{Li3N}$（Lecture 4 提过 $\ce{Li3N}$ 是快离子导体，这里看它的配位几何）；
- **四方反棱柱**：$\ce{PbClF}$ / $\ce{BiOCl}$ / $\ce{LaOCl}$（氟氯铅矿族）。

### 9.4.3 九配位

- **三帽三棱柱**：$\ce{UCl3}$——三棱柱的三个矩形面上各扣一个原子。

<img src="lecture9.assets/PLACEHOLDER_high_coordination.png" alt="占位符：五/八/九配位结构（原图：temp/images/image309.png–image318.png）" style="zoom:50%;" />

## 9.5 合金与复杂堆积

### 9.5.1 储氢合金：CaCu$_5$ 家族

$\ce{CaCu5}$ 型是储氢合金的祖师爷，代表是 **$\ce{LaNi5}$**（以及永磁材料 $\ce{SmCo5}$）：

- 一个晶胞内有 **6 个四面体空隙**和 **3 个八面体空隙**，理论上都可以填入氢；
- 但实际上**一般只有四面体空隙可以填充**，于是形成 $\ce{LaNi5H6}$——氢原子钻进四面体空隙，就像"海绵吸水"；
- 这种可逆吸放氢的性质，使 $\ce{LaNi5}$ 成为镍氢电池负极的活性材料。

!!! Tip "示例：  [**五镍化镧 LaNi5**](https://next-gen.materialsproject.org/materials/mp-XXXXXX)"
    | 球棍模型 | 多面体模型 |
    | :---: | :---: |
    | <img src="lecture9.assets/PLACEHOLDER_lani5_ball_stick.png" alt="占位符：LaNi5 球棍模型（原图：temp/images/image257.png）" style="zoom:50%;" /> | <img src="lecture9.assets/PLACEHOLDER_lani5_polyhedra.png" alt="占位符：LaNi5 空隙分布（原图：temp/images/image259.png）" style="zoom:50%;" /> |

     <center> [mp-XXXXXX](https://next-gen.materialsproject.org/materials/mp-XXXXXX) · [CIF 下载](cifs/PLACEHOLDER_LaNi5.cif) </center>

$\ce{CaCu5}$ 家族的升级路线：把 $1/3$ 的 $\ce{Co}$ 替换成 $\ce{Sm2}$ 原子团，$\ce{SmCo5}$ → **$\ce{Sm2Co17}$**；再经过**变形 + 填隙**（填入硼），就得到当今最强永磁体 **$\ce{Nd2Fe14B}$**。

<img src="lecture9.assets/PLACEHOLDER_nd2fe14b.png" alt="占位符：SmCo5 → Sm2Co17 → Nd2Fe14B 的演变（原图：temp/images/image260.png、image261.png）" style="zoom:50%;" />

### 9.5.2 Nowotny 相与 Zintl 相

- **Nowotny 相**：$\ce{Cr11Ge19}$ 由**串联的半金刚石骨架**组成；
- **Zintl 相**：原子间有明显的金属键合，一般只发生在主族金属。经典例子 **$\ce{NaTl}$**：钠把电子给铊（离子性），铊之间又形成金属键骨架——具体结构是**两套穿插的金刚石骨架**（回忆 Lecture 7 的 $\ce{Cu2O}$ 双金刚石图像）。

!!! Tip "示例：  [**铊化钠 NaTl**](https://next-gen.materialsproject.org/materials/mp-XXXXXX)"
    | 球棍模型 | 多面体模型 |
    | :---: | :---: |
    | <img src="lecture9.assets/PLACEHOLDER_natl_ball_stick.png" alt="占位符：NaTl 球棍模型（原图：temp/images/image263.png）" style="zoom:50%;" /> | <img src="lecture9.assets/PLACEHOLDER_natl_polyhedra.png" alt="占位符：NaTl 两套金刚石骨架（原图：temp/images/image264.png）" style="zoom:50%;" /> |

     <center> [mp-XXXXXX](https://next-gen.materialsproject.org/materials/mp-XXXXXX) · [CIF 下载](cifs/PLACEHOLDER_NaTl.cif) </center>

### 9.5.3 Frank–Kasper 相：拓扑密堆积

当原子大小悬殊到一定程度，原子会重新排列，让每个原子都尽量被多面体空隙包围——这类结构叫 **Frank–Kasper 相**（拓扑密堆积相），标志是大量**二十面体配位**。

- **A15 相**：$\ce{Nb3Sn}$（超导）和 $\beta$-$\ce{W}$（Lecture 5 见过），可看作**正二十面体密堆积**，稍微移动晶胞就能得到八个立方体的组合；类似结构有 $\ce{CoAs3}$（$\ce{As4}$ 矩形单元）；
- **Laves 相**：切角四面体和四面体密堆积，9.5.5 详讲；
- **others**：各种更复杂的拓扑密堆积变体。

!!! Tip "示例：  [**三锡化铌 Nb3Sn**](https://next-gen.materialsproject.org/materials/mp-XXXXXX)"
    | 球棍模型 | 多面体模型 |
    | :---: | :---: |
    | <img src="lecture9.assets/PLACEHOLDER_nb3sn_ball_stick.png" alt="占位符：Nb3Sn 球棍模型（原图：temp/images/image265.png）" style="zoom:50%;" /> | <img src="lecture9.assets/PLACEHOLDER_nb3sn_polyhedra.png" alt="占位符：Nb3Sn 二十面体配位（原图：temp/images/image265.png）" style="zoom:50%;" /> |

     <center> [mp-XXXXXX](https://next-gen.materialsproject.org/materials/mp-XXXXXX) · [CIF 下载](cifs/PLACEHOLDER_Nb3Sn.cif) </center>

### 9.5.4 复杂合金与固溶体

- **Bergman 簇**：$\ce{Mg32(Al,Zn)49}$ 由一层套一层的多面体壳堆成（像俄罗斯套娃），是复杂金属间化合物和准晶的共同语言；
- **固溶体**：$\ce{WC}$（碳填入钨骨架空隙）与 **$\ce{Fe3C}$**（渗碳体，碳填进**三棱柱空隙**，畸变为正交晶系）——钢的硬度与 $\ce{Fe3C}$ 析出形态直接相关。讲义原话："然而实际上也存在一些起伏……"真实钢中总有晶界、位错和成分涨落。

!!! Tip "示例：  [**渗碳体 Fe3C**](https://next-gen.materialsproject.org/materials/mp-XXXXXX)"
    | 球棍模型 | 多面体模型 |
    | :---: | :---: |
    | <img src="lecture9.assets/PLACEHOLDER_fe3c_ball_stick.png" alt="占位符：Fe3C 球棍模型（原图：temp/images/image270.png）" style="zoom:50%;" /> | <img src="lecture9.assets/PLACEHOLDER_fe3c_polyhedra.png" alt="占位符：Fe3C 三棱柱填隙（原图：temp/images/image270.png）" style="zoom:50%;" /> |

     <center> [mp-XXXXXX](https://next-gen.materialsproject.org/materials/mp-XXXXXX) · [CIF 下载](cifs/PLACEHOLDER_Fe3C.cif) </center>

<img src="lecture9.assets/PLACEHOLDER_solid_solutions.png" alt="占位符：Bergman 簇与 WC/Fe3C（原图：temp/images/image268.png、image269.png、image270.png–image274.png）" style="zoom:50%;" />

### 9.5.5 Laves 相详解

Laves 相是"大原子 + 小原子"按 1 : 2 组成的拓扑密堆积相，口诀：**切角四面体和四面体密堆积**。三种变体：

- **$\ce{MgCu2}$**（立方 $C15$）：$\ce{Mg}$ 形成金刚石状四面体骨架，$\ce{Cu}$ 填在四面体空隙里；填隙（$\ce{Be}$ 填入另外的四面体空隙）得 **$\ce{AuBe5}$**；
- **$\ce{MgZn2}$**（六方 $C14$），填隙后得 **$\ce{LuMn5}$**；
- **$\ce{MgNi2}$**（三方 $C36$）。

!!! Tip "示例：  [**二铜化镁 MgCu2**](https://next-gen.materialsproject.org/materials/mp-XXXXXX)"
    | 球棍模型 | 多面体模型 |
    | :---: | :---: |
    | <img src="lecture9.assets/PLACEHOLDER_mgcu2_ball_stick.png" alt="占位符：MgCu2 球棍模型（原图：temp/images/image276.png）" style="zoom:50%;" /> | <img src="lecture9.assets/PLACEHOLDER_mgcu2_polyhedra.png" alt="占位符：MgCu2 四面体堆积（原图：temp/images/image277.jpg）" style="zoom:50%;" /> |

     <center> [mp-XXXXXX](https://next-gen.materialsproject.org/materials/mp-XXXXXX) · [CIF 下载](cifs/PLACEHOLDER_MgCu2.cif) </center>

<img src="lecture9.assets/PLACEHOLDER_laves_phases.png" alt="占位符：MgCu2、MgZn2、MgNi2 三种 Laves 相（原图：temp/images/image267.png、image275.png、image278.png、image279.png、image280.png）" style="zoom:50%;" />

### 9.5.6 尖晶石 MgAl$_2$O$_4$

尖晶石是结构化学的"毕业考试"：它和 Laves 相、金刚石**属于同一个空间群 $Fd\overline{3}m$**，可以看作 Laves 相的特殊填隙版本。讲义给出的堆积记号是：

$$
\ce{MgAl2O4}: \quad 3 \cdot 6PO_{3/4}PT_{1/4}OT_{1/4}
$$

（讲义原话："怎么看出来的？？？"——结论比过程重要：**氧做 ccp，阳离子按 $3/4$、$1/4$ 的规律填进八面体和四面体空隙**。）

!!! Tip "示例：  [**尖晶石 MgAl2O4**](https://next-gen.materialsproject.org/materials/mp-XXXXXX)"
    | 球棍模型 | 多面体模型 |
    | :---: | :---: |
    | <img src="lecture9.assets/PLACEHOLDER_spinel_ball_stick.png" alt="占位符：MgAl2O4 球棍模型（原图：temp/images/image281.png）" style="zoom:50%;" /> | <img src="lecture9.assets/PLACEHOLDER_spinel_polyhedra.png" alt="占位符：尖晶石四面体+八面体模型（原图：temp/images/image282.png）" style="zoom:50%;" /> |

     <center> [mp-XXXXXX](https://next-gen.materialsproject.org/materials/mp-XXXXXX) · [CIF 下载](cifs/PLACEHOLDER_MgAl2O4.cif) </center>

尖晶石的通式是 $\ce{AB2O4}$，阳离子分布有两种可能：

- **正尖晶石**：$(\ce{II})_t\,(\ce{III})_o$——二价阳离子在四面体位，三价在八面体位（如 $\ce{MgAl2O4}$）；
- **反尖晶石**：$\frac12(\ce{III})_t\,\frac12(\ce{III})_o\,(\ce{II})_o$——一半三价阳离子跑到四面体位。

怎么判断正反？用**晶体场稳定化能（CFSE）**：只有当 $(\ce{II})$ 对八面体位有强烈的偏好（CFSE 高）时，才形成反尖晶石。例如 $\ce{Fe^{2+}}$ 在八面体位有 $t_{2g}^6$ 的强偏好，所以 **$\ce{Fe3O4}$ 是反尖晶石**。讲义原话："当然此规则不准确的一批。"——$d^0$、$d^5$、$d^{10}$ 体系经常失灵。

其他尖晶石：不同价态的 $\ce{Na2MoO4}$；变形例**金绿宝石 $\ce{BeAl2O4}$**（$2 \cdot 4PT_{1/8}O_{1/2}T_{1/8}$，正交晶系，猫眼石的主要成分）。

<img src="lecture9.assets/PLACEHOLDER_spinel_variants.png" alt="占位符：Na2MoO4 与金绿宝石 BeAl2O4（原图：temp/images/image285.png、image286.png）" style="zoom:50%;" />

## 9.6 硅酸盐与沸石

### 9.6.1 SiO$_2$ 的堆积描述

$\ce{SiO2}$ 从堆积角度看非常朴素：氧的密置层只填 $3/4$ 和 $1/4$（把 $1/4$ 的氧挖掉），硅填入**四面体空隙**。不同的挖法/填法就产生不同的变体：

| 变体 | 堆积记号 | 说明 |
| :--: | :--: | :-- |
| $\beta$-鳞石英 | $4 \cdot 2\,P_{3/4}T_{1/4}P_{1/4}T_{1/4}$ | 六方骨架 |
| $\beta$-方石英 | $3 \cdot 4\,P_{3/4}T_{1/4}P_{1/4}T_{1/4}$ | 立方骨架 |
| $\beta$-石英 | $3 \cdot 2\,P_{2/4}T_{1/4}$ | 三方骨架 |
| 超石英（斯石英） | $2 \cdot 2\,PO_{1/2}(t)$ | **占据了整个堆积层**（高压相，硅 6 配位） |

!!! Tip "示例：  [**方石英 SiO2**](https://next-gen.materialsproject.org/materials/mp-XXXXXX)"
    | 球棍模型 | 多面体模型 |
    | :---: | :---: |
    | <img src="lecture9.assets/PLACEHOLDER_cristobalite_ball_stick.png" alt="占位符：β-方石英球棍模型（原图：temp/images/image289.png）" style="zoom:50%;" /> | <img src="lecture9.assets/PLACEHOLDER_cristobalite_polyhedra.png" alt="占位符：β-方石英四面体模型（原图：temp/images/image289.png）" style="zoom:50%;" /> |

     <center> [mp-XXXXXX](https://next-gen.materialsproject.org/materials/mp-XXXXXX) · [CIF 下载](cifs/PLACEHOLDER_SiO2_cristobalite.cif) </center>

<img src="lecture9.assets/PLACEHOLDER_sio2_variants.png" alt="占位符：鳞石英、方石英、石英与斯石英（原图：temp/images/image287.png、image288.png、image289.png、image290.png、image291.png）" style="zoom:50%;" />

### 9.6.2 硅酸盐的四大类

硅酸盐按 $\ce{SiO4}$ 四面体的连接方式分类：

**1）小阴离子：**

- **岛状 $MSiO_4$**：四面体孤立存在（如镁橄榄石 $\ce{Mg2SiO4}$，地幔主要矿物）；
- **双四面体 $MSi_2O_7$**：两个四面体共顶点；
- **环状 $\ce{Si6O18}$**：绿柱石 $\ce{Be3Al2Si6O18}$——$\ce{Be}$ 在四面体配位、$\ce{Al}$ 在八面体配位，环中心的大通道可以容纳水或杂质离子（海蓝宝石的颜色来自 $\ce{Fe(II)/Fe(III)}$ 掺杂，见 Lecture 4）。

!!! Tip "示例：  [**绿柱石 Be3Al2Si6O18**](https://next-gen.materialsproject.org/materials/mp-XXXXXX)"
    | 球棍模型 | 多面体模型 |
    | :---: | :---: |
    | <img src="lecture9.assets/PLACEHOLDER_beryl_ball_stick.png" alt="占位符：绿柱石球棍模型（原图：temp/images/image292.png）" style="zoom:50%;" /> | <img src="lecture9.assets/PLACEHOLDER_beryl_polyhedra.png" alt="占位符：绿柱石 Si6O18 环（原图：temp/images/image293.png）" style="zoom:50%;" /> |

     <center> [mp-XXXXXX](https://next-gen.materialsproject.org/materials/mp-XXXXXX) · [CIF 下载](cifs/PLACEHOLDER_beryl.cif) </center>

**2）链状阴离子：** 四面体沿一个方向延伸成单链（辉石类）或双链（角闪石类），链间由阳离子连接——这类矿物容易裂成纤维状（石棉就是双链硅酸盐）。

**3）层状阴离子：** 四面体铺成二维层，层间夹八面体层。经典例子是利蛇纹石/叶蛇纹石 $\ce{Mg3Si2O5(OH)4}$——利蛇纹石层平整，叶蛇纹石层卷曲/褶皱（"蛇纹"之名由此而来）。黏土、云母、滑石全是层状硅酸盐，层间易滑动是它们"滑腻"手感的来源。

<img src="lecture9.assets/PLACEHOLDER_serpentine.png" alt="占位符：利蛇纹石与叶蛇纹石（原图：temp/images/image294.png、image295.png）" style="zoom:50%;" />

**4）骨架阴离子（沸石/分子筛）：** $\ce{SiO4}$ 向三维延伸，形成带负电的开放骨架，骨架里有规整的**笼**和**孔道**，可以按大小分选分子：

| 代号 | 名称 | 笼的组合 | 组成示例 |
| :--: | :--: | :--: | :--: |
| SOD | 方钠石 | $\beta$ 笼 | $\ce{Na(SiO2)(AlO2)}$（群青：笼里填充 $\ce{S3^-}$） |
| LTA | A 型分子筛 | $\beta$ 笼 + $\alpha$ 笼 + 立方体笼 | $\ce{Na12[(AlO2)12(SiO2)12]}$ |
| FAU | 八面沸石（X/Y 型） | $\beta$ 笼 + 立方体笼 + 八面沸石笼 | X/Y 型分子筛 |
| EMT | — | 六方对称的 FAU 变体 | — |
| PAU | — | $\gamma$ 笼 + $\alpha$ 笼 + 八角柱笼 | — |

!!! Tip "示例：  [**方钠石 Na8Al6Si6O24Cl2**](https://next-gen.materialsproject.org/materials/mp-XXXXXX)"
    | 球棍模型 | 多面体模型 |
    | :---: | :---: |
    | <img src="lecture9.assets/PLACEHOLDER_sodalite_ball_stick.png" alt="占位符：方钠石球棍模型（原图：temp/images/image296.png）" style="zoom:50%;" /> | <img src="lecture9.assets/PLACEHOLDER_sodalite_cages.png" alt="占位符：方钠石 β 笼（原图：temp/images/image297.png）" style="zoom:50%;" /> |

     <center> [mp-XXXXXX](https://next-gen.materialsproject.org/materials/mp-XXXXXX) · [CIF 下载](cifs/PLACEHOLDER_sodalite.cif) </center>

<img src="lecture9.assets/PLACEHOLDER_zeolites.png" alt="占位符：SOD、LTA、FAU、EMT、PAU 的笼结构（原图：temp/images/image296.png–image301.png）" style="zoom:50%;" />

!!! note "为什么沸石这么有用？"
    沸石的孔道尺寸从几埃到十几埃，恰好卡在分子尺度上：能吸水分子的叫干燥剂，能筛碳氢化合物的叫分子筛，能装金属/有机客体的叫主-客体材料。结构化学给工业催化（石油裂化）送上了"纳米容器"。

!!! abstract "本讲总结"
    分子晶体与"其他"结构的共同逻辑：

    - **屏蔽/极化**决定分子晶体 vs 离子骨架（$\ce{SnCl4}$ vs $\ce{SnF4}$）；
    - **分子作单元**时，堆积语言依然管用（氢键、配位、包合、夹层）；
    - **合金/复杂堆积**靠多面体配位（二十面体、切角四面体、尖晶石）各得其所；
    - **硅酸盐/沸石**用"四面体积木"搭出岛、链、层、网与纳米笼。

---

<center>第九章 结束</center>

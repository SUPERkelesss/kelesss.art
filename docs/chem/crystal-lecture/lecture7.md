# Lecture 7: 四面体配位的晶体

上一讲的八面体空隙被填得花样百出，这一讲轮到**四面体空隙**。填一半四面体空隙，得到 1 : 1 的 $\ce{ZnS}$ 型（$PT$）；全填则得到 2 : 1 的 $\ce{CaF2}$ 型（$PTT$）。这两种结构看似复杂，其实都是"密堆积 + 填空隙"这一个套路的不同玩法。体心立方家族的 $\ce{CsCl}$ 型（$PTOT$）我们留到 Lecture 8 单独讲。

## 7.1 ccp：ZnS 闪锌矿

### 7.1.1 基本结构

硫做**立方密堆积**，锌填**一半**四面体空隙（注意是 $T$ 的一半，不是 $O$ 的一半），就得到闪锌矿（sphalerite）：

$$
\ce{ZnS}\ (\text{闪锌矿}): \quad 3 \cdot 2PT
$$

结构信息：

- 晶系/点群：立方晶系，$T_d$（金刚石若是 $O_h$，闪锌矿因两种原子不同降为 $T_d$）；
- 点阵形式：$cF$；
- 空间群：$F\overline{4}3m$；
- 堆积记号：$3 \cdot 2PT$。

!!! Tip "示例：  [**闪锌矿 ZnS**](https://next-gen.materialsproject.org/materials/mp-XXXXXX)"
    | 球棍模型 | 多面体模型 |
    | :---: | :---: |
    | <img src="lecture7.assets/PLACEHOLDER_zns_sphalerite_ball_stick.png" alt="占位符：闪锌矿 ZnS 球棍模型（原图：temp/images/image195.png）" style="zoom:50%;" /> | <img src="lecture7.assets/PLACEHOLDER_zns_sphalerite_polyhedra.png" alt="占位符：闪锌矿 ZnS 四面体模型（原图：temp/images/image195.png）" style="zoom:50%;" /> |

     <center> [mp-XXXXXX](https://next-gen.materialsproject.org/materials/mp-XXXXXX) · [CIF 下载](cifs/PLACEHOLDER_ZnS_sphalerite.cif) </center>

闪锌矿和金刚石是同构的：把金刚石的两套 $cF$ 骨架分别换成 $\ce{Zn}$ 和 $\ce{S}$ 就是闪锌矿。Lecture 5 讲单质晶体时还会用金刚石 $3 \cdot 2PT$ 的写法。

!!! note "讲座小技巧"
    讲义里有一句经验："如果找不到四重反轴，试着以金属原子作顶点吧。"闪锌矿空间群 $F\overline{4}3m$ 的四重反轴并不明显，把注意力从阴离子移到金属原子（以金属原子为顶点重新看晶胞），$\overline{4}$ 轴的位置往往就浮现出来了。

### 7.1.2 闪锌矿的变形

**1）立方冰 Ic-ice。** 冰也有闪锌矿型的"仿品"：氧做 ccp，氢键把水分子连成闪锌矿骨架。冰 I$_c$ 是自然界中极罕见的立方冰（普通冰是六方的 I$_h$，见 7.2.2）。

<img src="lecture7.assets/PLACEHOLDER_ic_ice.png" alt="占位符：立方冰 Ic-ice 结构（原图：temp/images/image196.png）" style="zoom:50%;" />

**2）$\ce{Ag2HgI4}$。** 把闪锌矿的阳离子位点按一定比例混入 $\ce{Ag}$ 和 $\ce{Hg}$，高温下两种阳离子**无序分布**（像"汤里的饺子"到处乱跑），成为快离子导体的候选材料。

<img src="lecture7.assets/PLACEHOLDER_ag2hgi4.png" alt="占位符：Ag2HgI4 的高温无序结构（原图：temp/images/image197.png）" style="zoom:50%;" />

**3）缺位拓展：$3 \cdot 4PT$ 型。** 把多个闪锌矿"叠加"并挖掉部分原子，可以构造出更复杂的骨架（如硫银锗矿家族）。核心思想还是那句：**缺位结构 = 完美结构 - 部分原子**。

<img src="lecture7.assets/PLACEHOLDER_zns_superlattice.png" alt="占位符：3·4PT 缺位拓展结构（原图：temp/images/image198.png、image199.png）" style="zoom:50%;" />

## 7.2 hcp：ZnS 纤锌矿 / ZnO

### 7.2.1 基本结构

把阴离子堆积换成 hcp，四面体空隙填一半，就得到纤锌矿（wurtzite）：

$$
\ce{ZnS}\ (\text{纤锌矿}): \quad 2 \cdot 2PT
$$

结构信息：

- 晶系/点群：六方晶系，$C_{6v}$；
- 点阵形式：$hP$；
- 空间群：$P6_3mc$；
- 堆积记号：$2 \cdot 2PT$。

!!! Tip "示例：  [**氧化锌 ZnO**](https://next-gen.materialsproject.org/materials/mp-XXXXXX)"
    | 球棍模型 | 多面体模型 |
    | :---: | :---: |
    | <img src="lecture7.assets/PLACEHOLDER_zno_ball_stick.png" alt="占位符：纤锌矿 ZnO 球棍模型（原图：temp/images/image200.png）" style="zoom:50%;" /> | <img src="lecture7.assets/PLACEHOLDER_zno_polyhedra.png" alt="占位符：纤锌矿 ZnO 四面体模型（原图：temp/images/image200.png）" style="zoom:50%;" /> |

     <center> [mp-XXXXXX](https://next-gen.materialsproject.org/materials/mp-XXXXXX) · [CIF 下载](cifs/PLACEHOLDER_ZnO.cif) </center>

!!! note "为什么 ZnO 更喜欢纤锌矿？"
    同为 $PT$，闪锌矿和纤锌矿的差别在于四面体的**取向和连接方式**（回忆 3.1.3 里尖端朝上/朝下的 $T$）。讲义的说法是纤锌矿存在"更多的桥头静电作用"，且 $\ce{ZnO}$ 中氧的电负性使 $\ce{Zn-O}$ 键离子性更强，倾向于 hcp 的取向。

### 7.2.2 纤锌矿的变形

**1）六方冰 I$_h$。** 普通冰就是纤锌矿型的氢键骨架——这就是为什么雪花是六角形的。I$_h$ 与 I$_c$ 的关系，正好就是纤锌矿与闪锌矿的关系。

<img src="lecture7.assets/PLACEHOLDER_ih_ice.png" alt="占位符：六方冰 Ih-ice 结构（原图：temp/images/image201.png）" style="zoom:50%;" />

**2）缺位拓展：$\ce{GeS2}$。** 四面体空隙只填一半中的一半：$2 \cdot 2PT_{1/2}$，得到由 $\ce{GeS4}$ 四面体链/骨架组成的 $\ce{GeS2}$。

<img src="lecture7.assets/PLACEHOLDER_ges2.png" alt="占位符：GeS2 的 2·2PT1/2 缺位结构（原图：temp/images/image202.png、image203.png、image204.png）" style="zoom:50%;" />

**3）硫砷铜矿 $\ce{Cu3AsS4}$：$2 \cdot 2P_{1/4\,3/4}T$。** 部分填充的密置层 + 全填的四面体空隙，把纤锌矿骨架"打孔"后填入不同阳离子。

<img src="lecture7.assets/PLACEHOLDER_enargite.png" alt="占位符：硫砷铜矿 Cu3AsS4 结构（原图：temp/images/image205.png）" style="zoom:50%;" />

## 7.3 PTT 结构：萤石

### 7.3.1 ccp：CaF$_2$ 萤石与 Li$_2$O 反萤石

四面体空隙**全部填满**，就是萤石：

$$
\ce{CaF2}: \quad 3 \cdot 3PTT
$$

（等价地也可写成 $3 \cdot 3POT$。）结构信息：

- 晶系/点群：立方晶系，$O_h$；
- 点阵形式：$cF$；
- 空间群：$Fm\overline{3}m$；
- 堆积记号：$3 \cdot 3PTT$。

!!! Tip "示例：  [**萤石 CaF2**](https://next-gen.materialsproject.org/materials/mp-XXXXXX)"
    | 球棍模型 | 多面体模型 |
    | :---: | :---: |
    | <img src="lecture7.assets/PLACEHOLDER_caf2_ball_stick.png" alt="占位符：萤石 CaF2 球棍模型（原图：temp/images/image206.png）" style="zoom:50%;" /> | <img src="lecture7.assets/PLACEHOLDER_caf2_polyhedra.png" alt="占位符：萤石 CaF2 多面体模型（原图：temp/images/image206.png）" style="zoom:50%;" /> |

     <center> [mp-XXXXXX](https://next-gen.materialsproject.org/materials/mp-XXXXXX) · [CIF 下载](cifs/PLACEHOLDER_CaF2.cif) </center>

如果阳离子和阴离子互换角色——$\ce{Li2O}$ 中 $\ce{O^{2-}}$ 做 ccp、$\ce{Li^+}$ 填全部四面体空隙——就得到**反萤石**（antifluorite）结构。萤石家族的变化都围绕两件事：**替换**（原子或原子簇）和**缺位**。

!!! example "用半径比验证萤石的配位数"
    已知 $r(\ce{Ca^{2+}}) = 100\ \text{pm}$，$r(\ce{F^-}) = 133\ \text{pm}$，验证萤石中 $\ce{Ca^{2+}}$ 为 8 配位。

    ??? success "答案"
        $r_+/r_- = 100/133 \approx 0.75 > 0.732$，按半径比规则应取立方体空隙（8 配位）。注意萤石中 $\ce{Ca^{2+}}$ 的 8 配位是"立方体"，而堆积记号 $PTT$ 说的是氟的四面体空隙——两者描述的是不同离子的配位环境，不要搞混。

### 7.3.2 萤石的变形

**1）原子替换：$\ce{MgAgAs}$。** 把 $\ce{Ca}$ 位和 $\ce{F}$ 位分别换成不同原子，得到多种"填隙/替换"化合物。

**2）替换为原子簇：$\ce{K2PtCl6}$。** 把 $\ce{F^-}$ 换成 $\ce{PtCl6^{2-}}$ 八面体原子簇，萤石骨架变成"簇的密堆积"。

**3）层间连接：$\ce{CaSi2}$。** "就近原则"：硅原子之间直接成键，把萤石骨架的层间"焊"起来。

<img src="lecture7.assets/PLACEHOLDER_fluorite_variants.png" alt="占位符：MgAgAs、K2PtCl6 与 CaSi2（原图：temp/images/image208.png、image209.png、image210.png）" style="zoom:50%;" />

**4）缺位：$3 \cdot 3PT_{1/2}T_{1/2}$。** 两套四面体空隙各填一半：

- **$\ce{PtS}$ / $\ce{PtO}$**：$\ce{PtS4}$ 链之间相连，取向**平行**（讲义原话："我日，这也能看出来"——链的连接方式确实需要仔细看）；
- **$\ce{PbO}$**：四面体填充成**层状**结构，取向**垂直**。

<img src="lecture7.assets/PLACEHOLDER_pts_pbo.png" alt="占位符：PtS 与 PbO 的缺位 PTT 结构（原图：temp/images/image211.png–image214.png）" style="zoom:50%;" />

**5）极致的几何：$\ce{Tl2O3}$ / $\ce{Y2O3}$：$3 \cdot 3PT_{3/4}T_{3/4}$。** 两套四面体空隙各填 $3/4$，仔细观察缺位的位置正好和前面的 $3/4$ 空缺相吻合。这种结构的 $\ce{C3}$ 轴沿体对角线方向，但**互不相交**——对称元素"擦肩而过"的典型例子。

<img src="lecture7.assets/PLACEHOLDER_tl2o3.png" alt="占位符：Tl2O3/Y2O3 的 3/4 缺位结构（原图：temp/images/image215.png、image216.png）" style="zoom:50%;" />

**6）氧化亚铜 $\ce{Cu2O}$：$3 \cdot 3PT_{1/4}T_{1/4}$。** 另一种缺位萤石。更漂亮的看法是：**两套金刚石骨架互相穿插**，一套是 $\ce{Cu}$，一套是 $\ce{O}$ 连接 $\ce{Cu}$ 的桥——这就是赤铜矿的"双金刚石"图像。

<img src="lecture7.assets/PLACEHOLDER_cu2o.png" alt="占位符：Cu2O 的两套金刚石骨架穿插（原图：temp/images/image217.png、image218.png、image219.png）" style="zoom:50%;" />

**7）$\ce{SnI4}$：$PT_{1/8}T_{1/8}$。** 空隙填充降到八分之一，萤石骨架"稀碎"成孤立分子——$\ce{SnI4}$ 的分子晶体本质（联系 Lecture 9 的屏蔽效应！）。

<img src="lecture7.assets/PLACEHOLDER_sni4.png" alt="占位符：SnI4 的 1/8 填充结构（原图：temp/images/image220.png、image221.png）" style="zoom:50%;" />

**8）白钨矿 $\ce{CaWO4}$。** 按萤石的方式堆积 $\ce{Ca}$ 和 $\ce{O}$，再让氧原子部分位移、钨填入空隙，就得到白钨矿——它是 6.2.2 里"$\ce{CaWO4}$ 更接近锐钛矿"的另一种说法。

<img src="lecture7.assets/PLACEHOLDER_scheelite.png" alt="占位符：白钨矿 CaWO4 结构（原图：temp/images/image222.png）" style="zoom:50%;" />

### 7.3.3 hcp 的 PTT：几乎不可能

为什么萤石都选 ccp？因为在 hcp 中采取 $PTT$ 会面临**巨大的斥力**：回忆 $\ce{NiAs}$（$PO$ 型），八面体空隙的位置都在 $C$（上下层之间的错位三角）；而 $PTT$ 结构中，**上下两层的四面体空隙靠得极近，形成共面四面体**——两个阳离子几乎脸贴脸。因此 hcp 的 $PTT$ 几乎不存在，只有少数"变通"的例子：

- **$\ce{MoS2}$：$2 \cdot 3TPT$**。为避免 hcp 的不稳定，钼干脆选择**三棱柱型配位**，层间距做得非常大——这就是二硫化钼"润滑剂"本质的结构根源；
- **$\ce{ReB2}$**：讲义原话是"无所谓，我的人生已经完蛋了，直接形成 $\ce{B}$ 的片层以消除排斥"——硼原子成片层，把斥力问题彻底绕开；
- **$\ce{GaS}$**：双层 $\ce{MoS2}$ 结构；同族的 $\alpha/\beta$-$\ce{GaSe}$ 也属于这个家族。

!!! Tip "示例：  [**二硫化钼 MoS2**](https://next-gen.materialsproject.org/materials/mp-XXXXXX)"
    | 球棍模型 | 多面体模型 |
    | :---: | :---: |
    | <img src="lecture7.assets/PLACEHOLDER_mos2_ball_stick.png" alt="占位符：MoS2 球棍模型（原图：temp/images/image224.png）" style="zoom:50%;" /> | <img src="lecture7.assets/PLACEHOLDER_mos2_polyhedra.png" alt="占位符：MoS2 三棱柱配位模型（原图：temp/images/image224.png）" style="zoom:50%;" /> |

     <center> [mp-XXXXXX](https://next-gen.materialsproject.org/materials/mp-XXXXXX) · [CIF 下载](cifs/PLACEHOLDER_MoS2.cif) </center>

<img src="lecture7.assets/PLACEHOLDER_hcp_ptt.png" alt="占位符：hcp PTT 的共面四面体问题与 MoS2/ReB2/GaS（原图：temp/images/image223.png、image225.png、image226.png、image227.png）" style="zoom:50%;" />

!!! abstract "本讲总结"
    四面体配位的结构谱系：

    | 堆积记号 | 结构 | 关键点 |
    | :--: | :--: | :-- |
    | $3 \cdot 2PT$ | 闪锌矿（ccp） | 填一半 $T$，$F\overline{4}3m$ |
    | $2 \cdot 2PT$ | 纤锌矿（hcp） | 填一半 $T$，$P6_3mc$ |
    | $3 \cdot 3PTT$ | 萤石（ccp） | 填满 $T$，$Fm\overline{3}m$ |
    | $2 \cdot 3TPT$ | $\ce{MoS2}$（hcp） | 三棱柱避斥力 |

    体心立方家族的 $PTOT$（$\ce{CsCl}$ 型）是"四面体 + 八面体"混合填充，我们 Lecture 8 继续。

---

<center>第七章 结束</center>

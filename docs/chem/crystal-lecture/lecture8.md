# Lecture 8: 体心立方

Lecture 6、7 的主角是八面体和四面体空隙，这一讲的主角是**体心立方**——准确地说，是堆积记号 $PTOT$：四面体和八面体**按比例混合填充**。最经典的例子是 $\ce{CsCl}$ 型，它常被误认成体心立方点阵，但恰恰相反：两种离子各自形成一套简单立方点阵（$cP$）。这一讲我们先把它讲透，再看它的十几种"变装"，最后见识一下 hcp 里的"摆烂"选手 $\ce{ReB3}$。

## 8.1 ccp：CsCl

### 8.1.1 基本结构

$$
\ce{CsCl}: \quad 3 \cdot 2PTOT
$$

结构信息：

- 晶系/点群：立方晶系，$O_h$；
- 点阵形式：$cP$（注意是简单立方，不是带心！）；
- 空间群：$Pm\overline{3}m$；
- 堆积记号：$3 \cdot 2PTOT$（对 ccp 而言 $P$ 和 $O$ 等价，所以有时也写作 $2$）。

!!! Tip "示例：  [**氯化铯 CsCl**](https://next-gen.materialsproject.org/materials/mp-XXXXXX)"
    | 球棍模型 | 多面体模型 |
    | :---: | :---: |
    | <img src="lecture8.assets/PLACEHOLDER_cscl_ball_stick.png" alt="占位符：CsCl 球棍模型（原图：temp/images/image228.png）" style="zoom:50%;" /> | <img src="lecture8.assets/PLACEHOLDER_cscl_polyhedra.png" alt="占位符：CsCl 空隙分布模型（原图：temp/images/image229.png）" style="zoom:50%;" /> |

     <center> [mp-XXXXXX](https://next-gen.materialsproject.org/materials/mp-XXXXXX) · [CIF 下载](cifs/PLACEHOLDER_CsCl.cif) </center>

!!! warning "CsCl 不是体心立方点阵"
    $\ce{CsCl}$ 常被误认为 $cI$。实际上两种离子不同，$\ce{Cs}$ 和 $\ce{Cl}$ 各自形成一套简单立方点阵（$cP$），空间群是 $Pm\overline{3}m$。真正体心立方点阵（$cI$）的典型例子是金属钨（Lecture 5）。

!!! note "为什么叫 PTOT？"
    $PTOT$ 表示密置层 + 四面体空隙 + 八面体空隙 + 四面体空隙的填充序列：阳离子一半坐八面体、一半坐四面体（等效地看，就是体心位置的阳离子被 8 个阴离子立方配位）。堆积记号在这里"换算"成了体心立方几何。

### 8.1.2 CsCl 的变式

$\ce{CsCl}$ 型结构简单，但变装极其丰富，讲义整理了一大串：

**1）$\ce{AgI}$ 导电。** $\ce{Ag^+}$ 很小，可以在 $\ce{CsCl}$ 的各种空隙之间**穿梭**，高温下变成优秀的银离子导体——"固体里的离子在游泳"。

**2）$\ce{CN^-}$ 畸变：$\ce{CsCN}$、$\ce{NH4CN}$。** $\ce{CN^-}$ 是哑铃形，低温下旋转受阻，$\ce{CsCN}$ 畸变为**三方**晶系；$\ce{NH4CN}$ 则存在两种取向的 $\ce{CN}$。

**3）氢键畸变：$\ce{NH4Cl}$。** 低温时静电作用占主导，采取 $\ce{CsCl}$ 结构；高温时热运动破坏有序，变成 $\ce{NaCl}$ 结构。$\ce{NH4HF2}$ 也是氢键畸变的同类。

<img src="lecture8.assets/PLACEHOLDER_cscl_variants1.png" alt="占位符：AgI、CsCN 与 NH4Cl 的畸变（原图：temp/images/image230.png–image234.png）" style="zoom:50%;" />

**4）$\ce{Cr2Al}$：多层堆积。** 把 $\ce{CsCl}$ 的"单层"叠加成多层结构。

**5）原子替换：**

- $\ce{XeF2}$ 与 $\ce{Hg2Cl2}$：替换后畸变为**体心四方**（哑铃形分子平行排列）；
- $\ce{Pd4Se}$：把某个位置替换为**四面体**（$\ce{Pd4}$ 簇）；
- $\ce{CaB6}$：把 $\ce{B}$ 连成**八面体原子簇**再按 $\ce{CsCl}$ 排列。

<img src="lecture8.assets/PLACEHOLDER_cscl_variants2.png" alt="占位符：XeF2、Pd4Se 与 CaB6（原图：temp/images/image236.png、image237.png、image238.png）" style="zoom:50%;" />

**6）八倍晶胞的原子替换：** $\ce{BiF3}$ 和 $\ce{K3C60}$ 都在八倍大小的 $\ce{CsCl}$ 晶胞里做文章——$\ce{C60^{3-}}$ 球取代了氯的位置，钾填在空隙里。十二水合硫酸铝钾（明矾）$\ce{K(H2O)6Al(H2O)6(SO4)2}$ 也是这类"八倍晶胞"的经典。

<img src="lecture8.assets/PLACEHOLDER_cscl_variants3.png" alt="占位符：BiF3、K3C60 与明矾（原图：temp/images/image239.png、image240.png、image241.png）" style="zoom:50%;" />

**7）$\ce{TlSe}$：$\ce{Tl(I)(Tl(III)Se2)^-}$。** 由 $\ce{TlSe2^-}$ 长链和 $\ce{Tl^+}$ 组成，整体是**畸变的 $\ce{CsCl}$**——"一根链 + 一个阳离子"也可以搭出氯化铯。

**8）部分填充：$\ce{K2PtCl4}$：$3 \cdot 2P_{1/2}TO_{1/2}T$。** 空隙只填一半，$\ce{CsCl}$ 骨架"镂空"后由 $\ce{PtCl4^{2-}}$ 平面四方单元填充。

<img src="lecture8.assets/PLACEHOLDER_cscl_variants4.png" alt="占位符：TlSe 与 K2PtCl4（原图：temp/images/image242.png、image243.png、image244.png）" style="zoom:50%;" />

## 8.2 hcp 的 PTOT：ReB$_3$

讲义在这一节只写了一句："你竟然还想爆？"——hcp 里的 $PTOT$ 也躲不开四面体靠得太近的斥力问题（Lecture 7 讲过 hcp 中 $PTT$ 的共面四面体困境，$PTOT$ 同理）。$\ce{ReB3}$ 的选择是直接"摆烂"：形成 $\ce{B}$ 的片层，彻底放弃八面体/四面体空隙的规矩。

<img src="lecture8.assets/PLACEHOLDER_reb3.png" alt="占位符：ReB3 的 B 片层结构（原图：temp/images/image245.png、image246.png）" style="zoom:50%;" />

!!! abstract "本讲总结"
    | 堆积记号 | 结构 | 关键点 |
    | :--: | :--: | :-- |
    | $3 \cdot 2PTOT$ | $\ce{CsCl}$（$cP$） | $T+O$ 混合填充，$Pm\overline{3}m$ |
    | $3 \cdot 2P_{1/2}TO_{1/2}T$ | $\ce{K2PtCl4}$ | 部分填充 |

    体心立方家族的共同教训：**$PTOT$ 在 ccp 里是主角，在 hcp 里是灾难**——选对密堆积，比努力填空隙更重要。

---

<center>第八章 结束</center>

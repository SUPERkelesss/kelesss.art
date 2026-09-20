# research-related

## MACE: Higher Order Equivariant Message Passing Neural Networks for Fast and Accurate Force Fields

> [Ilyes Batatia](https://arxiv.org/search/stat?searchtype=author&query=Batatia,+I), [Dávid Péter Kovács](https://arxiv.org/search/stat?searchtype=author&query=Kovács,+D+P), [Gregor N. C. Simm](https://arxiv.org/search/stat?searchtype=author&query=Simm,+G+N+C), [Christoph Ortner](https://arxiv.org/search/stat?searchtype=author&query=Ortner,+C), [Gábor Csányi](https://arxiv.org/search/stat?searchtype=author&query=Csányi,+G)
>
> > Creating fast and accurate force fields is a long-standing challenge in computational chemistry and materials science. Recently, several equivariant message passing neural networks (MPNNs) have been shown to outperform models built using other approaches in terms of accuracy. However, most MPNNs suffer from high computational cost and poor scalability. We propose that these limitations arise because MPNNs only pass two-body messages leading to a direct relationship between the number of layers and the expressivity of the network. In this work, we introduce MACE, a new equivariant MPNN model that uses higher body order messages. In particular, we show that using four-body messages reduces the required number of message passing iterations to just two, resulting in a fast and highly parallelizable model, reaching or exceeding state-of-the-art accuracy on the rMD17, 3BPA, and AcAc benchmark tasks. We also demonstrate that using higher order messages leads to an improved steepness of the learning curves.
>
> | Comments: | Advances in Neural Information Processing Systems, 2022      |
> | --------- | ------------------------------------------------------------ |
> | Subjects: | **Machine Learning (stat.ML)**; Materials Science (cond-mat.mtrl-sci); Machine Learning (cs.LG); Chemical Physics (physics.chem-ph) |
> | Cite as:  | **[arXiv:2206.07697](https://arxiv.org/abs/2206.07697) [stat.ML]** |

核心目的是怎么把旋转矩阵放到MPNN里表示。这里假设第 $t$ 层节点状态未
$$
\sigma_i^{( t )} = ( r_i,z_i,h_i^{( t )} )
$$
这里 $h_i^{( t )}$ 是一个抽象的学习特征。之后先池化，利用神秘消息函数
$$
m_i^{( t )} = \bigoplus M_t( \sigma_i^{( t )},\sigma_j^{( t )} )
$$
然后进行消息传递，用神秘更新函数
$$
h_i^{( t+1 )} = U_t( \sigma_i^{( t )},m_i^{( t )} )
$$
最后用读出函数读出位点能量
$$
E_t= \sum_{t = 1}^{T} R_t( \sigma_i^{( t )} )
$$
现在开始等变部分。我们知道旋转矩阵放到三维里是显然的，但是高维的特征怎么办呢。假设某一个特征的维度是 $2L+1$ 。所以我们希望作用旋转 $Q$ 后的整体
$$
h_{i,L}^{( t )}( Q\cdot ( r_{1},\cdots ,r_{N} ) )
$$
和其他分量加起来的行为相等
$$
\sum_{M'} D^L_{M,M'}( Q )h_{i,kLM'}^{( t )}( r_{1},\cdots ,r_N )
$$
其实就是Wignar矩阵，但是我忘光了。我去补习一下。

---

MACE架构的核心就是多次分级展开。说实话这不就是类似团簇展开吗……
$$
m_i^{( t )} = \sum_j u_{1}( \sigma_i,\sigma_j ) + \sum_{j_{1},j_{2}}u_{2}( \sigma_i, \sigma_{ j_{1} }, \sigma_{ j_{2} } ) + \sum_{j_{1},\cdots ,j_{\nu}}u_{\nu}( \cdots  )
$$
这个神秘 $u$ 函数也是他娘的可以直接学习的量，$\nu$ 是神秘超参数

没救了，后面很多QM东西。等我学会了再来补充

---

## Performing Path Integral Molecular Dynamics Using an Artificial Intelligence-Enhanced Molecular Simulation Framework

> Cheng Fan, Maodong Li, Sihao Yuan, Zhaoxin Xie, Dechin Chen, Yi Isaac Yang, Yi Qin Gao; Performing Path Integral Molecular Dynamics Using an Artificial Intelligence-Enhanced Molecular Simulation Framework. **J. Chem. Theory Comput.** 12 August 2025; 21 (15): 7279–7289. https://doi.org/10.1021/acs.jctc.5c00666

我没写路径积分的专门理论，就先放这里了。假设有N个原子，每个原子用P个bead分解，最后配分函数
$$
Z = \lim_{ P \to \infty } \int\dd[NP]{re^{ -\beta \hat{H}_{eff} }}
$$
其中有效哈密顿量可以拆成两部分
$$
\hat{H}_P = \sum_{i = 1}^{N} \sum_{k = 1}^{P} \qty[ \frac{ p_i^{( k )2} }{ 2m_i } + \frac{1}{2} m_i \omega_P^{2}( r_i^{k+1}  - r_i^{( k )})^{2} ]
$$

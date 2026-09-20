# Vol1

## BU-MBAR: A hybrid solution strategy for the MBAR equations

> [Fabio Müller](https://arxiv.org/search/physics?searchtype=author&query=Müller,+F), [Francesco Alesiani](https://arxiv.org/search/physics?searchtype=author&query=Alesiani,+F), [Henrik Christiansen](https://arxiv.org/search/physics?searchtype=author&query=Christiansen,+H)
>
> > The multi-state Bennett acceptance ratio (MBAR) equations combine the data collected under different thermodynamic conditions in a statistically optimal way. Due to their practical importance, several solution strategies have been devised to optimize the convergence of the resulting set of coupled equations. However, even with graphics processing unit (GPU) acceleration, the convergence of these methods can still be either unstable or slow. We propose a new approach where the equations are interpreted as the limit of infinitesimal bin width of the respective weighted histogram analysis method (WHAM). In the proposed binned-to-unbinned MBAR (BU-MBAR) method, the bin width is adapted dynamically to ensure a stable and efficient convergence to the asymptotic solution.
>
> | Comments: | Code available at [this https URL](https://github.com/nec-research/BU-MBAR) |
> | --------- | ------------------------------------------------------------ |
> | Subjects: | **Computational Physics (physics.comp-ph)**; Soft Condensed Matter (cond-mat.soft); Statistical Mechanics (cond-mat.stat-mech); Chemical Physics (physics.chem-ph) |
> | Cite as:  | **[arXiv:2609.03541](https://arxiv.org/abs/2609.03541) [physics.comp-ph]** |

我看不懂。

## SALTED: a symmetry-adapted machine-learning program for predicting electron-densities in molecules and materials

> [Zekun Lou](https://arxiv.org/search/cond-mat?searchtype=author&query=Lou,+Z), [Alan M. Lewis](https://arxiv.org/search/cond-mat?searchtype=author&query=Lewis,+A+M), [Théophane Bernhard](https://arxiv.org/search/cond-mat?searchtype=author&query=Bernhard,+T), [Lukas Seifert](https://arxiv.org/search/cond-mat?searchtype=author&query=Seifert,+L), [Agustin Salcedo](https://arxiv.org/search/cond-mat?searchtype=author&query=Salcedo,+A), [Florian Kleemiss](https://arxiv.org/search/cond-mat?searchtype=author&query=Kleemiss,+F), [Mariana Rossi](https://arxiv.org/search/cond-mat?searchtype=author&query=Rossi,+M), [Andrea Grisafi](https://arxiv.org/search/cond-mat?searchtype=author&query=Grisafi,+A)
>
> > SALTED provides an open-source Python package for machine learning the quantum-mechanical electron density, *[Math Processing Error]*, in molecular and condensed-phase systems based on input atomic coordinates and species. The program adopts a linear atom-centered decomposition of the electron density, which makes it highly transferable across diverse atomistic configurations sharing similar chemical environments. Because of this representation choice, SALTED is naturally interfaced with state-of-the-art electronic-structure programs based on atomic orbitals, namely CP2K, FHI-aims, and PySCF, from which reference electron-density data can be generated and used to train a model. The learning algorithm is based on a symmetry-adapted extension of Gaussian process regression, making SALTED especially efficient in small-data regimes. Thanks to the implementation of vector-field kernel functions, SALTED can also learn the first-order response of the electron density to applied electric fields, *[Math Processing Error]*. The application of SALTED within computational workflows has already shown its utility in a wide variety of contexts, including the calculation of polarization vectors and polarizability tensors, the accurate evaluation of Coulomb forces in QM/MM molecular-dynamics simulations, and electronic-structure studies of large-scale 2D materials.
>
> | Comments: | 7 pages, 1 figure                                            |
> | --------- | ------------------------------------------------------------ |
> | Subjects: | **Materials Science (cond-mat.mtrl-sci)**                    |
> | Cite as:  | **[arXiv:2609.03576](https://arxiv.org/abs/2609.03576) [cond-mat.mtrl-sci]** |



---

## Machine learning kinetics from molecular dynamics data

> [Jonathan Weare](https://arxiv.org/search/physics?searchtype=author&query=Weare,+J), [Aaron R. Dinner](https://arxiv.org/search/physics?searchtype=author&query=Dinner,+A+R)
>
> > Most molecular transitions occur on timescales far beyond direct molecular dynamics simulations. The committor, the probability that a configuration reaches a product state before a reactant state, is a central kinetic statistic, providing a mechanism-independent reaction coordinate and a foundation for transition path theory and the calculation of rates. This review surveys modern approaches for estimating the committor and related kinetic statistics from molecular simulations, with an emphasis on self-supervised methods that learn solutions of their defining dynamical equations rather than relying on labeled shooting data. We develop a common operator viewpoint connecting generator-based partial differential equations, variational principles, Markov state models, dynamical Galerkin approximation, and neural networks. Empirical and theoretical evidence points to the efficiency of these methods. We provide theoretical and practical guidance for realizing their full potential in applications, including strategies for treating non-Markovian effects and for sampling. We conclude by identifying opportunities for further research, including connections to reinforcement learning and generative modeling.
>
> | Comments: | 24 pages, 5 figures                                          |
> | --------- | ------------------------------------------------------------ |
> | Subjects: | **Computational Physics (physics.comp-ph)**; Statistical Mechanics (cond-mat.stat-mech); Machine Learning (cs.LG); Chemical Physics (physics.chem-ph); Data Analysis, Statistics and Probability (physics.data-an) |
> | Cite as:  | **[arXiv:2609.17736](https://arxiv.org/abs/2609.17736) [physics.comp-ph]** |


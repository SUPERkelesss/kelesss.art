# 量子多体理论 Quantum many-body theory

## 1. 又是产生湮灭算符

### Fundamental Properties

given $a$ as a non-hermitian operator.

$$
\begin{gathered}
\comm{ a }{ a^{\dagger} } = 1 \\
\comm{ a^{\dagger}a }{ a } = -a \\
\comm{ a^{\dagger}a }{ a^{\dagger} } = a^{\dagger}
\end{gathered}
$$

consider

$$
a^{\dagger}a\ket{\alpha} = \alpha \ket{\alpha}
$$

we need $\alpha \geq 0$，and we know

$$
( a^{\dagger}a )( a )^{m}\ket{\alpha}  = ( \alpha-m )\ket{\alpha}
$$

we need $\alpha-m\geq 0$, so $\alpha$ must be integer. We redefine it as $n$ and represents number of particles

$$
( a^{\dagger}a )( a )^m \ket{n}  = ( n-m )\ket{n}
$$

for vacumm state

$$
( a^{\dagger}a )\ket{0} = 0
$$

we need that the ket is normalized, that we got

$$
\frac{1}{\sqrt{ n! }}( a^{\dagger} )^n \ket{0}  =\ket{n}
$$

 and then we got the eigenvalue of upper&lower operator

$$
a^{\dagger}\ket{n} = \sqrt{ n+1 }\ket{n+1} \qc a\ket{n}  = \sqrt{ n }\ket{n-1}
$$

for $a\ket{0} = 0$，we also have
$$
a\ket{0}  = \frac{1}{\sqrt{ 2 }} \qty[ x+\pdv{   }{ x }  ]\ket{0} =0
$$


finally we define the hamiltonian

$$
H = \hbar \omega a^{\dagger}a
$$

just for **harmonic oscilator**, we define

$$
a = \frac{1}{\sqrt{ 2 }}( \hat{X} + i\hat{P} )\qc
a^{\dagger} = \frac{1}{\sqrt{ 2 }}( \hat{X} - i\hat{P} )
$$

corresponding harmitonian

$$
H\ket{n} = \hbar \omega( n+\frac{1}{2} )
$$

---

for **many HOs** cases, we define
$$
H = \sum_i \frac{p_i^{2}}{2m} + \frac{1}{2}\sum_{i,j} \nu _{ij} \hat{q}_i\hat{q}_j
$$

where they movement are independent

$$
\comm{ q_i }{ p_i } = i\hbar \delta_{i,j}\qc \comm{ q_i }{ q_j } = \comm{ p_i }{ p_j } = 0
$$

if the potential matrix  $\mathbb{ V}$ is positive-definite, we may use an unitary matrix $\mathbb{ O}$ to diagnize

$$
\mathbb{ O }^T\mathbb{ O }=1\qc \mathbb{ O }^T\mathbb{ V }\mathbb{ O } = diag( \omega_{1}^{2},\omega_{2}^{2},\cdots  )
$$

$\mathbb{ O}$ transform position $q$ to norm mode $Q$, that we go back to uncoupled case:

$$
H = \sum_i \qty( \frac{p_i^{2}}{2m} + \omega_{i}^{2}Q_{i}^{2} )
$$

---

for **continuous space**, for example a drum head. We transform into continuous arguments
$$
\hat{ Q }_i, \hat{ P }_i \implies  \varphi_x, \Pi _x
$$

and

$$
\comm{ \varphi_x }{ \Pi _y } = i\hbar \delta( x-y )
$$

the harmiltonian

$$
H = \frac{1}{2} \int \dd[ 2 ]{ x } \Pi ^{2}( x ) + \frac{1}{2}\int \dd[ 2 ]{ x }\dd[ 2 ]y\ K( x-y )\varphi( x )\varphi( y )
$$

where we assume the elastic function $K( x)$ satisfied as positive-definite symmetric matrix:

$$
K( -x ) = K( x )\qc K( q ) > 0
$$

this time we do Fourier transform

$$
\varphi( q ) = \int \dd{x} \varphi( x )e^{ -iqx }
$$

$$
K( q ) = \int \dd{x} K( x )e^{ -iqx }
$$

so the original eq transform to

$$
H = \frac{1}{2} \int \frac{\dd[ 2 ]{ q }}{( 2\pi  )^{2}} \Pi ^{\dagger}( q )\Pi ( q ) + \int \frac{\dd[ 2 ]{ q }}{( 2\pi  )^{2}} \ K( q )\varphi^{\dagger}( q )\varphi( q )
$$

according to the communicate relation:

...

we have

$$
\begin{gathered}
a( q ) = \frac{1}{\sqrt{ 2 }}\qty[ \sqrt{ \frac{\omega_q}{\hbar } }\varphi( q ) + \frac{i}{\sqrt{ \hbar \omega_q }}\Pi ( q ) ] \\
a^{\dagger}( q ) = \frac{1}{\sqrt{ 2 }}\qty[ \sqrt{ \frac{\omega_q}{\hbar } }\varphi( q ) - \frac{i}{\sqrt{ \hbar \omega_q }}\Pi ( q ) ]
\end{gathered}
$$

finally transform

$$
\begin{align}
H  & = \frac{1}{2} \int \frac{\dd[ 2 ]{ q }}{( 2\pi  )^{2}} \Pi ^{\dagger}( q )\Pi ( q ) + \frac{1}{2}\int \frac{\dd[ 2 ]{ q }}{( 2\pi  )^{2}} \ K( q )\varphi^{\dagger}( q )\varphi( q ) \\
 & = \frac{1}{2}\int \frac{\dd[ 2 ]{ q }}{( 2\pi  )^{2}} \hbar \omega_q \qty[ a^{\dagger}( q )a( q ) + a( q )a^{\dagger}( q ) ] \\
 & = \int \frac{\dd[ 2 ]{ q }}{( 2\pi  )^{2}} \hbar \omega_q  ( a^{\dagger}( q )a( q ) + const. )
\end{align}
$$

for a specific mode k

$$
a^{\dagger}( k )\ket{0} = \ket{k}
$$

for many particle system, we know that normal modes are acting independently. That is the operators are commute

$$
a^{\dagger}( k_{1} )a^{\dagger}( k_{2} ) = a^{\dagger}( k_{2} )a^{\dagger}( k_{1} ) = \ket{k_{1},k_{2}}
$$

we can say that the operator **create a particle**. furthermore

$$
\comm{ a_i }{ a_j } = 0\qc \comm{ a^{\dagger}_i }{ a^{\dagger}_j }=0\qc \comm{ a^{\dagger}_i }{ a_j }=\delta_{ij}
$$

we call that particle as Bosan particles.

将平移算符作用在 $\varphi( x)$ 上

$$
\cdots 
$$
...

---

## 2

for indistinguishable particles, for boson case
$$
\Psi_n( x_{1},\cdots ,x_{N} ) = \frac{1}{ \sqrt{ N!  }} \sum_P P[  \varphi_{n_{1}}( x_{1} )\cdots \varphi_{n_N}( x_N ) ]
$$
for fermion case
$$
\Psi_n( x_{1},\cdots ,x_{N} ) =\frac{1}{ \sqrt{ N!  }} \sum_P ( - )^{A_P} P[ \varphi_{n_{1}}( x_{1} )\cdots \varphi_{n_N}( x_N ) ]
$$
consider norm of the total WF
$$
\abs{ \Psi_n( x_{1},\cdots ,x_{N} ) }^{2} = \cdots 回去zi自己补一下
$$
we can see it's normalize

consider inner product of two n-particle state by
$$
\begin{align}
 & \ip{ \phi_{1},\cdots ,\phi_n }{ \psi_{1},\cdots ,\psi_n  }  \\
& = \sum_P \sum_{p'} \cdots   \\
 & = \sum_P \sum_R \cdots  \\
 & = \sum_R ( \pm 1 )^R \ip{ \phi_{R( 1 )} }{\psi_{1}  }\ip{ \phi_{R( 2 )} }{\psi_{2}  }\cdots \ip{ \phi_{R( n )} }{\psi_{n}  }
\end{align}
$$
we can represent this in determinant
$$
\ip{ \phi_{1},\cdots ,\phi_n }{ \psi_{1},\cdots ,\psi_n  } =\mdet{
\ip{ \phi_{1} }{ \psi_{1} } & \ip{ \phi_{1} }{ \psi_{2} } & \cdots  & \ip{ \phi_1 }{ \psi_n } \\
\vdots  & \vdots  & \ddots  & \vdots  \\
\ip{ \phi_n }{ \psi_{1} } & \ip{ \phi_n }{ \psi_{2} } & \cdots  & \ip{ \phi_n }{ \psi_n }
}_\zeta
$$
then consider a boson state, that for any state i can bu $n_i$ occupied
$$
\frac{1}{\sqrt{ n_{1}!n_{2}!\cdots n_m! }} \ket{\psi_{1},\psi_{1},\cdots ,\psi_{1},\psi_{2},\cdots ,\psi_{2},\cdots ,\psi_{m},\cdots ,\psi_m}
$$
the normalize term is due to diagonal block matrix of its norm.
$$
\cdots 
$$
like project operator, we have
$$
1 = \frac{1}{n!}\sum_{\tilde{\alpha}_{1}}\cdots \sum_{\tilde{\alpha}_n}\op{ \tilde{\alpha}_{1}, \cdots ,\tilde{\alpha}_n }
$$
for fermion case, easily prove from ally it on another state
$$
\cdots 
$$

---

for an general state of multiparticle space
$$
\ket{\psi} = \ket{\psi^{( 0 )}} +  \ket{\psi^{( 1 )}} + \cdots +\ket{\psi^{( n )}} + \cdots 
$$
where $\ket{\psi^{( n )}}$ is an $n$ particle state.

we can def the creation operator
$$
a^{\dagger}( \phi )\ket{\psi_{1},\psi_{2},\cdots ,\psi_n} := \cdots
$$
destruction operator
$$
a( \phi ) \ket{\psi_{1},\psi_{2},\cdots ,\psi_n} := ( n-1 )-partical\ state
$$
lets find the effect of destruct operator
$$
\begin{align}
 & \mel{ \chi_{1},\cdots ,\chi_{n-1} }{ a( \phi ) }{ \psi_{1},\cdots ,\psi_n } \\
 & = ( \ip{ \psi_{1},\cdots ,\psi_n }{ \phi,\chi_{1},\cdots ,\chi_{n-1} } )^{*} \\
 & = judadematrix \\
 & = \sum_{k = 1}^{n} ( \pm 1 )^{k-1} \ip{ \phi }{ \psi_k }\ip{ \chi_{1},\chi_{2},\cdots ,\chi_{n-1} }{ \psi_{1},\cdots ,\psi_{k-1},\psi_{k+1},\cdots ,\psi_n }
\end{align}
$$
the chi bra is not related to k, that means
$$
a( \phi )\ket{\psi_{1},\cdots ,\psi_{n}} = \sum_{k = 1}^{n} ( \pm 1 )^{k-1} \ip{ \phi }{ \psi_k }\ket{ \psi_{1},\cdots ,\psi_{k-1},\psi_{k+1},\cdots ,\psi_n } 
$$

---

easily derive that
$$
a^{\dagger}( \phi_{1} )a^{\dagger}( \phi_{2} ) = ( \pm 1 ) a^{\dagger}( \phi_{2} )a^{\dagger}( \phi_{1} )
$$
in this case we have
$$
\comm{ a^{\dagger}( \phi_{1} ) }{ a^{\dagger}( \phi_{2} ) }_{\mp } = 0
$$
for bosons are commuted, but fermions are anti-conmuted

now we consider comm relation of create and distruct OP
$$
\begin{align}
 & a( \phi_{1} )a^{\dagger}( \phi_{2} )\ket{\psi_{1},\cdots ,\psi _n}  \\
 & = a( \phi_{1} )\ket{\phi_{2},\psi_{1},\cdots ,\psi_n}  \\
 & = \ip{ \phi_{1} }{ \phi_{2} }\ket{\psi_{1},\cdots ,\psi_n} + \cdots 
\end{align}
$$
one can find
$$
\comm{ a( \alpha ) }{ a^{\dagger}( \alpha' ) }_{\mp } = \ip{ \alpha }{ \alpha' }=\delta_{\alpha,\alpha'}
$$
for boson state we can define
$$
\ket{n_{1},n_{2},\cdots } = \frac{ \ket{1,\cdots ,1,2,\cdots ,2,\cdots }  }{ \sqrt{ n_{1}!n_{2}!\cdots  } }
$$
where any state can represent in
$$
\ket{n_{1},n_{2},\cdots } = \frac{1}{\sqrt{ n_{1}!n_{2}!\cdots  }}( a^{\dagger}( 1 ) )^{n_{1}}( a^{\dagger}( 2 ) )^{n_{2}}\cdots \ket{vac} 
$$
then we can also prove that
$$
a^{\dagger}( \alpha )\ket{n_{1},n_{2},\cdots }  = \sqrt{ n_\alpha +1}\ket{n_{1},n_{2},\cdots ,n_\alpha+1,\cdots } 
$$

---

we can also change basis
$$
\comm{ a( p ) }{ a^{\dagger}( p' ) }_{\mp } = ( 2\pi )^{3}\delta^{3}( p-p' )
$$

$$
\comm{ a( x ) }{ a^{\dagger}( x' ) }_{\mp } = \delta^{3}( p-p' )
$$

transform them in FT

---

now we focus on the hamiltonian. Assume there is an op $A^{( 1 )}$ act on one-particle state
$$
\hat{A}^{( 1 )}( x,p )\ket{\psi} = \ket{\psi'} 
$$
we want to sum over every particle in an multi-partical state
$$
\hat{A} := \sum_j \hat{A}^{( 1 )}( x_j,p_j )
$$
we need to deal with a lot of summation. now we def
$$
\hat{A}^{( 1 )}_{\alpha\beta} = \mel{ \alpha }{ \hat{A}^{( 1 )}( x,p ) }{ \beta }
$$
now we have
$$
\hat{A}^{( 1 )}( x,p ) = \sum_{\alpha,\beta} \ket{\alpha}\mel{ \alpha }{ A^{( 1 )} }{ \beta }\bra{\beta} = \sum_{\alpha,\beta}A_{\alpha\beta}^{( 1 )}\op{ \alpha }{ \beta }
$$
now the total OP become
$$
fkufkufkufkufkufukufku
$$

$$
\hat{A} = \sum_{\alpha,\beta}A_{\alpha,\beta}^{( 1 )}a^{\dagger}( \alpha )a( \beta )
$$

---

for a first case we consider an identity operator
$$
A^{( 1 )}=\mathbb{ 1 }
$$
for definition we have
$$
\begin{align}
\hat{A} & = \sum_{\alpha,\beta}A_{\alpha,\beta}^{( 1 )}a^{\dagger}( \alpha )a( \beta ) \\
 & = \sum_{\alpha,\beta}\delta_{\alpha,\beta}a^{\dagger}( \alpha )a( \beta ) \\
 & = \sum_\alpha a^{\dagger}( \alpha )a( \alpha )
\end{align}
$$
next consider the momentum OP
$$
P^{( 1 )} = \int \frac{ \dd[ 3 ]{ p } }{ ( 2\pi )^{3} }P\op{ P }{ P }
$$
the total momentum

...

Finally consider Hamiltoian
$$
\hat{H} = \sum_{i = 1}^{n} -\frac{ \laplacian _i }{ 2m }+V( x_i )
$$
so
$$
\begin{align}
H & = \mel{ x }{ H }{  x'  } \\
 & = \int\dd[ 3 ]{ x }\dd[ 3 ]{ x' } a^{\dagger}( x )\qty[ \cdots  ]a( x' ) \\
 & = \int\dd[ 3 ]{ x } a^{\dagger}( x )\qty[ \cdots  ]a( x ) 
\end{align}
$$

---

then we consider interaction case. Assume that there are only 2-partical interactions
$$
\hat{V} := \sum_{i<j}V^{( 2 )}( x_i,x_j ) = \frac{1}{2}\sum_{i\neq j} V( x_{i},x_{j} )
$$
now we prove that:
$$
V = \frac{1}{2} \int\dd[3]{x}\int\dd[3]{y}V^{( 2 )}( x,y )a^{\dagger}( x )a^{\dagger}( y )a( y )a( x )
$$
for the first two operator
$$
\begin{align}
 & a( y )a( x )\ket{x_{1},\cdots ,x_{n}}   \\
& = a( y )\sum_{k = 1}^{n} ( \pm  1)^{k-1}\delta^3 ( x-x_k )\ket{x_{1},\cdots ,x_{k-1},x_{k+1},\cdots ,x_n}  \\
 & = \sum_{k = 1}^{n} ( \pm  1)^{k-1}\delta^3 ( x-x_k )\sum_{j = 1\neq k}^{n} \eta_{jk}\delta^3 ( x-x_j ) \\
  & \ket{x_{1},( \text{ no $x_j$  $x_k$ } ),\cdots ,x_{n} }
\end{align}
$$
where $\eta = ( \pm 1 )^{j-1}$ if $j<k$ else $\eta=( \pm  )^j$

now apply two creation op
$$
\begin{align}
 & a^{\dagger}( x )a^{\dagger}( y )a( y )a( x )\ket{x_{1},\cdots ,x_{n}}  \\
 & = \cdots  \\
 & = \sum_{j\neq k} \delta^3( x-x_k )\delta^3( y-x_j )\ket{x_{1},\cdots ,x_{n}} 
\end{align}
$$
integrate over whole space and we find it's true

---

now we adding new spin term
$$
a^{\dagger}_{\sigma}( x )\ket{vac}  = \ket{( x,\sigma )} 
$$
then we can counter interaction with different spin
$$
V = \frac{1}{2} \int\dd[3]{x}\int\dd[3]{y}V^{( 2 )}( x,y )a_{\sigma}^{\dagger}( x )a_{\sigma'}^{\dagger}( y )a_{\sigma'}( y )a_\sigma( x )
$$
do FT
$$
a_\sigma( x ) = \int\frac{ \dd[3]{k} }{ ( 2\pi )^{3} }e^{ -ikx }a_{\sigma}( k )
$$
and
$$
a^{\dagger}_\sigma( x ) = \int\frac{ \dd[3]{k} }{ ( 2\pi )^{3} }e^{ ikx }a^{\dagger}_{\sigma}( k )
$$
then the potential term becomes
$$
\begin{align}
V( q )  & = \int\dd[3]{( x-y )}V( x-y )e^{ -iq( x-y ) } \\
 & = \frac{1}{2}\sum_{\sigma,\sigma'} \int \frac{ \dd[3]{q} }{ ( 2\pi )^{3} } \int \frac{ \dd[3]{k} }{ ( 2\pi )^{3} } \int \frac{ \dd[3]{k'} }{ ( 2\pi )^{3} } \\
 & V( q ) a_{\sigma'}^{\dagger}( k+q )a_{\sigma'}^{\dagger}( k'-q )a_{\sigma'}( k' )a_\sigma( k)
\end{align}
$$
we can draw it by Fermon Graph

...

---

### Jellium model

Jellium model is an effective model for a simple metal. We can think it as electrons move in a positive charge background. Several assumptions:

1. $+Z$ cation to be static

2. uniformly distributed positive-charge background
   $$
   n( x ) = n = \frac{N}{V}
   $$

3. the size of the box is large enough.

and we consider no Bloch Bond theory.

consider the e-e interaction hamiltonian
$$
\begin{align}
H_{el}  & = \frac{1}{2}\int\dd[3]{x}\int\dd[3]{y}a_{\sigma}^{\dagger}( x )a_{\sigma'}^{\dagger}( y )\frac{ e^{2} }{ | x-y | }a_{\sigma'}( y )a_{\sigma}( x ) \\
 & =  \frac{1}{2}\int\dd[3]{x}\int\dd[3]{( x-y )} V( x-y )\qty[ N^{2}-N ]  \\
 & = \frac{1}{2} \qty( \frac{1}{V} )^{3} \sum_{q\neq 0}\sum_{k}\sum_{k'} \frac{ 4\pi e^{2} }{ \mu^{2}+q^{2} } a_{\sigma'}^{\dagger}( k+q )a_{\sigma'}^{\dagger}( k'-q )a_{\sigma'}( k' )a_\sigma( k)
\end{align}
$$
b-b interaction
$$
H_{b} = \frac{e^{2}}{2} \int\dd[3]{x}\int\dd[3]{y} \frac{ n( x )n( y ) }{ | x-y | }
$$
eee, this one is not converge. Do a little trick: adding a exponent term
$$
H_{b} = \frac{e^{2}}{2} \int\dd[3]{x}\int\dd[3]{y} \frac{ n( x )n( y ) }{ | x-y | } e^{ -\mu \abs{ x-y } }
$$
then the integration is converge. Finally let $\mu \to 0$ we get back to original formula.
$$
\begin{align}
H_b & = \frac{e^{2}}{2} \qty( \frac{N}{V} )^{2} \int \dd[3]{x}\int\dd[3]{z} \frac{ e^{ -\mu| z | } }{ | z | } \\
 & = \frac{e^{2}}{2} \frac{N^{2}}{V} \frac{4\pi}{\mu^{2}}
\end{align}
$$
we can see the $H_b$ diverge, which represent long-range nature of Coulomb interaction

e-b interaction
$$
\begin{align}
H_{el-b} & = -e^{2} \sum_{i = 1}^{N} \frac{N}{V} \int\dd[3]{x} \frac{ e^{ -\mu| x-x_{i} | } }{ | x-x_{i} | } \\
 &  = -e^{2} \frac{N^{2}}{V} \frac{4\pi}{\mu^{2}}
\end{align}
$$
now just rewrite the e-e interaction



---

### Field theory at 0K

#### (Adiabatic) Gell-Mann Low Theorem

consider Hamiltonian
$$
H = H_{0} + e^{ -\varepsilon| t | }H_{1}
$$
which means the Hamiltonian changes form $H_{0}$ to $H_{0}+H_{1}$ when $t=-\infty \to t=0$. 

[Picture: some energy level transfer to another one, without energy level crossing]

Using time evolving operator
$$
\hat{U}( t,t_{0} )\ket{\Phi_0} = \ket{\Phi( t )}
$$
Schrodinger pict
$$
ih\pdv{ t } \ket{\Psi_S( t )}  = H\ket{\Psi_S( t )}
$$
Hinsberg pict
$$
i\hbar \pdv{ t } O_H( t ) = \comm{ O_H( t ) }{ H }
$$
interaction pict
$$
ih\pdv{ t } \ket{\Psi_I( t )}  = e^{ \frac{iH_{0}t}{\hbar } }\ket{\Psi_I( t )}
$$

$$
O_I( t ) = e^{ \frac{iH_{0}t}{\hbar } }O_Se^{ -\frac{iH_{0}t}{\hbar } }
$$

so for seconf quant. we def schrodinger operator as
$$
O_S = f( a^{\dagger}_k, a_k )
$$
the corresponding interaction OP is
$$
O_I( t ) = f( e^{ \frac{iH_{0}t}{\hbar } }a^{\dagger}_ke^{ -\frac{iH_{0}t}{\hbar } }, e^{ \frac{iH_{0}t}{\hbar } }a^{\dagger}_ke^{ -\frac{iH_{0}t}{\hbar } } )
$$

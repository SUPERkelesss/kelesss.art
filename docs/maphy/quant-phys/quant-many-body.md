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

for **continuous space (field quantization)**, for example a drum head. We transform into continuous arguments
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
\omega^{2}( q ) = K( q ) = \int \dd{x} K( x )e^{ -iqx }
$$

so the original eq transform to

$$
H = \frac{1}{2} \int \frac{\dd[ 2 ]{ q }}{( 2\pi  )^{2}} \Pi ^{\dagger}( q )\Pi ( q ) + \int \frac{\dd[ 2 ]{ q }}{( 2\pi  )^{2}} \ K( q )\varphi^{\dagger}( q )\varphi( q )
$$

then
$$
H = \frac{1}{2} \int \frac{ \dd[2]{q} }{ ( 2\pi )^{2} } \qty[ \Pi ^{\dagger}( q )\Pi( q ) + \omega^{2}( q )\phi ^{\dagger}( q )\phi( q ) ]
$$
according to the communicate relation:

.

we have

$$
\begin{gathered}
a( q ) = \frac{1}{\sqrt{ 2 }}\qty[ \sqrt{ \frac{\omega_q}{\hbar } }\varphi( q ) + \frac{i}{\sqrt{ \hbar \omega_q }}\Pi ( q ) ] \\
a^{\dagger}( q ) = \frac{1}{\sqrt{ 2 }}\qty[ \sqrt{ \frac{\omega_q}{\hbar } }\varphi^{\dagger}( q ) - \frac{i}{\sqrt{ \hbar \omega_q }}\Pi ^{\dagger} ( q ) ]
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
ih\pdv{ t } \ket{\Psi_I( t )}  = H_{1}\ket{\Psi_I( t )}
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
from interaction pict
$$
\ket{\Psi_i( t )}  = U( t;t_{0} ) \ket{\Psi_i( t_{0} )} 
$$
the LH is
$$
\ket{\Psi_i( t )}  = e^{ iH_{0}t/\hbar  } e^{ iH( t-t_{0} )/\hbar  }e^{ -iH_{0}t/\hbar  } \ket{\Psi_I( t_{0} )}
$$
this gives
$$
U( t;t_{0} ) = e^{ iH_{0}t/\hbar  } e^{ iH( t-t_{0} )/\hbar  }e^{ -iH_{0}t/\hbar  }
$$
by deriverate it by t we have
$$
i\hbar \pdv{ t }  U( t;t_{0} ) = H_{1}( t )U( t;t_{0} )
$$
integrate it
$$
\begin{align}
U( t;t_{0} ) - 1 & = -\frac{i}{\hbar } \int_{t_{0}}^{t} \dd{t'}  H( t' )U( t';t_{0} ) 
\end{align}
$$
this gives
$$
U( t;t_{0} ) = 1-\frac{i}{\hbar }\int_{t_{0}}^{t}  \dd{t'} H_{1}( t' )	U( t';t_{0} )
$$
by repeating this we have
$$
\begin{align}
U( t;t_{0} ) & = 1+( \frac{ -i }{ \hbar  }  )\int_{t_{0}}^{t}  \dd{t'} H_{1}( t' ) \\
 & + ( \frac{ -i }{ \hbar  }  )^{2} \int_{t_{0}}^{t}  \dd{t'} \int_{t_{0}}^{t'}  \dd{t''} H_{1}( t' )H_{1}( t'' ) \\
 & + \cdots 
\end{align}
$$
the third term we rerwrite
$$
\frac{1}{2} \int_{t_{0}}^{t}  \dd{t'} \int_{t_{0}}^{t}  \dd{t''} \qty[ H_{1}( t' )H_{1}( t'' )\theta( t'-t'' ) + H_{1}( t'' )H_{1}( t' )\theta( t''-t' ) ]
$$
this two are not commute. we call it as **time ordered product of  operator** denoteed by Tau
$$
\frac{1}{2} \int_{t_{0}}^{t}  \dd{t'} \int_{t_{0}}^{t} \dd{t''} \Tau( H_{1}( t' )H_{1}( t'' ) ) 
$$
then the n-th term can write as
$$
\frac{1}{n!} \int_{t_{0}}^{t}  \dd{t_{1}}\int_{t_{0}}^{t}  \dd{t_{2}}\cdots \int_{t_{0}}^{t}  \dd{t_{n}} \Tau\qty[ H_{1}( t_{1} )\cdots H_n( t_n ) ]
$$
so we can write that
$$
\begin{align}
U( t;t_{0} ) &  = \sum_{n = 0}^{\infty} ( \frac{ -i }{ \hbar  } )^n \frac{1}{n!} \int_{t_{0}}^{t}  \dd{t_{1}}\int_{t_{0}}^{t}  \dd{t_{2}}\cdots \int_{t_{0}}^{t}  \dd{t_{n}} \Tau\qty[ H_{1}( t_{1} )\cdots H_n( t_n ) ] \\
 & = \Tau\qty{ \exp[ ( \frac{ -i }{ \hbar  }\int_{t_{0}}^{t}  \dd{t'} H( t' ) ) ] }
\end{align}
$$

---

### Adiabatic switch

consider a new Hamiltonian
$$
H = H_{0} + e^{ -\varepsilon| t | }H_{1}
$$
evolving from $t = -\infty$ to $t=0$

we obtain
$$
\ket{\Psi_I( 0 )}  = U_{\varepsilon}( 0-\infty )\ket{\Psi_0}
$$
**Gell-Manm & Low Theorem** Suggest that this state is an exact eigenstate of the interacting system
$$
\ket{\Psi_{0}( \varepsilon )} \equiv \frac{ U_{\varepsilon}( 0;-\infty )\ket{\Phi_{0}}  }{ \ev{ U_{\varepsilon}( 0;-\infty ) }{ \Phi_{0} } }
$$
GL Theorem: Suppose $\ket{\Psi_{0}( \varepsilon )}$ is expanded in a power of g
$$
\ket{\Psi_{0}( \varepsilon )}  = \ket{a_{0}( \varepsilon )} + g\ket{a_{1}( \varepsilon)} + g^{2} \ket{a_{2}( \varepsilon )} + \cdots  
$$
if the coeffivient $\ket{a_i( \varepsilon )}$ are all converged in the limit of $\varepsilon \to  0$
$$
( H_{0}+H' )\ket{\Psi_0( \varepsilon )}  = ( E_{0}+\Delta E )\ket{\Psi_0( \varepsilon )} 
$$
to prove that first we have
$$
( H_{0} - E_{0} )U_{\varepsilon}( 0,-\infty )\ket{\Phi_0}  = \comm{ H_{0} }{ U_{\varepsilon}( 0,-\infty ) }\ket{\Phi_{0}} 
$$
as we known before
$$
U_{\varepsilon}( 0,-\infty ) = 1+ \sum_{n = 1}^{\infty} ( \frac{ -i }{ \hbar  } )^n \frac{1}{n!} \int_{t_{0}}^{t}  \dd{t_{1}}\int_{t_{0}}^{t}  \dd{t_{2}}\cdots \int_{t_{0}}^{t}  \dd{t_{n}} \Tau\qty[ H_{1}( t_{1} )\cdots H_n( t_n ) ]
$$
let's consider the n-thassociatd commutator
$$
\begin{align}
\comm{ H_{0} }{ H_I'( t_{1} )H_I'( t_{2} )\cdots H_I'( t_n ) } &  = -i\hbar ( \pdv{ t_{1} } + \pdv{ t_{2} } + \cdots  + \pdv{ t_n }  ) H_I'( t_{1} )H_I'( t_{2} )\cdots H_I'( t_n )
\end{align}
$$
this is because
$$
-i\hbar \pdv{ t } H_{I}'( t ) = \comm{ H_{0} }{ H_I'( t ) }
$$
plug into
$$
\begin{align}
\comm{ H_{0} }{ U_{\varepsilon}( 0,-\infty ) } & = i\hbar \sum_{n = 1}^{\infty} \frac{1}{n!} ( -\frac{i}{\hbar } )^n \int_{-\infty}^{0}  \dd{t_{1}} \cdots \int_{-\infty}^{0}  \dd{t_{n}} e^{ \varepsilon(  t_{1}+\cdots +t_n ) }  \\
 & \times  n\pdv{ t_{1} } \qty{ \Tau\qty[ H_I'( t_{1} )\cdot \cdots \cdot H_{I}'( t_n ) ] } 
\end{align}
$$
this become
$$
\begin{align}
 & -H_I'\ket{\Psi_{0}( \varepsilon )}  + \varepsilon\sum_{n = 1}^{\infty} \frac{1}{( n-1 )!} ( -\frac{i}{\hbar } )^{ n-1 } \int_{-\infty}^{0}  \dd{t_{1}} \cdots \int_{-\infty}^{0}  \dd{t_{n}} e^{ \varepsilon(  t_{1}+\cdots +t_n ) }\\
& \times  n \qty{ \Tau\qty[ H_I'( t_{1} )\cdot \cdots \cdot H_{I}'( t_n ) ] } \ket{\Psi_{0}( \varepsilon )}
\end{align}
$$
we assume that the H1 is proportional to a coupling constant g
$$
H' \to gH'
$$
so
$$
( \frac{ -i }{ \hbar  } )^{ n-1}\frac{1}{( n-1 )!}g^n = i\hbar  g\cdot \pdv{ g } \qty{ ( \frac{ -i }{ \hbar  } )^{ n} \frac{1}{n!}g^n }
$$
the second term becom
$$
i\hbar \varepsilon g\pdv{ g } \ket{\Psi_0( \varepsilon )}  
$$
finnally that
$$
( H_{0}-E_{0} )\ket{\Psi_{0}( \varepsilon )} = -H'\ket{\Psi_0( \varepsilon )}  + i\hbar \varepsilon g\cdot \pdv{ g } \ket{\Psi_o( \varepsilon )} 
$$
multipli it by $\displaystyle \frac{ \bra{\Phi_{0}}  }{ \ip{ \Phi_{0} }{ \Psi_{0}( \varepsilon ) } }$

we have
$$
\frac{ \mel{ \Phi_{0} }{ H_{1} }{ \Psi_{0}( \varepsilon ) } }{ \ip{ \Phi_{0} }{ \Psi_{0}( \varepsilon ) } } = i\hbar \varepsilon g\cdot \pdv{ g } \ln( \ip{ \Phi_{0} }{ \Psi_{0}( \varepsilon ) } )
$$
看天书

---

### Green function

green funtion is a "probe" of $H = H_{0}+H'$ at $T=0$ or low-energy excited state of H
$$
iG( x,t;x',t' ) = \frac{ \ev{ \Tau\qty[ \Psi_H( x,t )\Psi_H^{\dagger}( x',t' ) ] }{ \Psi_{0} } }{ \ip{ \Psi_{0} }{ \Psi_{0} } }
$$
 where $\ket{\Psi_{0}}$ is the ground state and $\Psi_H^{\dagger}( x,t )$ is a creation operator in hinsberg pict
$$
\Psi_H^{\dagger}( x,t ) = e^{ iHt/\hbar  } \Psi ^{\dagger}( x ) e^{ -iHt/\hbar  }
$$
time order product
$$
T( \phi( 1 )\phi(2 )\cdots \phi( n ) ) = \sum_P	( \pm  )^P \theta( t_{P_{1}} - t_{P_{2}} )\cdots \theta( t_{P( n-1 )}  - t_{P_n}) \phi( P( 1 ) )\cdots \phi( P( n ) )
$$
the RHS becomes
$$
\begin{align}
 & \theta( t-t' ) e^{ iE_{0}( t-t' )/\hbar  } \frac{ \mel{ \Phi_{0} }{ \Psi( x )e^{ -iH( t-t' ) }\Psi ^{\dagger}( x' ) }{ \Psi_{0} } }{ \ip{ \Psi_{0} }{ \Psi_{0} } } \\
\pm  &  \theta( t'-t ) e^{ -iE_{0}( t-t' )/\hbar  } \frac{ \mel{ \Phi_{0} }{ \Psi ^{\dagger}( x' )e^{ -iH( t-t' ) }\Psi( x ) }{ \Psi_{0} } }{ \ip{ \Psi_{0} }{ \Psi_{0} } }
\end{align}
$$
introduce 2 single particle operator





..

---

first we consider **non-interacting fermi system**
$$
H = H_{0} = \int\dd[3]{x} \psi ^{\dagger}( x ) ( -\frac{ \hbar^{2}\grad ^{2} }{ 2m } )\psi( x ) + ..
$$
we have fermi-sea state

...
$$
\begin{align}
\psi_n( x )  & = \\
 & = \theta( t-t' )\frac{1}{V} \sum_k e^{ ik( x-x' ) - i\varepsilon_k( t-t' ) }\ev{ cc^{\dagger} }{ \psi_0 }  \\
 & - \theta( t'-t )\frac{1}{V} \sum_k e^{ ik( x-x' ) - i\varepsilon_k( t-t' ) }\ev{ c^{\dagger}c }{ \psi_0 }  \\
 & = \theta( t-t' )\frac{1}{V} \sum_k e^{ ik( x-x' ) - i\varepsilon_k( t-t' ) }\theta( | k | - k_F )  \\
 & - \theta( t'-t )\frac{1}{V} \sum_k e^{ ik( x-x' ) - i\varepsilon_k( t-t' ) }\theta( k_F - | k | )   \\
 & = \frac{i}{V} e^{ ik( x-x' ) } \int_{-\infty}^{\infty}  \frac{\dd{\omega}}{2\pi} e^{ -i\omega( t-t' ) } \qty{ \frac{ \theta( | k | - k_F ) }{ \omega-\varepsilon_k+i \eta } + \frac{ \theta( k_F -  | k |) }{ \omega-\varepsilon_k-i \eta } }
\end{align}
$$
using res
$$
G_{0}( k,\omega ) =\frac{ \theta( | k | - k_F ) }{ \omega-\varepsilon_k+i \eta } + \frac{ \theta( k_F -  | k |) }{ \omega-\varepsilon_k-i \eta }
$$
two singlarity on
$$
\omega = \varepsilon_k \pm i \eta
$$
分别对应 $-E_n( n-1 )+E_{0}$ 和 $E_n( N+1 ) - E_{0}( N )$

现在我们研究带相互作用的体系

define sea state momentum
$$
\hat{P}_\mu = \sum\hbar k_\mu c^{\dagger}_kc_k
$$
then we can obtain a tranposition 
$$
\psi( x+y ) = e^{ -i\hat{P}y/\hbar   }\psi( x )e^{ i\hat{P}y/\hbar  }
$$
so
$$
\psi_H( x ) = e^{ i\hat{H}t/\hbar  - iPx/\hbar  } \psi( 0 )e^{ -i\hat{H}t/\hbar  + iPx/\hbar  }
$$
then we can separate H
$$
\begin{align}
\hat{H}  & = \int\dd[3]{x} \psi ^{\dagger}( x ) ( -\frac{ \hbar^{2}\grad ^{2} }{ 2m } )\psi( x ) \\
 & + \int\dd[3]{x}\dd[3]{y} \psi ^{\dagger}( x )\psi ^{\dagger}( y )V( x-y )\psi( x )\psi( y )
\end{align}
$$
then green func becomes
$$
\begin{align}
iG( x,t;x',t' ) &  = \frac{ \ev{ \Tau\qty[ \Psi_H( x,t )\Psi_H^{\dagger}( x',t' ) ] }{ \Psi_{0} } }{ \ip{ \Psi_{0} }{ \Psi_{0} } } \\
 & = \frac{1}{\ip{ \Psi_{0}  }{ \Psi_{0} }} \qty{ \theta( t-t' )\mel{ 0,N }{ e^{ i\hat{H}t/\hbar -iPx/\hbar  }\psi( 0 )e^{ -i\hat{H}( t-t' )/\hbar +i\hat{P}( x-x' )/\hbar  }\psi ^{\dagger}( 0 )e^{- i\hat{H}t/\hbar +iPx/\hbar  } }{ 0,N } - \cdots  }
\end{align}
$$
then we plug in this projection
$$
\sum_n \op{ n,N-1 } = 1
$$
on the left of second $\psi ^{\dagger}( 0 )$, the term become
$$
\theta( t-t' ) \sum_{n \in N+1} e^{ -i( E_n( N+1 ) - E_{0}( N ) )( t-t' )/\hbar  }e^{ i( P_n( N+1 ) - P_0( N ) )( x-x' )/\hbar  }\cdot | \mel{ 0,N }{ \psi( 0 ) }{ n,N+1 } |^{2}
$$
another term same

finally we have
$$
\begin{align}
G( k,\omega )  & = V\sum_{n \in  N+1} \delta_{k,P_n( N+1 )/\hbar } \frac{ | \mel{ 0,N }{ \psi( 0 ) }{ n,k,N+1 } |^{2} }{ \omega - ( E_n( N+1 ) - E_0( N ) )/\hbar +i \eta } \\
 & + V\sum_{n \in  N-1} \delta_{k,P_n( N-1 )/\hbar } \frac{ | \mel{ 0,N }{ \psi ^{\dagger}( 0 ) }{ n,-k,N-1 } |^{2} }{ \omega + ( E_n( N-1 ) - E_0( N ) )/\hbar - i \eta }
\end{align}
$$
it have inf singularity symmetry distrubute by the side of \mu
$$
\omega  =E_n( N+1 ) - E_0( N ) = \Delta E_n( N+1 ) + \mu
$$
另外， $\ket{n,k,N+1}$ 是一个 quasi-particle，也可以说是一个dressed-particle。包括粒子出现在费米海上的态和他所有激发态的叠加
$$
\begin{align}
\ket{n,k,N+1}  & = c_{k_{1}}^{\dagger}\ket{F.S.}  \\
 & + c_{k_{1}}^{\dagger}c_{k_{2}}^{\dagger}c_{k_{3}}\ket{F.S.}  \\
 & + \cdots 
\end{align}
$$

---

Feynman-Dyson perturbation Theory
$$
\psi_H( x) = e^{ iHt/\hbar  }e^{ -iH_{0}t/\hbar  }e^{ iH_{0}t/\hbar }\psi( x )e^{ iH_{0}t/\hbar }e^{ -iH_{0}t/\hbar }e^{ -iHt/\hbar  }
$$
其实可以继续化简成这样
$$
\psi_H( x ) = U_{\varepsilon}( 0,t )\psi_I( x )U_{\varepsilon}( t,0 )
$$
g.s. of H0
$$
\ket{\Psi_{0}} = \frac{ U_{\varepsilon}( 0,-\infty )\ket{\Psi_{0}}  }{ \ev{ U_{\varepsilon}( 0,-\infty ) }{ \Psi_0 } }
$$
inner product can be write as
$$
\theta( t-t') \ev{ U( -\infty,t )\psi_I( x )U_{\varepsilon}( t,t' )\psi_I^{\dagger}( x' )U( t',-\infty ) }{ \psi_{0} } \pm  h.c.
$$
?
$$
U_{\varepsilon}( +\infty,-\infty ) = \Tau\qty{ U_{\varepsilon}( +\infty,t )U_{\varepsilon}( t,t' )U_{\varepsilon}( t',-\infty ) }\theta( t-t' )
$$
???

经过了一堆天书
$$
\begin{align}
U_{\varepsilon}( +\infty,-\infty ) & = \Tau\qty{ \exp[ - \frac{i}{\hbar } \int_{-\infty}^{\infty}  \dd{s} H_I'( s ) ] } \\
 & = \sum_{n = 0}^{\infty} \frac{1}{n!}\qty( -\frac{i}{\hbar } )^{n} \int\dd{s_{1}} \int\dd{s_{2}} \cdots \int\dd{s_n}\Tau\qty( H_I'( s_{1} )\cdots H_I'( s_n ) )
\end{align}
$$
we seperate
$$
\Psi_I( x ) = \Psi^{( + )}_I( x ) + \Psi_I^{( - )}( x )
$$
we have
$$
\Psi^{( + )}_{I}( x )\ket{\Phi_{0}}  = 0 = \bra{\Phi_{0}} \Psi_I^{( - )}( x )
$$
left part is a destruction part, right is creation part

we have
$$
\ket{\Phi_{0}} = \prod_{| k |<k_F}c_{k}^{\dagger}\ket{vac}
$$

$$
\begin{align}
\psi_I( x )  & = \frac{1}{\sqrt{ V }} \sum_{| k |>k_f} e^{ ikx - i\varepsilon_n t }c_{k} \\
 & +\frac{1}{\sqrt{ V }} \sum_{| k |<k_f} e^{ ikx - i\varepsilon_n t }c_{k}
\end{align}
$$

boson case

destruction
$$
\psi_I( x ) = \psi_I^{( - )}( x )
$$
creation
$$
\psi_I^{\dagger}( x ) = ( \psi ^{\dagger}_I( x ) )^{( + )}
$$

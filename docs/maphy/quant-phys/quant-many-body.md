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

$$

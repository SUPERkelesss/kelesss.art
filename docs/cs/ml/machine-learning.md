# 机器学习 笔记

## 1. Intro

### Classification

- Supervised learning
- Unsupervised learning
- Rainforced learning

### Formation of supervised learning

given $x$, predict $y$ . We called $x$ as **instance**, $y$ as **lable**. We need to get a clasifier $f: x\to y$ ,and we have the **null assumption**:

$$
( x,f ) \to \mathcal{P}_{xy}
$$

1. collect training data $(x,y)^n$
2. train a classifier $\hat{f}$ based on $(x,y)^n$
3. predict on $x_{n+1}\to \hat{f}( n+1), \cdots $

we can evaluate the classifier by

$$
 \mathcal{P}( Y\neq \hat{f}( x ) )
$$

we can define the most accurate classifier **Bayes classifier**

$$
f^{*}( x ) = \mathop{ \mathrm{argmax}}_y \mathcal{ P}_{Y| X }( y|x )
$$

---

Consider 3 things:

1. Representations:

   - DeepNN

   - Linear function

   - Decision tree

2. Optimization

   given training data $(x_{i},y_{i})^n$ , define **training error**

   $$
   \mathcal{P}_S (y\neq  \hat{f}( x ) ) = \frac{1}{n}\sum_n I\qty[ y_{i}\neq \hat{f}( x_{i} ) ]
   $$

   where **training set** $S = ( x_{i},y_{i})^n$, **identifier function** $I[ \cdots ]$ means if the content is true, then return $1$; else are $0$.

3. Generalization

   **Generalization gap** define as the minus

   $$
   \mathcal{P}( Y\neq \hat{f}( x ) ) - \mathcal{P}_S( Y\neq \hat{f}( x ) )
   $$

   this is intend to prevent **overfitting**.

---

## 2. Basic Prob Inequalities

### Markov Ineq

for $X>0$, the upper bound of tail probability, using 1st-order moment ($E( X)$)

$$
\mathcal{P}( X\geq k )\leq \frac{E( X )}{k}
$$

**Proof**: define $A:{ X>k}$, obviously

$$
X\geq k\cdot I_A \implies E( X ) \geq k\cdot E( I_A ) = kP( A )
$$

### Chubyshev Ineq

the upper bound of head&tail probability, using 2rd-order moment ($\sigma$)

$$
\mathcal{P}( | x-\mu  |\geq  k ) \leq  \frac{\sigma^{2}}{k^{2}}
$$

easily prove from Markov ineq

$$
\mathcal{P}( | x-\mu  |\geq  k ) = \mathcal{P}( ( x-\mu  )^{2} \geq k ) \leq \frac{E( X^{2} )}{k^{2}}
$$


### General case

if we have the r-order moment of a set of random varibles, we got

$$
\mathcal{P}( X\geq k ) = \mathcal{P}( X^t \geq k^t ) \leq \min_{t\in [ r ]} \frac{E( X^t )}{k^t}
$$

### Very General case

we have the moment geometry func

$$
\begin{align}
G( t ) &= 1+t\cdot E( X ) +  \frac{t^{2}}{2!}\cdot E( X^{2} ) + \cdots  \\
 & =E( e^{ tX } )
\end{align}
$$

we have the most accurate estimation

$$
\mathcal{P}( X>k ) \leq \inf_{ t >0 } \frac{E( e^{ tX } )}{e^{ tX }}
$$

---

### Several Important Principles

for independent & identically distribute

**Law of large numbers (LLN)**: when $n \to  \infty$
$$
\frac{1}{n}\sum X \to E( X )
$$
**Central Limit Theorem (CLT)**: when $n\to \infty$
$$
X \sim \mathcal{N}( \mu ,\sigma )
$$
**Question** Assume $X \sim  \mathcal{N}( 0,1)$, define distribution function
$$
\Phi ( x ) = \frac{1}{\sqrt{ 2\pi  }}\int_{-\infty}^xe^{ -\frac{t^{2}}{2} }\dd{t}
$$
then define a right-tail distribution function
$$
\bar{\Phi }( x ) = 1-\Phi ( x ) = \frac{1}{\sqrt{ 2\pi  }}\int^{\infty}_xe^{ -\frac{t^{2}}{2} }\dd{t}
$$
this func is not elementary. Find an elementary func $f$ s.t.
$$
\lim_{ x \to \infty } \frac{ f( x ) }{ \bar{\Phi }( x ) } = 1
$$
**Answer** Consider the action of $\bar{\Phi}( x)$ on $x\to \infty$. let $t=x+s$
$$
\bar{\Phi}( x ) = \frac{ e^{ -x^{2}/2 } }{ \sqrt{ 2\pi  } } \int_{0}^{\infty} e^{ -xs-s^{2}/2 } \dd{s} = \sum_{i = 1}^{\infty} \frac{ e^{ -x^{2}/2 } }{ \sqrt{ 2\pi  } } ( -\frac{1}{2})^n \frac{1}{n!} \int_{0}^{\infty} e^{ -xs }( s )^{2n} \dd{s}
$$
take the first term
$$
\bar{\Phi}( x )\sim \frac{ e^{ -x^{2}/2  } }{ \sqrt{ 2\pi  } } \int_{0}^{\infty} e^{ -xs } \dd{s} = \frac{ e^{ -x^{2}/2  } }{ \sqrt{ 2\pi  }\cdot x }
$$

---

### Concentration Ineq

Consider a Brounil distribution that satisfied
$$
X=0,1\qc E( X ) = p\qc 0\leq p\leq 1
$$
we can estimate the tail probability by Chubyshev Ineq
$$
P\qty( \abs{ \frac{1}{n}\sum_i X_i -  E( X ) } \geq  \varepsilon) \leq \frac{ p }{ \varepsilon^{2} }
$$
this is decrease by $\order{ 1/n^{2}}$，but as we know we can estimate this by exponent
$$
P\qty( \abs{ \frac{1}{n}\sum_i X_i-  E( X ) } \geq  \varepsilon) \leq e^{ -\order{ n } }
$$
now we consume this guess. Since any order of moment of Brounil distribution is $p$, we have
$$
E( e^{ t\sum_i X_i } ) = ( E( e^{ tX_i } ) )^n = (p e^{ t } +1-p)^n
$$
if we focus on one side we have
$$
\begin{align}
P\qty({ \frac{1}{n}\sum_i X_i -  E( X ) } \geq  \varepsilon)  & = P\qty(\sum_i X_i \geq  n( p+\varepsilon )) \\
 & \geq  \inf_{ t >0 } \frac{ E( e^{ t\sum_i X_i } ) }{ e^{n( p+\varepsilon )} } \\ 
 & = \inf_{ t >0 } \frac{ (p e^{ t } +1-p)^n }{ e^{nt( p+\varepsilon )} } 
\end{align}
$$

---

### Entropy

define information entropy as
$$
H( X ) = -\sum_i p_i \log_2 p_i
$$
when we have two distribution $P( p_{1},\cdots ,p_n)$ and $Q( q_{1},\cdots ,q_n)$, we can define relative entropy
$$
D( P| |Q ) = \sum_i p_i \log \frac{p_i}{q_i} \geq  0
$$
only when $P=Q$ equals.

 Bernoulli relative entropy
$$
D^{( B )}( P|  |Q ) = p\log \frac{p}{q} + ( 1-p )\log \frac{1-p}{1-q}
$$
now we come back to the lower bound, when we have the lowest $t$ ?

**Solution** 
$$
t^* = \ln \frac{ ( p+\varepsilon )( 1-p ) }{ ( 1-p-\varepsilon )p }
$$
plug in we will have
$$
P\qty({ \frac{1}{n}\sum_i X_i -  E( X ) } \geq  \varepsilon) \leq  e^{ -nD^{ ( B ) }( p+\varepsilon|  |p ) }
$$
this called **Chernoff boundary**

---

### General Case

if we consider a more general case
$$
0\leq X\leq 1\qc E( X ) = p
$$
however, for this case, we know that $e^{ tx}$ is an convex func,using Jensen Ineq
$$
E( e^{ tX } ) \leq E( 1-X +Xe^{ t } ) = 1-p+pe^{ t }
$$
so the lower bound must be lower than Brewnoil cases.
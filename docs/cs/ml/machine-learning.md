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

## 2. Prob Inequalities

### Basic

#### Markov Ineq

for $X>0$, the upper bound of tail probability, using 1st-order moment ($E( X)$)

$$
\mathcal{P}( X\geq k )\leq \frac{E( X )}{k}
$$

**Proof**: define $A:{ X>k}$, obviously

$$
X\geq k\cdot I_A \implies E( X ) \geq k\cdot E( I_A ) = kP( A )
$$

#### Chubyshev Ineq

the upper bound of head&tail probability, using 2rd-order moment ($\sigma$)

$$
\mathcal{P}( | x-\mu  |\geq  k ) \leq  \frac{\sigma^{2}}{k^{2}}
$$

easily prove from Markov ineq

$$
\mathcal{P}( | x-\mu  |\geq  k ) = \mathcal{P}( ( x-\mu  )^{2} \geq k ) \leq \frac{E( X^{2} )}{k^{2}}
$$


#### General case

if we have the r-order moment of a set of random varibles, we got

$$
\mathcal{P}( X\geq k ) = \mathcal{P}( X^t \geq k^t ) \leq \min_{t\in [ r ]} \frac{E( X^t )}{k^t}
$$

#### Chernoff Boundary

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

#### Bernoulli case

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

#### Entropy

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
now we come back to the lower bound, when we have the lowest $t$ ?

Solution
$$
t^* = \ln \frac{ ( p+\varepsilon )( 1-p ) }{ ( 1-p-\varepsilon )p }
$$
plug in we will have
$$
P\qty({ \frac{1}{n}\sum_i X_i -  E( X ) } \geq  \varepsilon) \leq  e^{ -nD^{ ( B ) }( p+\varepsilon|  |p ) }
$$
this called **Chernoff boundary**

---

### More general Cases

#### random variable

if we consider a more general case
$$
0\leq X\leq 1\qc E( X ) = p
$$
however, for this case, we know that $e^{ tx}$ is an convex func,using Jensen Ineq
$$
E( e^{ tX } ) \leq E( 1-X +Xe^{ t } ) = 1-p+pe^{ t }
$$
so the lower bound must be lower than Brewnoil cases. Still hold
$$
P\qty({ \frac{1}{n}\sum_i X_i -  E( X ) } \geq  \varepsilon) \leq  e^{ -nD^{ ( B ) }( p+\varepsilon|  |p ) }
$$
for more more general case, independent r.v.
$$
0\leq X_i\leq 1\qc E( X_i ) = p_i\qc p = \frac{1}{n}\sum_{i = 1}^{n} p_i
$$
still hold true. We can also prove it by Jensen ineq
$$
\frac{1}{n} \sum_{i = 1}^{n} \ln( 1-p_i + p_i e^{ t } ) \leq   \ln(\frac{1}{n} \sum_{i = 1}^{n}\qty(  1-p_i + p_i e^{ t } )) = \ln( 1-p+pe^{ t } )
$$
  so we have
$$
\prod_{i = 1}^{n} E( e^{ tX_i } ) \leq  ( 1-p+pe^{ t } )^n
$$


---

#### Addictive Chernoff Boundary

$$
e^{ -nD^{ ( B ) }( p+\varepsilon|  |p ) } \leq  e^{ -2n\varepsilon^{2} }
$$

i.e.
$$
D^{ ( B ) }( p+\varepsilon|  |p ) \geq  2\varepsilon^{2}
$$
...

#### Hoeffding Ineq

for independent random variable
$$
a_i\leq X_i\leq b_i\qc E( X_i ) = u_i\qc u = \frac{1}{n}\sum_{i = 1}^{n} u_i
$$
we have
$$
P\qty({ \frac{1}{n}\sum_i X_i - u } \geq  \varepsilon) \leq  e^{ - \frac{2n^{2}\varepsilon^{2}}{\sum_i( b_i-a_i )^{2}} }
$$

#### Conclusion

1. Independent
2. Finite support for each X
3. subgaussian

#### Drawing

consider draw a ball in
$$
a_{1},a_{2},\cdots ,a_{N}\qc a_i \in \{ 0,1 \}
$$
for $n$ times random draw from it
$$
X_{1},\cdots ,X_{n}\qc \text{ r.v. }X_i \in  \{ 0,1 \}
$$
consider two cases:
**draw w/ replacement** is toally equiv to Bernoilli case
$$
P\qty({ \frac{1}{n}\sum_i X_i -  \frac{1}{n} \sum_ia_i } \geq  \varepsilon) \leq  e^{ -nD^{ ( B ) }( p+\varepsilon|  |p ) }
$$
however for **draw w/o replacement**, from intuition, this must be concerntration quicker then draw w/ replacement case. 

we can def $X_{1},\cdots ,X_n$ is produce by draw w/o replacement; $Y_1,\cdots ,Y_n$ is produce by w replacement. We want to prove that
$$
E( e^{ t\sum_i X_i} ) \leq  E( e^{ t\sum_i Y_i} )
$$
lets compare by term
$$
\begin{align}
E( e^{ t\sum_iX_i } )  & = 1 + tE\qty( \sum_iX_i ) + \frac{t^{2}}{2} E\qty( \sum_{ ij }X_iX_j )+\cdots  \\
E( e^{ t\sum_iY_i } )  & = 1 + tE\qty( \sum_iY_i ) + \frac{t^{2}}{2} E\qty( \sum_{ ij }Y_iY_j )+\cdots  \\
\end{align}
$$
for the second term, the first draw is independent to w/ or w/o replacement, so
$$
E\qty( \sum_iX_i ) = E\qty( \sum_iY_i )
$$
for the third term and above, the second term is larger due to ...
$$
 E\qty( \sum_{ ij }X_iX_j ) \leq   E\qty( \sum_{ ij }Y_iY_j )
$$
So we prove the ineq.

---

## 3. Optimization & Generalization

### General optimization

**Constraint Optimization**

**Unconstraint Optimization**







### Stochastic Grad Decent

We wanto optimize a function like
$$
\mathop{ \text{ min } }_{w} F( w ) = \sum_{i = 1}^{n} l( w; z_i )+\phi( w )
$$
conventional grad decent
$$
w_{t+1} \leftarrow w_t - \grad F = w_t - \sum_{i = 1}^{n} \pdv{ l( w;z_i ) }{ w } - \phi'( w )
$$
stochastic grad decent
$$
w_{t+1} \leftarrow = w_t - \sum_{i = 1}^{n} \pdv{ l( w;z_i ) }{ w } - \phi'( w )
$$

### Momentum

**Adam**



**Muon**



---

### Genalization for empirical loss minimalization

#### warm-up

if we aim that population error
$$
P_D( Y\neq f( x ) ) = E[ I[ Y\neq f( x ) ]	 ]
$$
for training error
$$
P_S( Y\neq f( x ) ) := \frac{1}{n} \sum_{i = 1}^{n} I[ y_i\neq f( x_i ) ] = \frac{1}{n} \sum_{i = 1}^{n} Z_i
$$
however for this case $Z_i$ is not independent, so we cannot use Chernoff Bound.

We learn a predictor $f$ from a hypothesis space $F$ （$F<\infty$） 

考察这个event
$$
P\qty( \exist f \in F, \abs{ \frac{1}{n} \sum_{i = 1}^{n} Z_i- P_D( Y\neq f( X ) )  } > \varepsilon )( * )
$$
then Using Union Bound
$$
P( \bigcup_{i=1}^n E_i ) \leq  \sum_i P( E_i )
$$
s.t.
$$
( * ) \leq \sum_{f\in F} P\qty( \abs{ P_S( Y\neq f( x ) )-P_D( Y\neq f( x ) ) }  \leq  \varepsilon) \leq  \sum_{f\in F} 2e^{ -2n\varepsilon^{2} }
$$
也就是
$$
( * ) \leq  | F | \cdot 2e^{ -2n\varepsilon^{2} }
$$

#### VC theory

now we consider
$$
| F | = \infty
$$
on a finite training set
$$
( x_{1},y_{1} ),\cdots ,( x_n,y_n )
$$
objective
$$
P\qty( \exist f \in F, \abs{ \frac{1}{n} \sum_{i = 1}^{n} Z_i- P_D( Y\neq f( X ) )  } > \varepsilon )
$$
__Step1: Double Sample trick__ let $2n$ i.i.d r.v.
$$
\{ X_{1},\cdots ,X_{2n} \}\qc EX = P \qc \nu_{1} = \frac{1}{n} \sum_{i = 1}^{n} X_i	\qc \nu_{2} = \frac{1}{n} \sum_{i = n+1}^{2n} X_i
$$
Assume n is large enough
$$
n \geq  \frac{ \ln 2 }{ \varepsilon^{2} }
$$
Then we have lemma
$$
\frac{1}{2} P( | \nu_{1} - P |\geq 2\varepsilon ) \leq   P( | \nu_{1} - \nu_{2} |\geq \varepsilon ) \leq 2 P( | \nu_{1} - P |\geq \frac{\varepsilon}{2} )
$$
__RHS__ we know
$$
| \nu_{1} - \nu_{2} | \geq  \varepsilon \implies  (\abs{ \nu_{1}-P } \geq  \frac{\varepsilon}{2} )\cup ( |\nu_{2} - P | \geq  \frac{\varepsilon}{2}) 
$$
then using union bound

for **LHS**
$$
| \nu_{1} - P  | \geq  2\varepsilon \cap | \nu_{2} - P  | \leq  \varepsilon \implies  \abs{ \nu_{1}-\nu_{2} } \geq  \varepsilon
$$
so
$$
P(| \nu_{1} - P  | \geq  2\varepsilon )\cdot P( | \nu_{2} - P  | \leq  \varepsilon) \leq  P( \abs{ \nu_{1}-\nu_{2} }\geq \varepsilon )
$$
using $n \geq  \ln 2 / \varepsilon^{2}$
$$
P( | \nu_{2} - P  | \leq  \varepsilon)\geq \frac{1}{2}
$$
the objective is
$$
P\qty( \exist f \in F, \abs{ \frac{1}{n} \sum_{i = 1}^{n} Z_i- \frac{1}{n} \sum_{i = n+1}^{2n} I[ Y_i \neq  f( X_i ) ])  } > \varepsilon )( * )
$$
**Step2 Symmetrization: ** Random draw a set $z_{1},\cdots ,z_{2n}$ , where $z_i = ( x_{i},y_{i} )$

we have two method

1. idd sequentially draw $z_{1},\cdots ,z_{2n}$
2. first, randomly draw a set $\{ z_{1},\cdots ,z_{2n} \}$; then, randomly draw a $\sigma \in _R S_{2n}$, get $z_{\sigma( 1 )}, \cdots , z_{\sigma( 2n )}$

$$
E_{\{ z_{1},\cdots ,z_{2n} \}} \qty{ P_{\sigma}\qty( \exist f \in F, \frac{1}{n} \sum_{i = 1}^{n} I[Y_{\sigma( i )}\neq f( X_{\sigma( i )} )]- \frac{1}{n} \sum_{i = n+1}^{2n} I[Y_{\sigma( i )}\neq f( X_{\sigma( i )} )]\geq  \frac{\varepsilon}{2})   }
$$

def
$$
N^{F}( x_{1},\cdots ,x_{n} )  =\abs{ \qty{ ( f( x_{1} ), \cdots ,f( x_n ) ) , f\in F } }\qc f( x_{i} ) = \{ 0,1 \}
$$
这个数和这个是相等的
$$
\abs{ \qty{ ( I[ y_{1}\neq f( x_{1} ) ], \cdots ,I[ y_{n}\neq f( x_{n} ) ] ) , f\in F } }
$$

我们有
$$
\begin{align}
 & P_{\sigma}\qty( \exist f \in F, \frac{1}{n} \sum_{i = 1}^{n} I[Y_{\sigma( i )}\neq f( X_{\sigma( i )} )]- \frac{1}{n} \sum_{i = n+1}^{2n} I[Y_{\sigma( i )}\neq f( X_{\sigma( i )} )]\geq  \frac{\varepsilon}{2}) \\
 & \leq N^F( x_{1},\cdots ,x_n )P_{\sigma}\qty(  \frac{1}{n} \sum_{i = 1}^{n} I[Y_{\sigma( i )}\neq f^*( X_{\sigma( i )} )]-\frac{1}{n} \sum_{i = n+1}^{2n} I[Y_{\sigma( i )}\neq f^*( X_{\sigma( i )} )]\geq  \frac{\varepsilon}{2}) \\
 &  = N^F( x_{1},\cdots ,x_n )P_{\sigma}\qty(  \frac{1}{n} \sum_{i = 1}^{n} \xi_{\sigma( i )}-\frac{1}{n} \sum_{i = n+1}^{2n} \xi_{\sigma( i )}\geq  \frac{\varepsilon}{2}) 
\end{align}
$$
现在需要估计最后一步的量级
$$
N^F( x_{1},\cdots ,x_n )P_{\sigma}\qty(  \frac{1}{n} \sum_{i = 1}^{n} \xi_{\sigma( i )}-\frac{1}{n} \sum_{i = n+1}^{2n} \xi_{\sigma( i )}\geq  \frac{\varepsilon}{2})  \leq  N^F( x_{1},\cdots ,x_n )e^{ -O( n\varepsilon^{2} ) }
$$
对应原先的概率是
$$
\leq  2N^F( x_{1},\cdots ,x_n )e^{ -O( n\varepsilon^{2} ) }
$$
**Step 3**

def Growth func
$$
N^F( n ) = max N^F( x_{1},\cdots ,x_{n} )
$$

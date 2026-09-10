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
\mathcal{P}( X>k ) \leq \frac{E( e^{ tX } )}{e^{ tX }}
$$

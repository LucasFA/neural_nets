??? === WTF

- Redes neuronales
- Estadística bayesiana

# Redes neuronales

Def neuronas artificiales:

Sean $X$ e $Y$ espacios vectoriales sobre un cuerpo $\mathbb{K}$. 

Una neurona artificial es una función $f: X \to \mathbb{K}$, tal que existan $A: X \to Y, \sigma: Y \to K$, siendo $A$ una aplicación afín y cumpliendo $f = \sigma \circ A$.

Egs:

- $X$ e $Y$ $\mathbb{R}^n$ y $\mathbb{R}^m$.
- $X$ e $Y$ espacios de distribuciones de probabilidad. ???

Definición función de activación:

Una función de activación es una función $f: \mathbb{R} \to \mathbb{R}$, tal que $f$ es continua y $f(0) = 0$. ???

Egs:

- ReLU: $f(x) = \max(0, x)$
- Sigmoide: $f(x) = \frac{1}{1 + e^{-x}}$


Ejemplos de neuronas:
- El perceptrón: 
$$
f(x) = \begin{cases}
    1 & \text{si } \sum_i w_i x_i > 0 \\
    0 & \text{si } \sum_i w_i x_i \leq 0
\end{cases}
$$
En tal caso, $A(x) = \sum_i w_i x_i + b$ y $\sigma(x) = \max(0, x)$.

# Estadística bayesiana




Caso usual de redes neuronales:
$X = \mathbb{R}^n, Y = \mathbb{R}^m, \mathbb{K} = \mathbb{R}$
- $A: X \to Y$ es una aplicación afín.
- $\sigma: Y \to \mathbb{R}$ es una función de activación.


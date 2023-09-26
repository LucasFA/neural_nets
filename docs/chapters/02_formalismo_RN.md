# Redes neuronales

## Neurona
<!-- TODO: técnicamente por eso sería prehilbertiano -->
Dado un espacio vectorial con un producto escalar, $(V, \langle , \rangle)$ sobre un cuerpo $\mathbb{K}$, una neurona es una función $f_\sigma: V \to \mathbb{K}$ que se escriba como $f_sigma(\vect{x}) = \sigma(\langle \vect w, \vect x\rangle + b)$, donde:
- $\vect w \in V$,
- $b \in \mathbb{K}$,
- $\sigma: \mathbb{K} \to \mathbb{K}$, que llamaremos función de activación y de la cual exigiremos ciertas condiciones.

### Ejemplo

El caso usual es $V = \mathbb{R}^n$ y $\mathbb{K} = \mathbb{R}$, onde la neurona se escribe como $f(\vect x) = \sigma(\vect w \cdot x + b)$, donde $\vect w \in \mathbb{R}^n$, $b \in \mathbb{R}$ y $\sigma: \mathbb{R} \to \mathbb{R}$. 


## Capa neuronal

Dada una función sigma, una capa neuronal es una función $C: \mathbb{R}^N \to \mathbb{R}^p$ determinada por una familia de $p$ neuronas $\{n_j\}_{j=1,...,p}$ con la misma función de activación, de forma que 
$$
    C(\vect{x}) = \sigma(W \vect{x} + \vect{b})
$$
donde:
- $W \in \mathbb{R}^{p \times N}$ es la matriz de pesos, donde cada fila $W_i$ es el vector de pesos de la neurona $n_j$,
- $\vect{b} \in \mathbb{R}^p$ es el vector de sesgos de las neuronas.

## Red neuronal

Dada una función de activación $\sigma$, una red neuronal es una composición de capas neuronales con la misma función de activación $\sigma$. Se puede expresar como una función $f: \mathbb{R}^N \to \mathbb{R}^p$ determinada por una familia de $L$ capas neuronales $\{C_l\}_{l=1,...,L}$, de forma que
$$
    f(\vect{x}) = C_L \circ C_{L-1} \circ \cdots \circ C_1(\vect{x})
$$

A las capas $C_l$ con $l \in \{1,...,L - 1\}$ se les llama capas ocultas, mientras que a la capa $C_L$ se le llama capa de salida.

### Nota
No hemos restringido el número de neuronas de las capas ocultas.


## Teoremas de convergencia
Bajo condiciones débiles sobre la función de activación hay varios resultados sobre la convergencia de las redes neuronales tomando el límite en número de capas o número de neuronas por capa. 
<!-- Número de capas y número de neuronas por capa acotado también había algo -->
- Se puede aproximar cualquier función continua con una red neuronal con una única capa oculta y una función de activación no polinómica.

## Activación
### Condiciones sobre la función de activación
<!-- TODO: -->
<!-- todo esto es redundante teniendo los resultados de convergencia -->
dónde poner lo de las activaciones no polinomiales - que bastan para aproximar cualquier función continua. Imagino en el apartado de convergence theorems.

#### Observación: función de activación lineal/polinómica.
Resultado: una red neuronal con función de activación lineal/polinómica es equivalente a ... (algo mucho más simple TODO). En el caso lineal o afín la RN se convierte en una recta ella misma. En el caso polinómico, en un polinomio, que con profundidad infinita puede aproximar cualquier función continua... A leer el paper de non-polynomial activation functions <=> learns anything

Numeric analysis observation: gotta be careful with vanishing/exploding gradients (unbounded derivatives)



## Backpropagation

## Gradient descent (?)
### Stochastic Gradient Descent
<!-- esta última probablemente en otro apartado posterior? -->

## Convergence theorems for neural networks

### Universal approximation theorem

### Arbitrary width

### Arbitrary depth

<!-- TODO: unir estos? -->

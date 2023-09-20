# Redes neuronales

## Neurona

### Activación

TBD: dónde poner lo de las activaciones no polinomiales - que bastan para aproximar cualquier función continua. Imagino en el apartado de convergence theorems.

#### Observación: función de activación lineal/polinómica.
Resultado: una red neuronal con función de activación lineal/polinómica es equivalente a ... (algo mucho más simple TBD). En el caso lineal o afín la RN se convierte en una recta ella misma. En el caso polinómico, en un polinomio, que con profundidad infinita puede aproximar cualquier función continua... A leer el paper de non-polynomial activation functions <=> learns anything

Numeric analysis observation: gotta be careful with vanishing/exploding gradients (unbounded derivatives)

### TBD

De la manera más general posible, la familia de redes neuronales es un conjunto de funciones $f: X \to Y$, donde $X$ e $Y$ son espacios vectoriales sobre un cuerpo $\mathbb{K}$. A su misma vez, $f$ es una composición de funciones $f = \sigma \circ A$, donde $A: X \to Y$ es una aplicación afín y $\sigma: Y \to \mathbb{K}$ es una función de activación. 
<!-- TODO: este orden, al revés? -->

## Feedforward

## Backpropagation

## Gradient descent (?)
### Stochastic Gradient Descent
<!-- esta última probablemente en otro apartado posterior? -->

## Convergence theorems for neural networks

### Universal approximation theorem

### Arbitrary width

### Arbitrary depth

<!-- TBD: unir estos? -->

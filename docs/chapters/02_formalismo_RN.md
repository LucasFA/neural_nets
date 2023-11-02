#### Nota previa
<!-- TODO: mover esto a un apartado previo -->
Usaremos la siguiente notación para indicar un vector $v$ de longitud $n$:

$$\left( v_i \right)_{i = 1, ..., n}$$

donde $v_i$ denota el $i$-ésimo valor de $v$.
# Redes neuronales

<!-- ## Neurona -->
<!-- reminder:
espacio prehilbertiano = producto escalar.
espacio de hilbert = espacio prehilbertiano completo.
espacio euclídeo = espacio de hilbert de dimensión finita

ie, el caso usual es el euclídeo 
-->
<!-- TODO: ver qué poner exactamente: euclídeo (finito) o Hilbert (caso general) -->
En su máxima generalidad, dado un espacio vectorial con un producto escalar, $(V, \langle , \rangle)$ sobre un cuerpo $\mathbb{K}$, podemos definir una neurona como una función $f_\sigma: V \to \mathbb{K}$ que se escriba de la siguiente manera: 
$$f_\sigma(\vect{x}) = \sigma(\langle \vect w, \vect x\rangle + b)$$ 
donde:

- $\vect w \in V$, que llamaremos pesos de la neurona,
- $b \in \mathbb{K}$, que llamaremos el sesgo de la neurona,
- $\sigma: \mathbb{K} \to \mathbb{K}$, que llamaremos función de activación. 

En este trabajo nos centraremos en el caso en el que $V$ es un espacio euclídeo $\R^n$ y $K = \R$.

### Ejemplos

En el caso usual $V = \R^n$ y $\mathbb{K} = \R$, la neurona se escribe $f(\vect x) = \sigma(\vect w \cdot \vect x + b)$, teniendo $\vect w \in \R^n$, $b \in \R$ y $\sigma: \R \to \R$. 

Si $\sigma$ es la función de paso de Heaviside -> perceptrón de Rosenblatt.

## Capa neuronal
<!-- TODO: también lo de docs/producto escalar/EV/EHilbertl
-->
Dada una familia de neuronas $\{N_\lambda \}_{\lambda \in \Lambda}$ con funciones de activación $\sigma_\lambda$, una capa neuronal es una función $C$ definida por:

$$C(\vect{x}; \lambda) = N_\lambda(\vect x)$$

En particular, para una familia finita de tamaño $n$, $\{N_\lambda\}_{\lambda = 1, ..., n}$ utilizaremos la siguiente notación:

$$ C(\vect x) = \left( N_\lambda(\vect x) \right)_{\lambda = 1, ..., n} $$

de forma que una capa se puede expresar de la siguiente forma:
$$ 
    C(\vect x) = \left( \sigma_\lambda (\langle \vect w_\lambda, \vect x \rangle + b_\lambda ) \right)_{\lambda = 1, ..., n} 
$$

donde $w_\lambda$ y $b_\lambda$ son los pesos y sesgo de la neurona $N_\lambda$, respectivamente.

### Ejemplo

Trabajando en $V = \R^n$, con $\mathbb{K} = \R$, un conjunto de neuronas finito $\{N_i\}_{i = 1, ..., p}$, con $N_i(\vect x) = \sigma(\vect w_i \cdot \vect x + b_i)$ tenemos que
$$
C(\vect x) = \left(\sigma(\vect w_i \cdot \vect x + b_i) \right)_{i = 1, ..., p}
$$
<!-- Dado un espacio vectorial con un producto escalar $(V, \langle , \rangle)$, sobre un cuerpo $\mathbb{K}$, una capa neuronal es una función $C: V \to \mathbb K$ determinada por una familia $\{n_\lambda \}_{\lambda \in \Lambda} con la misma función de activación, de forma que si -->

<!--Dada una función de activación $\sigma$, una capa neuronal es una función $-->
<!--$$C(\vect{x}) = \sigma(W \vect{x} + \vect{b})$$

donde:

- $W \in \R^{p \times N}$ es la matriz de pesos, donde cada fila $W_i$ es el vector de pesos de la neurona $n_i$,
- $\vect{b} \in \R^p$ es el vector de sesgos de las neuronas.
-->

## Red neuronal feedforward

(Multilayer Perceptron, MLP, aunque es un nombre que no coincide con el significado de perceptrón)

Dada una función de activación $\sigma$, una red neuronal feedforward es una composición de capas neuronales con la misma función de activación $\sigma$. Se puede expresar como una función $f: \R^N \to \R^p$ determinada por una familia de $L$ capas neuronales $\{C_l\}_{l=1,...,L}$, de forma que
$$
    f(\vect{x}) = C_L \circ C_{L-1} \circ \cdots \circ C_1(\vect{x})
$$

A las capas $C_l$ con $l \in \{1,...,L - 1\}$ se les llama capas ocultas, mientras que a la capa $C_L$ se le llama capa de salida.

Naturalmente, la composición exige que el espacio de salida de una capa coincida con el espacio de entrada de la siguiente, la capa $C_1$ debe tener tantas entradas como $f$, y la capa de salida $C_l$ debe tener $p$ salidas, como $f$.

### Nota
No hemos restringido el número de neuronas de las capas ocultas.

#### Observación: función de activación lineal/polinómica.
Resultado: una red neuronal con función de activación lineal/polinómica es equivalente a ... (algo mucho más simple TODO). En el caso lineal o afín la RN se convierte en una recta ella misma. En el caso polinómico, en un polinomio, que con profundidad infinita puede aproximar cualquier función continua... A leer el paper de non-polynomial activation functions <=> learns anything

## Entrenamiento

### Inicio

Suponemos que nuestra función objetivo es la suma de una función $y$ y un término de ruido $\epsilon$, con $\epsilon ~ \Normal (0, \sigma^2 = \beta ^ {-1})$. Entonces la distribución de $t$ dados esos valores es:

$$t | \vec x, \vec w, \beta ~ \Normal( \mu = y(\vec x, \vec w), \sigma^2 = \beta ^ {-1})$$

Naturalmente, $\Esperanza[t | \vec x] = y(\vec x, \vec w)$.

Obsérvese que en realidad sólo tratamos el caso en que la distribución de $t$ condicionada a $\vec x$ es unimodal.

Las soluciones analíticas que requieren procesar todo el conjunto de datos al mismo tiempo suelen resultar computacionalmente muy costosos de aplicar. Por ello, se suele aplicar _descenso de gradiente estocástico_, o variaciones. De acuerdo con \cite[p.~144]{ BishopPattern }, dado un peso $\vec w ^{(\tau)}$, $\eta \in \R^+$ llamado parámetro de aprendizaje y un  

Vemos Backpropagation, o al menos lo necesario para los teoremas de convergencia. En algún momento sí creo estaría bien tratar SGD.
### Teoremas de convergencia
Bajo condiciones débiles sobre la función de activación hay varios resultados sobre la convergencia de las redes neuronales tomando el límite en número de capas o número de neuronas por capa a infinito. 
<!-- Número de capas y número de neuronas por capa acotado también había algo -->
- Se puede aproximar cualquier función continua con una red neuronal con una única capa oculta y una función de activación no polinómica.
- Se puede aproximar cualquier función continua con una red neuronal con ...


### Universal approximation theorem    
https://web.njit.edu/~usman/courses/cs675_fall18/10.1.1.441.7873.pdf
Cybenko ^
https://www.sciencedirect.com/science/article/pii/089360809190009T
Hornik ^ ->
abstract:
single hidden layer, arbitrary but bounded activation and non-consttant function are universal approximators in L^p(\mu)
if the activation function is continuos, bounded an non-constant, 

#### Universal approximation theorem
Let $\sigma$ be a non-polynomial activation function. Then, given any continuous function $f: [0,1]^n \to \R$ and any $\epsilon > 0$, there exists a neural network $N$ with a single hidden layer with $n$ neurons and activation function $\sigma$ such that

### Arbitrary width

### Arbitrary depth


## Activación
Clásicamente se ha requerido que la función de activación sea acotada (y por tanto saturante, lim \grad = 0), pero en la práctica también se usan funciones de activación no acotadas como la ReLU (Rectified Linear Unit). Al mismo tiempo, ya observamos de los resultados de convergencia que según el contexto no es necesario.
 <!--  TODO: bueno, hay un resultado en el que se requiere que la función de activación esté acotada, pero bueno-->
Por tanto nos atenemos a la mayor generalidad posible.

### Condiciones sobre la función de activación
<!-- TODO: -->
Además de los resultados de convergencia hay otras consideraciones a tener en cuenta, como el desvanecimiento o explosión de gradientes. 
<!-- https://en.wikipedia.org/wiki/Activation_function -->

<!-- todo esto ya es redundante teniendo los resultados de convergencia -->
dónde poner lo de las activaciones no polinomiales - que bastan para aproximar cualquier función continua. Imagino en el apartado de convergence theorems.

Numeric analysis observation: gotta be careful with vanishing/exploding gradients (unbounded derivatives)



## Backpropagation

## Gradient descent (?)
### Stochastic Gradient Descent
<!-- esta última probablemente en otro apartado posterior? -->
<!-- TODO: unir estos? -->



### Equivalencia a árboles de decisión (?)

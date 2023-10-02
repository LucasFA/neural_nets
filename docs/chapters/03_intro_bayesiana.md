## Introducción a la estadística bayesiana

La regularización se puede interpretar de forma bayesiana, por lo cual hacemos una introduccón básica al tema que nos permita trabajar en este marco.

### Notación
Seguiremos la notación de BDA3: $p(y)$ es la función de densidad o función de masa de probabilidad de una variable aleatoria $Y$, según si es continua o discreta.
### Preliminares

#### Nota

La perspectiva frecuentista y bayesiana llevan a razonamientos epistemológicamente muy distintos 

### Planteamiento

Consideramos una familia de variables aleatorias $\{ X_\theta | \theta \in \Theta \}$, y asignamos una "prior distribution" a $\theta$, $p(\theta)$. En caso de que no tengamos ninguna información sobre la distribución de $\theta$, se suele tomar la distribución menos informativa posible - si $\Theta$ es finito, a veces se puede tomar la distribución uniforme. Si $\theta$ toma valores en $\R$ se puede tomar la normal.  

<!-- Puede que aquí me esté metiendo en algo más específico de lo necesario -->
No es estrictamente necesario que la función tomada como distribución a priori sea de veras una distribución, con integral $1$, sino que basta con que especifique la proporción de probabilidad de valores, debido a que si escribimos el Teorema de Bayes de la siguiente manera:
$$
    P(A_i | B) = \dfrac{P(B| A_i) P(A_i) }{ \sum_j P(B | A_j ) P(A_j)}
$$

observamos que el resultado es invariante bajo "homotecias" aplicadas a los eventos $P(A_i)$: si $P(A'_i) = k P(A_i)$, tenemos que
\begin{align*}
    P(A'_i | B) &= \dfrac{P(B| A'_i) P(A'_i) }{ \sum_j P(B | A'_j ) P(A'_j)}
    P(A'_i | B) &= \dfrac{k P(B| A'_i) P(A_i) }{ k \sum_j P(B | A'_j ) P(A_j)}
    P(A'_i | B) &= \dfrac{P(B| A'_i) P(A_i) }{\sum_j P(B | A'_j ) P(A_j)}
    P(A'_i | B) &= \dfrac{P(B| A_i) P(A_i) }{\sum_j P(B | A_j ) P(A_j)}
    P(A'_i | B) &= P(A_i | B)
\end{align*}

donde en particular he utilizado que $P(B | A'_i) = P(B | A_i)$

De esta manera, la distribución uniforme sobre la recta real es una a priori impropia que podríamos utilizar como a priori no informativa. Sin embargo, es posible que la posteriori resultante no fuera una distribución.




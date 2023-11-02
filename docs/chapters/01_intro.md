source: Bishop page 46

\begin{definition}[Funcion de pérdida]
    Dado un modelo $f$ con variables regresoras $\vec X$ y variables explicadas $\vec Y$, la función de pérdida es una función $L(\vec Y, f(\vec X))$ que representa el error en la aproximación.
\end{definition}

\begin{ejemplo}
    En regresión, una de las funciones de pérdida más comunes es la cuadrática: $L(\vec Y, f(\vec X)) = ||\vec Y - f(\vec X)||^2$
\end{ejemplo}

\begin{definition}{Funci'on de riesgo}
    Dada una funci'on de p'erdida $L$, se define la funci'on de riesgo asociada como:
    $$R(f) = \Esperanza[L(\vec Y, f(\vec X))]$$
    donde la esperanza se toma sobre la distribuci'on conjunta de $\vec X$ y $\vec Y$.
\end{definition}

\begin{prop}\cite[18]{elements_of_statistical_learning}
    Dada la funci'on de p'erdida cuadr'atica, la funci'on que minimiza la funci'on de riesgo es la esperanza condicionada:
    $$f(x) = \Esperanza[Y |X = x]$$
end{prop}

\begin{proof}
    \begin{align*}
        R(f) &= \Esperanza[L(\vec Y, f(\vec X))] \\
             &= \int\int L(\vec y, f(\vec x)) p(\vec x, \vec y) d\vec x d\vec y
             &= \int\int L(\vec y, f(\vec x)) p(\vec y | \vec x) p(\vec x) d\vec y d \vec x \\
             &= \int\int L(\vec y, f(\vec x)) p(\vec y | \vec x) d\vec y p(\vec x) d \vec x \\
             &= \int \Esperanza_{\vec Y | \vec X} [L(\vec y, f(\vec x))] p(\vec x) d \vec x \\
             &= \Esperanza_{\vec X}[\Esperanza_{\vec Y | \vec X}[L(\vec Y, f(\vec X))]] \\
             &= \Esperanza_{\vec X}[(\Esperanza_{\vec Y | \vec X}[Y - f(\vec X)])^2] \\
    \end{align*}

    Sabemos que el valor que minimiza $\Esperanza[(Y - c)^2 | X = x]$ es $\Esperanza[Y | X = x]$.
    Esto es, hemos demostrado que $f(x) = \Esperanza[Y | X = x] = \operatorname{argmin}_c \Esperanza[(Y - c)^2 | X = x]$ minimiza la funci'on de riesgo para la p'erdida cuadr'atica.

    Esta demostraci'on se presenta en \cite[18]{elements_of_statistical_learning}, pero aqu'i se presenta de manera multivariada. 
\end{proof}

source: Bishop page 138

\begin{definition}[Funciones base]
    Consideremos un modelo $y$ con parámetros $\vec w = (w_i)_{i = 0, ..., M - 1}$ y variable regresora $x$:
    $$y(\vec x, \vec w) = w_0 + \sum_{j=1}^{M-1} w_j \phi_j(\vec x)$$

    Aquí las $\phi_j(\vec x)$ son las funciones base o *basis functions*, en inglés.
\end{definition}
Considerando $\phi_0(\vec x) = 1$ también podemos escribir, simplemente,

$$y(\vec x, \vec w) = \sum_{j=0}^{M-1} w_j \phi_j(\vec x) = \vec w^T \vec \phi(\vec x)$$

donde $\vec \phi = (\phi_0, ..., \phi_{M-1})^T$

\begin{ejemplo} Modelo linear
    Tomando $\vec \phi$ la identidad, obtenemos
    $y(\vec x, \vec w) = \vec w^T \vec x$
\end{ejemplo}

\begin{ejemplo} Modelo polinomial
    Se puede extender el modelo lineal tomando $\phi_j(x) = x^j$
\end{ejemplo}

\begin{ejemplo} Sigmoidal y tangente hiperbólica
    En primer lugar, nótese que $tanh(a) = 2 \sigma(a) -1$, donde
\end{ejemplo}

$$\sigma(a) = \dfrac{1}{1+ \exp(-a)}$$

## Estimación de máxima verosimilitud
Supongamos que tenemos una variable objetivo $t$. Consideramos entonces el modelo con ruido Gaussiano $\epsilon ~ N(0, \sigma^2 = \Beta ^{-1}). Entonces, la distribución de $t$ seguirá una $N(y(\vec x, \vec w), \sigma^2)$

Bajo una función de pérdida cuadrática, la predicción óptima la esperanza condicionada:
$$\Esperanza [t | x] = \int t p(t|x) dt = y(\vec x, \vec w)$$

(pagina 141)

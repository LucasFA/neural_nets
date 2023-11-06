import torch
import numpy as np
import matplotlib.pyplot as plt

x = torch.linspace(-3, 3, 100)
y = torch.sin(x) + 0.1 * torch.randn(x.size())

plt.plot(x.numpy(), y.numpy(), 'o')
plt.xlabel('x')
plt.ylabel('y')

plt.show()

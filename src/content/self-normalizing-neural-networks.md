+++
title = "Self Normalizing Neural Networks"
slug = "self-normalizing-neural-networks"
category = "Article"
date = "10-17-2019"
excerpt = "Self Normalizing Neural Networks (SNN) are a new approach to building deep fully connected networks..."
+++

Self Normalizing Neural Networks (SNN) are a new approach to building deep fully connected networks.

The SNN suggests a combination of these 4 concepts.

1. Normalize input data to mean 0 and variance 1.
2. Initialize weights for each layer to be sampled from a normal distribution of mean 0 and variance 1/n where n is the number of weights in that layer.
3. Apply the Scaled Exponential Linear Unit (SELU) activation function to fully connected layers.
4. Apply Alpha Dropout layers after every dense layer.

```math
SELU(x) = \begin{cases}
   \lambda x &\text{if } x < 0 \\
   \lambda \alpha e^x - \lambda \alpha &\text{if } x >= 0
\end{cases}
```
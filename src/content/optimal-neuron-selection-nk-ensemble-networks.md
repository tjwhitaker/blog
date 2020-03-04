+++
title = "Optimal Neuron Selection: NK Ensemble Networks"
slug = "optimal-neuron-selection-nk-ensemble-networks"
date = "2020-02-01"
excerpt = "..."
+++

The NK Ensemble is a neural network architecture that uses neuron group selection for optimization.

### Echo State

```math
s(x,\ t) = \sigma(W_{in} x + W_{res} s(t-1))
```

Hi. $s(x, t)$ is the state of our echo state network given an input vector $x$ at time step $t$. $\sigma$ is a sigmoid activation function. $W_{in}$ and $W_{res}$ refer to the input weights and reservoir weights respectively.

### NK Ensemble State

K bounded pseudo boolean function

```math
f(x) = \sum_{i=1}^N f_i(x')
```

Probe Filter layer state

```math
y(x) = \frac{1}{N} \sum_{i=1}^N \alpha_i s(x)
```

```math
\alpha_i = \frac{f_i(x*)}{\sum_{i=1}^N f_i(x*)}
```
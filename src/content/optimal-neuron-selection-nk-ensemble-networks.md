+++
title = "Optimal Neuron Selection: NK Ensemble Networks"
slug = "optimal-neuron-selection-nk-ensemble-networks"
date = "2020-02-01"
excerpt = "The NK Ensemble is a neural network architecture that uses group selection for optimization. It avoids back propagation entirely by framing the optimization problem..."
+++

The NK Ensemble is a neural network architecture that uses group selection for optimization. It avoids back propagation entirely by framing the optimization problem as a spin glass system that learns by turning off subsets of neurons in the network.

Neuron group selection in neural networks is inspired by a large scale theory of brain development called Neural Darwinism. Gerald Edelman, a nobel prize winning biologist who published this theory, shows that the topology of networks in the brain are a result of selectionist processes during development.

![NK Ensemble Network](/static/images/nk.svg)

## Methods

## Results

## Discussion

## Conclusion

### Echo State

```math
s(t) = \sigma(W_{in} u(t) + W_{res} s(t-1))
```

```math
y(t) = W_{out} s(t) x^*
```

Hi. $s(t)$ is the state of our echo state network given an input vector $u$ at time step $t$. $\sigma$ is a sigmoid activation function. $W_{in}$ and $W_{res}$ refer to the input weights and reservoir weights respectively.

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
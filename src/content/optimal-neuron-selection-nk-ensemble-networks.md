+++
title = "Optimal Neuron Selection: NK Ensemble Networks"
slug = "optimal-neuron-selection-nk-ensemble-networks"
date = "2020-02-01"
excerpt = "..."
+++

## Intro 

The NK Ensemble is a neural network architecture that uses neuron group selection for optimization. It avoids back propagation entirely and is able to leran by simply turning on and off neurons in a special layer called the probe filter.

![NK Ensemble Network]()

In its simplest case, the NK Ensemble consists of an input layer, a reservoir layer, a probe filter layer, and an ensemble output layer.

## Background

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
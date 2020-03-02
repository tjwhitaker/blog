+++
title = "Optimal Neuron Selection: NK Ensemble Networks"
slug = "optimal-neuron-selection-nk-ensemble-networks"
date = "2020-02-01"
excerpt = "..."
+++

### Echo State

```math
s(t) = \sigma(W_{in} x(t) + W_{res} s(t-1))
```

Hi. $s(t)$ is the state of our echo state network at time step $ t $. $x(t)$ is the input vector at time $t$. $ \sigma $ is a sigmoid function, typically the hyperbolic tangent. $W_{in}\ {and}\ W_{res}$ refer to the input weights and reservoir weights respectively.

### Ensemble State

```math
y(x) = \frac{1}{N} \sum_{i=1}^N \alpha_i s(x)
```

```math
\alpha_i = \frac{f_i(x*)}{\sum_{i=1}^N f_i(x*)}
```
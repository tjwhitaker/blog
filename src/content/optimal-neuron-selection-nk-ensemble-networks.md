+++
title = "Optimal Neuron Selection: NK Ensemble Networks"
slug = "optimal-neuron-selection-nk-ensemble-networks"
date = "2020-02-01"
excerpt = "Neuron group selection in artificial neural networks is inspired by a large scale theory of brain function called Neural Darwinism. This theory shows the topology of networks..."
+++

Neuron group selection in artificial neural networks is inspired by a large scale theory of brain function called Neural Darwinism. This theory shows that the topology of networks in the brain are a result of selectionist processes during development.

The NK Ensemble brings these ideas to artificial neural networks by using neuron group selection for optimization. Rather than updating the weights of neural networks via back propagation, we can actually train them by selecting subsets of neurons that perform well together.

The ideas behind neuron selection can work with neural network architectures of any type and size. Here we introduce The NK Ensemble as an extension to Echo State Networks.

## Network Architecture

The NK Ensemble consists of 4 layers. An input, a sparsely connected recurrent reservoir, a probe filter and an ensemble output. The reservoirs and probe filters can be stacked to create deeper networks with more nonlinear interaction.

![NK Ensemble Network](/static/images/nk.svg)

#### Constructing The Network

All weights in the network are sampled from a uniform distribution at initialization and fixed throughout the training process.

The input neurons are connected to every neuron in the reservoir and the reservoir neurons are connected to every neuron in the probe filter layer.

The neurons in the probe filter are connected to $K$ neurons in the ensemble output according to an adjacent neighbors pattern i.e. $output_i$ is connected to $probe_i$, $probe_{i+1}$, ..., $probe_{i+k}$.


#### State Dynamics

The weights of the connections between neurons in the reservoir are initialized such that signals from previous iterations wash out over time. This is called the echo state property and it allows for short term memory within the NK Ensemble.

The state dynamics of the system are governed by the following equation.

```math
s(t) = \phi(W_{in} u(t) + W_{res} s(t-1))
```

Where $s(t)$ is the state at the current time step $t$. $W_{in}$ is the input layer weights. $u(t)$ is the input vector at the current time $t$. $W_{res}$ is the reservoir weight matrix. $s(t-1)$ is the state of the previous time step. $\phi$ is a sigmoidal activation function.

```math
y(t) = W_{out} s(t) x^*
```

#### The Probe Filter Part

#### The Output Ensemble

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

# References

[1]: 
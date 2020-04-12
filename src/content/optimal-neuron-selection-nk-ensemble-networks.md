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

#### State Dynamics

All weights in the network are sampled from a uniform distribution and fixed throughout the training process.

The reservoir weights are sparse and scaled so that the spectral radius is less than 1. This property ensures that signals from previous iterations wash out over time and allow for short term memory within the network.

The input neurons are connected to every neuron in the reservoir and the reservoir neurons are connected to every neuron in the probe filter layer.

```math
s(t) = \phi(W_{in} u(t) + W_{res} s(t-1))
```

Where $s(t)$ is the state at the current time step $t$. $W_{in}$ is the input layer weights. $u(t)$ is the input vector at the current time $t$. $W_{res}$ is the reservoir weight matrix. $s(t-1)$ is the state of the previous time step. $\phi$ is a sigmoidal activation function.

The neurons in the probe filter are connected to $K$ neurons in the ensemble output according to an adjacent neighbors pattern i.e. $output_i$ is connected to $probe_i$, $probe_{i+1}$, ... $probe_{i+k}$.

The probe filter is a bit vector consisting of $N$ ones and zeros. By turning off a neuron, we are turning off all nonlinear interactions connected to that neuron within the reservoir.

```math
y(t) = W_{out}s(t)\ m^*
```

Where $W_{out}$ is the output weight matrix. $s(t)$ is the current state of the network. $m^*$ is the probe filter bit mask.




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
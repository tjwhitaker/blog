+++
title = "Optimal Neuron Selection: NK Echo State Networks for Reinforcement Learning"
slug = "optimal-neuron-selection-nk-echo-state-networks-for-reinforcement-learning"
date = "2020-02-01"
excerpt = "Neuron group selection in artificial neural networks is inspired by a large scale theory of brain function called Neural Darwinism. This theory shows the topology of networks..."
+++

Authors: Darrell Whitley, Renato Tinós, Francisco Chicano
Source: [PDF](https://arxiv.org/pdf/1505.01887.pdf)

# Summary

Neuron selection as a training paradigm draws from a large scale theory of brain development called neural darwinism. Neural darwinism shows that the brain evolves throughout development via selective processes and these selective processes constitute a rudimentary form of learning. This paper applies these ideas to an echo state network to show that learning can occur by choosing the subsets of neurons that work well together and avoiding the costly back propagation algorithm entirely.

![NK Ensemble Network](/static/images/nk.svg)

By posing neuron selection as a pseudo-boolean optimization problem...

# Thoughts

This paper is foundational. The problems are small and the model introduced is the only network architecture implemented.

It's laying the ground work for an alternative training paradigm and it's bringing attention to generalization in domains where overfitting is rampant.

opening the door to neuron selection across a wider range of opportunity.  number of experiments are small and the implementation only uses the echo state network. There is a lot of room to expand on this research, and I'm really excited to see how neuron selection can fit in to large and deep networks in much more complex environments.

I think neuron selection will be an essential component of future neural networks. Generalization is the most important goal in machine learning right now and I think neuron selection is a promising avenue towards that.

Echo state networks are powerful and elegant for small time-dependent problems. I'm interested to see how these ideas apply to the state of the art deep neural networks on higly complex and varied environments.

This paper is foundational for my research.

ut echo state networks have been known to struggle as the environments get more complex. I'm interested in applying the ideas here to some of the state of the art deep neural networks.

I'd really like to see the ideas introduced here be applied to some of the state of the art deep learning models. 

Echo state networks are best in class for small networks and small state spaces. They really struggle with complex environments though, and I doubt they could compete with the state of the art deep learning models when the inputs cons


<!-- Neuron group selection in artificial neural networks is inspired by a large scale theory of brain function called Neural Darwinism. This theory shows that the topology of networks in the brain are a result of selectionist processes during development.

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

Where $W_{out}$ is the output weight matrix. $s(t)$ is the current state of the network. $m^*$ is the probe filter bit mask. -->
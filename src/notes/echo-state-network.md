+++
title = "Echo State Network"
slug = "echo-state-network"
description = "A recurrent reservoir based neural network."
date = "2020-05-01"
+++

The echo state network is a recurrent neural network that uses a hidden reservoir of sparsely and randomly connected neurons. The reservoir weights are fixed and scaled to a spectral radius of less than one. This property allows signals to die out over time and allows for a kind of short term memory within the system. Echo State Networks excel at small problems with small input spaces.

```math
s(t) = \phi(W_{in} u(t) + W_{res} s(t-1))
```

Where $s(t)$ is the state at the current time step $t$. $W_{in}$ is the input layer weights. $u(t)$ is the input vector at the current time $t$. $W_{res}$ is the reservoir weight matrix. $s(t-1)$ is the state of the previous time step. $\phi$ is a sigmoidal activation function.

Related: 
- [Neural Networks](/neural-networks)
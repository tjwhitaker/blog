+++
title = "The Higgs Boson Challenge"
slug = "the-higgs-boson-challenge"
category = "Article"
date = "10-13-2019"
excerpt = "In 2012, researchers at The Large Hadron Collider in Switzerland made the first discovery of The Higgs Boson. This particle was long theorized to exist..."
+++

In 2012, researchers at The Large Hadron Collider in Switzerland made the first discovery of The Higgs Boson. This particle was long theorized to exist, but almost impossible to detect. It's small, has no spin or electrical charge, and is so unstable that it decays almost instantly. The ever elusive Higgs Boson was dubbed "the god particle" due to its role in the generation of mass. This discovery was a breakthrough in modern science, and today we are going to dive in and apply machine learning models to try and predict the presence of a Higgs Boson in the aftermath of high energy hadron collisions.

```
using CSV, DataFrames, Statistics, XGBoost

train = CSV.read("higgs-boson/train.csv")
test = CSV.read("higgs-boson/test.csv")
```
include("../Stasis.jl/src/Stasis.jl")
using .Stasis

title = "Odd Prophet"
Stasis.build("src/pages/index.jl", "build/index.html", title)

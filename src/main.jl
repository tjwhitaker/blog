include("../Stasis.jl/src/Stasis.jl")
using .Stasis

options = Dict(
  "build_dir" => "build",
  "source_dir" => "src",
)

Stasis.build(options)
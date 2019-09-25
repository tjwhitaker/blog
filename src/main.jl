include("../Stasis.jl/src/Stasis.jl")
using .Stasis

Stasis.build("src/pages/index.jl", "build/index.html")

for (root, dirs, files) in walkdir("src/static")
  for file in files
    Stasis.copy(joinpath(root, file), joinpath("build", file))
  end
end
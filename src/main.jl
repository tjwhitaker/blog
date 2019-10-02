include("../Stasis.jl/src/Stasis.jl")
using .Stasis

Stasis.build("src/pages/index.jl", "build/index.html", posts=[1,2,3])

for (root, dirs, files) in walkdir("src/static")
  for file in files
    Stasis.copy(joinpath(root, file), joinpath("build", file))
  end
end

Stasis.serve("build")
include("../Stasis.jl/src/Stasis.jl")
using .Stasis

posts = [
  Dict(
    :title => "Hello World",
    :excerpt => "Lorem",
    :category => "Article",
    :date => "10-2-2019"
  ),
  Dict(
    :title => "Lorem Ipsum",
    :excerpt => "Lorem",
    :category => "Article",
    :date => "10-4-2019"
  )
]

Stasis.build("src/pages/index.jl", "build/index.html", posts=posts)

for (root, dirs, files) in walkdir("src/static")
  for file in files
    Stasis.copy(joinpath(root, file), joinpath("build", file))
  end
end

Stasis.serve("build")
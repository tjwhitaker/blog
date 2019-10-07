include("../Stasis.jl/src/Stasis.jl")
using .Stasis

feed = [
  Dict(
    :title => "The Higgs Boson Challenge",
    :slug => "the-higgs-boson-challenge",
    :excerpt => "In 2012, The ATLAS experiment at The Large Hadron Collider in Switzerland discovered a new particle called The Higgs Boson. This discovery...",
    :category => "Analysis",
    :date => "10-2-2019"
  ),
  Dict(
    :title => "Open Exoplanet Catalogue",
    :slug => "open-exoplanet-catalogue",
    :excerpt => "The NASA Open Catalogue of Exoplanets is a free and decentralized dataset consisting of more than 4000 planets outside of our solar system...",
    :category => "Analysis",
    :date => "10-4-2019"
  )
]

# # Collection of post metadata for index
feed = []

# Parse markdown and build articles
# for (root, dir, files) in walkdir("src/content")
#   for file in files
#     if occursin(r"\.md$", file)
#       meta, content = Stasis.parse(joinpath(root, file))
#       push!(feed, meta)

#       Stasis.build(
#         "src/templates/article.jl",
#         "build/articles/$(meta[:slug])/index.html",
#         meta=meta,
#         content=content
#       )
#     else
#       Stasis.copy(joinpath(root, file), "build/static/$(file)")
#     end
#   end

#   println((root, dir, files))
# end

# Build static pages
Stasis.build("src/pages/index.jl", "build/index.html", posts=feed)
Stasis.build("src/pages/404.jl", "build/404.html")

# Copy static files
Stasis.copy("src/static", "build/static")

# Start dev server
Stasis.serve("build")
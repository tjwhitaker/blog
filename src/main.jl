include("../Stasis.jl/src/Stasis.jl")
using .Stasis

# Collection of post metadata for index
feed = []

# Parse markdown and build articles
for (root, dir, files) in walkdir("src/content")
  for file in files
    if occursin(r"\.md$", file)
      meta, content = Stasis.parse(joinpath(root, file))
      push!(feed, meta)

      Stasis.build(
        "src/templates/article.jl",
        "build/articles/$(meta["slug"])/index.html",
        meta=meta,
        content=content
      )
    else
      Stasis.copy(joinpath(root, file), "build/static/$(file)")
    end
  end
end

# Build static pages
Stasis.build("src/templates/index.jl", "build/index.html", posts=feed)
Stasis.build("src/templates/404.jl", "build/404.html")

# Copy static files
Stasis.copy("src/static", "build/static")

# Start dev server
Stasis.serve("build")
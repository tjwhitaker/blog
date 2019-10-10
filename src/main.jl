include("../Stasis.jl/src/Stasis.jl")
using .Stasis

Stasis.config(
  source_dir="src",
  build_dir="build",
  template_engine="affinity"
)

# Collection of post metadata for index and blog
feed = []

# Parse markdown and build articles
for file in Stasis.walk("content")
  meta = Stasis.parse_toml(file)
  content = Stasis.parse_markdown(file)

  push!(feed, meta)

  Stasis.build(
    input="templates/article.jl",
    output="blog/$(meta["slug"])/index.html", 
    meta=meta, 
    content=content
  )
end

# Build static pages
Stasis.build(input="templates/index.jl", output="index.html", posts=feed)
Stasis.build(input="templates/blog.jl", output="blog/index.html", posts=feed)
Stasis.build(input="templates/404.jl", output="404.html")

# Copy static files
Stasis.copy("static")

# Start dev server
Stasis.serve()
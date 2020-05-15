using Dates
using Stasis

# Collection of post metadata for index and blog
feed = []

# Parse markdown and build notes
for file in Stasis.walk("src/notes")
  meta = Stasis.parse_toml(file)
  content = Stasis.parse_markdown(file)

  push!(feed, meta)

  Stasis.build(
    template="src/templates/article.jl",
    output="build/$(meta["slug"])/index.html",
    meta=meta,
    content=content
  )
end

# Build static pages
Stasis.build(template="src/templates/index.jl", output="build/index.html", notes=feed)
Stasis.build(template="src/templates/404.jl", output="build/404.html")

# Copy static files
Stasis.copy(input="src/static", output="build/static")

# Start dev server
Stasis.serve("build")
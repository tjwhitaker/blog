include("../Stasis.jl/src/Stasis.jl")
using .Stasis

# Collection of post metadata for index and blog
feed = []

# Parse markdown and build articles
for file in Stasis.walk("src/content")
  meta = Stasis.parse_toml(file)
  content = Stasis.parse_markdown(file)

  push!(feed, meta)

  Stasis.build(
    template="src/templates/article.jl",
    output="build/blog/$(meta["slug"])/index.html",
    meta=meta,
    content=content
  )
end

# Build static pages
Stasis.build(template="src/templates/index.jl", output="build/index.html", posts=feed)
Stasis.build(template="src/templates/blog.jl", output="build/blog/index.html", posts=feed)
Stasis.build(template="src/templates/contact.jl", output="build/contact/index.html")
Stasis.build(template="src/templates/404.jl", output="build/404.html")

# Copy static files
Stasis.copy(input="src/static", output="build/static")

# Start dev server
Stasis.serve("build")
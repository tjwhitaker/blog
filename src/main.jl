using Dates
using Stasis

# Collection of post metadata for index and blog
feed = []

# Parse markdown and build articles
for file in Stasis.walk("src/content")
  meta = Stasis.parse_toml(file)
  content = Stasis.parse_markdown(file)

  push!(feed, Dict("meta" => meta, "content" => content))

  Stasis.build(
    template="src/templates/article.jl",
    output="build/$(meta["date"])/index.html",
    meta=meta,
    content=content
  )
end

sort!(feed, by=x->Date(x["meta"]["date"]), rev=true)

# Build static pages
Stasis.build(template="src/templates/index.jl", output="build/index.html", posts=feed)
Stasis.build(template="src/templates/404.jl", output="build/404.html")

# Copy static files
Stasis.copy(input="src/static", output="build/static")

# Start dev server
Stasis.serve("build")
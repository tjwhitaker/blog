html(lang="en") do
  head() do
    meta(charset="utf-8")
    meta(name="viewport", content="width=device-width, initial-scale=1")
    title("Home | Tim Whitaker")

    link(rel="icon", href="/static/favicon.ico")
    link(rel="stylesheet", href="/static/styles/reset.css")
    link(rel="stylesheet", href="/static/styles/theme.css")
    link(rel="stylesheet", href="/static/styles/index.css")
    link(rel="stylesheet", href="https://fonts.googleapis.com/css?family=Fira+Mono:400,500,700|Fira+Sans:400,500,700&display=swap")
  end

  body() do
    partial("src/templates/header.jl")

    div(class="wrapper") do
      div(class="grid") do
        main() do
          div(class="posts") do
            for post in context["posts"]
              div(class="post") do
                a(post["meta"]["title"], href="/$(post["meta"]["slug"])", class="title")
                raw(post["content"])
                small(post["meta"]["category"] * " from " * post["meta"]["date"])
              end
            end
          end
        end

        partial("src/templates/sidebar.jl")
      end
    end

    footer() do
      div(class="wrapper")
    end
  end
end
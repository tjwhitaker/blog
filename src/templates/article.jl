html(lang="en") do
  head() do
    meta(charset="utf-8")
    meta(name="viewport", content="width=device-width, initial-scale=1")
    title("$(context["meta"]["title"]) | Odd Prophet")

    link(rel="stylesheet", href="/static/styles/reset.css")
    link(rel="stylesheet", href="/static/styles/theme.css")
    link(rel="stylesheet", href="/static/styles/article.css")
    link(rel="stylesheet", href="https://fonts.googleapis.com/css?family=Fira+Mono:400,500,700|Fira+Sans:400,500,700&display=swap")
    link(rel="stylesheet", href="https://cdn.jsdelivr.net/npm/katex@0.11.1/dist/katex.min.css", integrity="sha384-zB1R0rpPzHqg7Kpt0Aljp8JPLqbXI3bhnPWROx27a9N0Ll6ZP/+DiW/UqRcLbRjq", crossorigin="anonymous")
    
    script(src="https://cdn.jsdelivr.net/npm/katex@0.11.1/dist/katex.min.js", integrity="sha384-y23I5Q6l+B6vatafAwxRu/0oK/79VlbSz7Q9aiSZUvyWYIYsd+qj+o24G5ZU2zJz", crossorigin="anonymous")
  end

  body() do
    header() do
      div(class="wrapper") do
        div(class="masthead") do
          div(class="logo") do
            a("Odd Prophet", class="title", href="/")
          end
          
          nav() do
            a("About", href="/about")
            a("Blog", href="/blog")
            a("Contact", href="/contact")
            a("Home", href="/")
          end
        end
      end
    end

    main() do
      div(class="wrapper") do
        div(class="grid") do
          article() do
            raw(context["content"])
          end

          aside() do
            h5("Meta", class="minion")
          end
        end
      end
    end
    footer() do
      div(class="wrapper")
    end

    script(src="https://cdn.jsdelivr.net/npm/katex@0.11.1/dist/contrib/auto-render.min.js", integrity="sha384-kWPLUVMOks5AQFrykwIup5lo0m3iMkkHrD0uJ4H5cjeGihAutqP0yW0J6dpFiVkI", crossorigin="anonymous", onload="renderMathInElement(document.body, {'delimiters': [{left: '\$', right: '\$', display: true}]});")
  end
end
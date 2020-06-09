html(lang="en") do
  head() do
    meta(charset="utf-8")
    meta(name="viewport", content="width=device-width, initial-scale=1")
    title("$(context["meta"]["title"]) | Tim Whitaker")

    link(rel="icon", href="/static/favicon.ico")
    link(rel="stylesheet", href="https://fonts.googleapis.com/css?family=Fira+Mono:400,500,700|Fira+Sans:400,500,700&display=swap")
    link(rel="stylesheet", href="https://cdn.jsdelivr.net/npm/katex@0.11.1/dist/katex.min.css", integrity="sha384-zB1R0rpPzHqg7Kpt0Aljp8JPLqbXI3bhnPWROx27a9N0Ll6ZP/+DiW/UqRcLbRjq", crossorigin="anonymous")
    link(rel="stylesheet", href="/static/styles/reset.css")
    link(rel="stylesheet", href="/static/styles/theme.css")
    link(rel="stylesheet", href="/static/styles/sidebar.css")
    link(rel="stylesheet", href="/static/styles/article.css")
    
    script(src="https://cdn.jsdelivr.net/npm/katex@0.11.1/dist/katex.min.js", integrity="sha384-y23I5Q6l+B6vatafAwxRu/0oK/79VlbSz7Q9aiSZUvyWYIYsd+qj+o24G5ZU2zJz", crossorigin="anonymous")
  end

  body() do
    partial("src/templates/header.jl")

    main() do
      div(class="wrapper") do
        div(class="grid") do
          article() do
            raw(context["content"])
          end

          partial("src/templates/sidebar.jl")
        end
      end
    end

    footer() do
      div(class="wrapper")
    end

      script() do
          raw("""
            var math = document.getElementsByClassName('math');
            for (var i = 0; i < math.length; i++) {
              katex.render(math[i].textContent, math[i], {displayMode: math[i].classList.contains('display')});
            }
          """)
      end

  end
end

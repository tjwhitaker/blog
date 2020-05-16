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
          section(class="notes-index") do
            p("Welcome! I'm a computer scientist studying artificial intelligence. Here you will find a collection of personal notes I've been compiling on all sorts of cool topics.")
            p("Here are some useful entry points:")
            ul() do
              li() do
                a("Mathematics", href="/mathematics")
              end
              li() do
                a("Neural Networks", href="/neural-networks")
              end
              li() do
                a("Reinforcement Learning", href="/reinforcement-learning")
              end
            end
          end

          section(class="random-notes") do
            h5("Random Notes", class="minion")
            div(class="notes") do
              for note in context["notes"]
                div(class="note") do
                  a(href="/$(note["slug"])") do
                    h3(note["title"])
                    p(note["description"])
                    small("from " * note["date"])
                  end
                end
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
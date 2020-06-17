html(lang="en") do
  head() do
    meta(charset="utf-8")
    meta(name="viewport", content="width=device-width, initial-scale=1")
    title("Home | Tim Whitaker")

    link(rel="icon", href="/static/favicon.ico")
    link(rel="stylesheet", href="/static/styles/reset.css")
    link(rel="stylesheet", href="/static/styles/theme.css")
    link(rel="stylesheet", href="/static/styles/index.css")
    link(rel="stylesheet", href="/static/styles/sidebar.css")
    link(rel="stylesheet", href="https://fonts.googleapis.com/css?family=Fira+Mono:400,500,700|Fira+Sans:400,500,700&display=swap")
  end

  body() do
    partial("src/templates/header.jl")

    div(class="wrapper") do
      div(class="grid") do
        
        main() do
          section(class="notes-index") do
            p("Hello everyone. My name is Tim and I hope to one day build artificial general intelligence. This website is my research <a href=\"https://en.wikipedia.org/wiki/Zettelkasten\">zettelkasten</a> and I hope you will enjoy exploring some of the articles here.")
            p("Here are some useful entry points:")
            ul() do
              li() do
                a("Reinforcement Learning", href="/reinforcement-learning")
              end
            end
          end

          section(class="random-notes") do
            h5("Random Articles", class="minion")
            div(class="notes") do
              for note in context["notes"]
                div(class="note") do
                  a(href="/$(note["slug"])") do
                    h3(note["title"])
                    p(note["description"])
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

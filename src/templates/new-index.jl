html(lang="en") do
  head() do
    meta(charset="utf-8")
    meta(name="viewport", content="width=device-width, initial-scale=1")
    title("Home | Odd Prophet")

    link(rel="stylesheet", href="/static/styles/reset.css")
    link(rel="stylesheet", href="/static/styles/theme.css")
    link(rel="stylesheet", href="/static/styles/blog.css")
    link(rel="stylesheet", href="https://fonts.googleapis.com/css?family=Fira+Mono:400,500,700|Fira+Sans:400,500,700&display=swap")
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
            for post in context["posts"]
              div(class="post") do
                a(href="/blog/$(post["slug"])") do
                  h3(post["title"])
                  p(post["excerpt"])
                end
              end
            end
          end

          aside() do
            p("""
              Welcome to Odd Prophet! This is a website to explore cool datasets and machine learning algorithms.
            """)

            p("""
              Thanks to increased computing power, machine learning models are helping us glean insights from the vast, complex datasets that describe our universe. From galaxies billions of light years away to particles billions of times smaller than an atom, science experiments are producing more data than ever before. These algorithms are the most powerful way to learn from these experiments and I believe they are the key to unlocking a new data-driven paradigm in science.
            """)
          end
        end
      end
    end
    footer() do
      div(class="wrapper")
    end
  end
end
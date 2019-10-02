html(lang="en") do
  head() do
    meta(charset="utf-8")
    meta(name="viewport", content="width=device-width, initial-scale=1")
    title("Odd Prophet")

    link(rel="stylesheet", href="/normalize.css")
    link(rel="stylesheet", href="/main.css")
  end

  body() do
    header() do
      div(class="wrapper") do
        div(class="logo") do
          h1("Odd Prophet")
        end
        
        nav() do
          a("Home", href="/")
        end
      end
    end

    div(class="container") do
      div(class="wrapper") do
        div(class="grid") do
          main() do
            p("""
              Welcome to Odd Prophet! This is a website to explore cool datasets and machine learning algorithms.
            """)

            p("""
              Thanks to increased computing power, machine learning models are helping us glean insights from the vast, complex datasets that describe our universe. From galaxies billions of light years away to particles billions of times smaller than an atom, science experiments are producing more data than ever before. These algorithms are the most powerful way to learn from these experiments and I believe they are the key to unlocking a new data-driven paradigm in science.
            """)

            img(src="/inception.png")
          end

          aside() do
            for post in context[:posts]
              div() do
                h3(post[:title])
                p(post[:excerpt])
                small(post[:category] * " from " * post[:date])
              end
            end
          end
        end
      end
    end
  end
end
html(lang="en") do
  head() do
    meta(charset="utf-8")
    meta(name="viewport", content="width=device-width, initial-scale=1")
    title("Home | Odd Prophet")

    link(rel="stylesheet", href="/static/styles/reset.css")
    link(rel="stylesheet", href="/static/styles/theme.css")
    link(rel="stylesheet", href="/static/styles/index.css")
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
          end
        end
      end
    end

    main() do
      div(class="wrapper") do
        div(class="grid") do
          article() do
            p("""
              Welcome to Odd Prophet! This is a website to explore cool datasets and machine learning algorithms.
            """)

            p("""
              Thanks to increased computing power, machine learning models are helping us glean insights from the vast, complex datasets that describe our universe. From galaxies billions of light years away to particles billions of times smaller than an atom, science experiments are producing more data than ever before. These algorithms are the most powerful way to learn from these experiments and I believe they are the key to unlocking a new data-driven paradigm in science.
            """)

            img(src="/static/images/inception.png")

            p() do
              i("Inception: A deep learning architecture developed by the AI research team at Google.")
            end
            
            p("""
              I'm interested in a variety of applications of machine learning. I'm especially interested in projects that are looking to make an impact on social good, address the grand challenges that face humanity, or are looking to push the state of the art in science.
            """)

            ul() do
              li("Climate Change and Anthropogenic Impacts on the Environment")
              li("Water Scarcity and Pollution")
              li("Poverty, Disease, and Malnutrition")
              li("Overpopulation and Global Education")
              li("Disaster Resilience and Regional Stability")
              li("Wildlife Conservation and Biodiversity Loss")
              li("Renewable Energy and Sustainable Development")
            end
          end

          aside() do
            h5("Feed", class="minion")
            for post in context["posts"]
              div(class="post") do
                a(href="/blog/$(post["slug"])") do
                  h3(post["title"])
                  p(post["excerpt"])
                  small(post["category"] * " from " * post["date"])
                end
              end
            end
          end
        end
      end
    end
    footer() do
      div(class="wrapper")
    end
  end
end
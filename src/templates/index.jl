html(lang="en") do
  head() do
    meta(charset="utf-8")
    meta(name="viewport", content="width=device-width, initial-scale=1")
    title("Home | Odd Prophet")

    link(rel="icon", href="/static/favicon.ico")
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
            a(raw"""
              <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="home" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" class="svg-inline--fa fa-home fa-w-18 fa-3x"><path fill="currentColor" d="M280.37 148.26L96 300.11V464a16 16 0 0 0 16 16l112.06-.29a16 16 0 0 0 15.92-16V368a16 16 0 0 1 16-16h64a16 16 0 0 1 16 16v95.64a16 16 0 0 0 16 16.05L464 480a16 16 0 0 0 16-16V300L295.67 148.26a12.19 12.19 0 0 0-15.3 0zM571.6 251.47L488 182.56V44.05a12 12 0 0 0-12-12h-56a12 12 0 0 0-12 12v72.61L318.47 43a48 48 0 0 0-61 0L4.34 251.47a12 12 0 0 0-1.6 16.9l25.5 31A12 12 0 0 0 45.15 301l235.22-193.74a12.19 12.19 0 0 1 15.3 0L530.9 301a12 12 0 0 0 16.9-1.6l25.5-31a12 12 0 0 0-1.7-16.93z" class=""></path></svg>
            """, href="/")
            a(raw"""
              <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="code" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512" class="svg-inline--fa fa-code fa-w-20 fa-3x"><path fill="currentColor" d="M278.9 511.5l-61-17.7c-6.4-1.8-10-8.5-8.2-14.9L346.2 8.7c1.8-6.4 8.5-10 14.9-8.2l61 17.7c6.4 1.8 10 8.5 8.2 14.9L293.8 503.3c-1.9 6.4-8.5 10.1-14.9 8.2zm-114-112.2l43.5-46.4c4.6-4.9 4.3-12.7-.8-17.2L117 256l90.6-79.7c5.1-4.5 5.5-12.3.8-17.2l-43.5-46.4c-4.5-4.8-12.1-5.1-17-.5L3.8 247.2c-5.1 4.7-5.1 12.8 0 17.5l144.1 135.1c4.9 4.6 12.5 4.4 17-.5zm327.2.6l144.1-135.1c5.1-4.7 5.1-12.8 0-17.5L492.1 112.1c-4.8-4.5-12.4-4.3-17 .5L431.6 159c-4.6 4.9-4.3 12.7.8 17.2L523 256l-90.6 79.7c-5.1 4.5-5.5 12.3-.8 17.2l43.5 46.4c4.5 4.9 12.1 5.1 17 .6z" class=""></path></svg>
            """, href="https://github.com/OddProphet", target="_blank")
            a(raw"""
            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="envelope" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" class="svg-inline--fa fa-envelope fa-w-16 fa-3x"><path fill="currentColor" d="M502.3 190.8c3.9-3.1 9.7-.2 9.7 4.7V400c0 26.5-21.5 48-48 48H48c-26.5 0-48-21.5-48-48V195.6c0-5 5.7-7.8 9.7-4.7 22.4 17.4 52.1 39.5 154.1 113.6 21.1 15.4 56.7 47.8 92.2 47.6 35.7.3 72-32.8 92.3-47.6 102-74.1 131.6-96.3 154-113.7zM256 320c23.2.4 56.6-29.2 73.4-41.4 132.7-96.3 142.8-104.7 173.4-128.7 5.8-4.5 9.2-11.5 9.2-18.9v-19c0-26.5-21.5-48-48-48H48C21.5 64 0 85.5 0 112v19c0 7.4 3.4 14.3 9.2 18.9 30.6 23.9 40.7 32.4 173.4 128.7 16.8 12.2 50.2 41.8 73.4 41.4z" class=""></path></svg>
            """, href="#")
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
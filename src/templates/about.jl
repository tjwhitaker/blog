html(lang="en") do
  head() do
    meta(charset="utf-8")
    meta(name="viewport", content="width=device-width, initial-scale=1")
    title("About | Odd Prophet")

    link(rel="stylesheet", href="/static/styles/reset.css")
    link(rel="stylesheet", href="/static/styles/theme.css")
    link(rel="stylesheet", href="/static/styles/about.css")
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
            p("""
              My name is Tim Whitaker. I'm a graduate researcher at Colorado State University studying applications of evolutionary training algorithms to neural networks. I built this website to serve as a platform to teach and learn about cutting edge machine learning research.
            """)

            p("""
              I'm building models, collecting datasets, and writing articles about machine learning and its applications.
            """)

            p("""
              I want to build Odd Prophet into the number one resource for machine learning research. I want to work on problems with impact and I want to make the world a better place. I think there's a lot of potential for machine learning models to do a lot of good and I want to turn this company into a force for that.
            """)
          end

          aside() do
            h5("Photos", class="minion")
            img(src="/static/images/office.jpg")
          end
        end
      end
    end
    footer() do
      div(class="wrapper")
    end
  end
end
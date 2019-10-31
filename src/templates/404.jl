html(lang="en") do
  head() do
    meta(charset="utf-8")
    meta(name="viewport", content="width=device-width, initial-scale=1")
    title("404 Page Not Found | Odd Prophet")

    link(rel="icon", href="/static/favicon.ico")
    link(rel="stylesheet", href="/static/styles/reset.css")
    link(rel="stylesheet", href="/static/styles/theme.css")
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
        h1("404")
      end
    end
    footer() do
      div(class="wrapper")
    end
  end
end
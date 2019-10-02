html(lang="en") do
  head() do
    meta(charset="utf-8")
    meta(name="viewport", content="width=device-width, initial-scale=1")
    title("Odd Prophet")

    link(rel="stylesheet", href="/normalize.css")
    link(rel="stylesheet", href="/main.css")
  end

  body() do
    main() do
      h1("Hello World")
      form() do
        input(type="email", data_netlify="true")
      end

      for post in context["posts"]
        p(post)
      end
    end
  end
end
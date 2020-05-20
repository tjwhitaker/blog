aside() do
  h5("Meta", class="minion")
  div(class="meta") do
    img(src="/static/images/programming.svg")
    ul(class="links") do
      li() do
        a("https://github.com/tjwhitaker", href="https://github.com/tjwhitaker")
      end
      li() do
        a("mail@timwhitaker.ai", href="#")
      end
    end
  end

  # h5("Consulting", class="minion")
  # div(class="sidebar-content") do
  #   p("Click here to learn about my consulting services.")
  # end

  h5("Subscribe", class="minion")
  div(class="newsletter") do
    h3("Want to stay updated?")
    input(type="email", placeholder="Email")
    button("Sign Me Up")
  end
end
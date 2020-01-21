aside() do
  h5("Meta", class="minion")
  div(class="meta") do
    img(src="/static/images/programming.svg")
    p("Hello everyone. Welcome to the captain's log. This is a chronological account of my artificial intelligence research.")
  end

  h5("Subscribe", class="minion")
  div(class="newsletter") do
    h3("Want to stay updated?")
    input(type="email", placeholder="Email")
    button("Sign Me Up")
  end
end
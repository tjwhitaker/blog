aside() do
  h5("Meta", class="minion")
  div(class="meta") do
    img(src="/static/images/programming.svg")
    p("I'm Tim Whitaker. I do research in machine learning and am writing about it.")
  end

  h5("Newsletter", class="minion")
  div(class="newsletter") do
    h3("Want to stay updated?")
    input(type="email", placeholder="Email")
    button("Sign Me Up")
  end
end
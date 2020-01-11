aside() do
  h5("Meta", class="minion")
  div(class="meta") do
    img(src="/static/images/programming.svg")
    p("Hello everyone. I do research in machine learning and am writing about it.")
  end

  h5("Newsletter", class="minion")
  div(class="newsletter") do
    h2("Want to stay updated?")
    input(type="email", placeholder="Email")
    button("Sign Me Up")
  end
end
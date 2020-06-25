aside() do
  h5("Consulting", class="minion")
  div(class="meta") do
    img(src="/static/images/programming.svg")
    p("I'm always interested in fun or meaningful machine learning projects. Email me and we can talk more about working together.")
  end

  h5("Newsletter", class="minion")
  div(class="newsletter") do
    h3("Want to stay updated?")
    input(type="email", placeholder="Email")
    button("Sign Me Up")
  end
end

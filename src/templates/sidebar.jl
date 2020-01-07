aside() do
  h5("Meta", class="minion")
  div(class="meta") do
    img(src="https://drewdevault.com/avatar-148.jpg")
    p("I'm Tim Whitaker. I write code and post about artificial intelligence sometimes.")
  end

  h5("Newsletter", class="minion")
  div(class="newsletter") do
    h3("Want more from Whit's Works?")
    input(type="email", placeholder="Email")
    button("Sign Me Up")
  end
end
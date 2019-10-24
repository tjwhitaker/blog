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
            p("""""")

            p("""
              I want to work on problems with impact and I want to make the world a better place. I think there's a lot of potential for machine learning models to do a lot of good and I want to turn Odd Prophet into a force for that.
            """)
          end

          aside() do
            h5("Puzzle", class="minion")

            p(raw"""
              '&%$#">7<;:98765.Rsrqponmlk)('~%$#"yx>_^]\[ZvuWmrqponmf,+*)('&GFEDCBA@?>=<;:
              9876543210/.-,+*)('&%$#"!~}|{zyxwvutsrqpon,l$#(!~%|{"!x>v{tyxq7utmrkpoh.lNji
              b(IHGFEDCBA@?>=<;:9876543210/.-,+*)('&%$#"!~}|{zyxwvutsrqponml$#('~%$#"!x}v<
              ]\[ZYXWslkpohmlkd*bgfedc\"`YX]Vz=<;:9876543210/.-,+*)('&%$@?>=<;:9810/S32r*)
              .-&J*#('~Dedcba`_^]\[ZYXWVUTjinmlkjibgf_%$#"!BA@?>=<;:9876543210/.-,+*)('&%$
              #"!~}|{zyxwvutsrqponmlkj('&%$#"!~`|{t:[ZvutVrkjong-NMLKJIHGFEDCBA@?>=<;:9876
              543210/.-,+*)('&%$#"!~}|{zyxwvut210/.-,+*)i'~Dedcba`_^]\[ZYXWVUTjinmlkjibgf_
              %$\"`Y}|{zyxwW9UTSLKonN0FEihg*)('&%A:?>=<;:981Uv.3210).'Kl$)('~DCBcba`_^]\[Z
              YXWVUTSRQPONMLKJIHGFEDCBA@?>=<;:9876543210/.-,+*)('&%$#"!~}|{zyx0543210).',%
              $H('~}$#z@~`|{t:[ZvutVrkjong-NMLKJIHGFEDCBA@?>=<;:9876543210/.-,+*)('&%$#"!~
              }|{zyxwvut210/.-,+*)i'~D|{zyx>=<;:rwpun4rkjohgf,+*Kgfedc\"CBA@?>TYXWVUTSRQJn
              10/.-,+*)('&%$#"!~65498765432+O/o-&+*#GFE%$#cy?`_^]\[qputsrqpong-NMLKJIHGFED
              CBA@?>=<;:9876543210/.-,+*)('&%$#"!~}|{zyxwvut210/.-,+*)i'~D|{"y?w|u;\[ZYXWV
              rkjonmlkjc)JIHGFEDCBA@?>=<;:9876RQPONMLKDIBfed'&%$#"!765:92765.R2r*/(Lml*)i'
              &}|#"y?`_^]\[qputsrqpong-NMLKJIHGFEDCBA@?>=<;:9876543210/.-,+*)('&%$#"!~}|{z
              yxwvut210/.-,+*)i'~D|{zyx>=<tyrq7otsrkpoh.-,dchgf_%]b[!~}|{zTSwW9UTMRKonmlkj
              ih+*)('&%$#"!~}|{zyx0/43210/.-,%I6
            """, class="puzzle")
          end
        end
      end
    end
    footer() do
      div(class="wrapper")
    end
  end
end
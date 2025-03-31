// Set the metadata for the document
#set document(
  author: "Somraj Saha",
  title: "Somraj Saha's Resume",
  description: [This is Somraj Saha's resume written using Typst, an awesome typesetting tool!],
)

// Setup the page for legibility and better utilisation of whitespace
#set page(margin: 1.25cm)

// Configure the hyperlinks to render with an underline
#show link: underline

// Set a more legible font
#set text(font: "Liberation Serif")

// Function to define the header of the resume
#let header(name: "John Doe") = {
  text(size: 25pt, align(center, [#name]))
  v(15pt, weak: true)
  text(
    align(
      center,
      [
        // TODO: Replace the following with a for loop
        #link("mailto:somraj.saha@jarmos.dev")[somraj.saha\@jarmos.dev] |
        #link("https://jarmos.dev")[jarmos.dev] |
        #link("https://github.com/Jarmos-san")[github.com/Jarmos-san]
      ],
    ),
  )
}

// Function to define the section of the resume
#let section(body) = {
  text(size: 15pt)[#body]
  v(4pt, weak: true)
  line(length: 100%, stroke: 1pt)
  v(6pt, weak: true)
}

// The top-level heading of the resume
#header(name: "Somraj Saha")

#linebreak()

// The "skills" section
#section[Skills]
*Software Development*: Python, Golang, Lua, TypeScript (and JavaScript) \
*Frameworks & Libraries*: FastAPI, Nuxt.js, Chi, SQLAlchemy \
*Miscellaneous*: Terraform, Ansible, Git, Packer, PostgreSQL

// The "experience" section
#section[Experience]
#grid(
  columns: (auto, 1fr),
  [*Chief Technology Officer (CTO)*, Weburz Ltd -- Remote], grid.cell(align(right, [2022])),
)

- #lorem(20)
- #lorem(20)
- #lorem(20)

#grid(
  columns: (auto, 1fr),
  [*Senior Software Engineer*, Augwir Technologies -- Remote], grid.cell(align(right, [2021-2022])),
)

- #lorem(20)
- #lorem(20)
- #lorem(20)

#grid(
  columns: (auto, 1fr),
  [*Technical Writer*, deepen -- Remote], grid.cell(align(right, [2020-2021])),
)

- #lorem(20)
- #lorem(20)
- #lorem(20)

#grid(
  columns: (auto, 1fr),
  [*Software Support Engineer*, MoveInSync -- Bangalore, India], grid.cell(align(right, [2019-2020])),
)

- Triaged & analysed 5-10 tickets a day on average before communicating the severity to the Software Engineering (SWE) teams daily. This helped SWE teams deploy important bug fixes 5x faster.

- Involved myself in keeping vigilance on the frontend for any unintended behaviour. Depending on the severity, I fixed such issues from the backend within 24 hours of reporting.

- Collaborated with the Customer Support & the SWE teams resulting in a 90% reduction of miscommunications.


// The "projects" section
#section[Projects]
#grid(
  columns: (auto, 1fr),
  [*jarmos.dev*], grid.cell(
    align(right, [#link("https://github.com/Jarmos-san/jarmos.dev")[github.com/Jarmos-san/jarmos.dev]]),
  ),
)

// The "education" section
#section[Education]
#grid(
  columns: (auto, 1fr),
  [*University of Hyderabad* - MA in Economics], grid.cell(align(right, [2013-19])),
)

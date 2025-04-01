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
  [#text(strong("Chief Technology Officer (CTO)"), size: 12pt), Weburz Ltd -- Remote], grid.cell(align(right, [2022])),
)

- #lorem(20)
- #lorem(20)
- #lorem(20)

#grid(
  columns: (auto, 1fr),
  [#text(strong("Senior Software Engineer"), size: 12pt), Augwir Technologies -- Remote], grid.cell(
    align(right, [2021-2022]),
  ),
)

- TODO: Add some pointers about working in Augwir Technologies Ltd.
- #lorem(20)
- #lorem(20)
- #lorem(20)

#grid(
  columns: (auto, 1fr),
  [#text(strong("Technical Writer"), size: 12pt), deepen -- Remote], grid.cell(align(right, [2020-2021])),
)

- *Collaborated with the marketing team* to develop a content strategy focused on technical topics such as *Computer Vision (CV) and Machine Learning (ML)*, bridging the knowledge gap and ensuring accurate, high-quality articles.

- *Published technical content on CV technologies and Autonomous Vehicles (AVs)* on the company's engineering blog. This collaboration led to a *25% improvement in keyword selection*, enhancing the technical accuracy and searchability of published articles.

- *Optimized past and future blog posts* for SEO by ensuring the inclusion of *relevant technical keywords*. This initiative resulted in a *3x increase in organic traffic*, boosting the blog's visibility and engagement.

#grid(
  columns: (auto, 1fr),
  [#text(strong("Software Support Engineer"), size: 12pt), MoveInSync -- Bangalore, India], grid.cell(
    align(right, [2019-2020]),
  ),
)

- *Triaged and analyzed* 5-10 tickets daily, assessing severity and escalating critical issues to the Software Engineering (SWE) teams. This *enabled bug fixes to be deployed 5x faster*, reducing downtime and improving system stability.

- *Proactively monitored* the frontend for unintended behavior, diagnosing and resolving backend issues *within 24* hours when necessary. This ensured a *seamless user experience*, reducing frontend-related issue escalations.

- *Facilitated cross-functional collaboration* between Customer Support and SWE teams, ensuring clear documentation and communication of support tickets. This led to a *90% reduction in miscommunications*, accelerating bug resolution and improving customer satisfaction.

// The "education" section
#section[Education]
#grid(
  columns: (auto, 1fr),
  [*University of Hyderabad* - MA in Economics], grid.cell(align(right, [2013-19])),
)

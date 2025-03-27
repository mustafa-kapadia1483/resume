// Set the metadata for the document
#set document(
  author: "Somraj Saha",
  title: "Somraj Saha's Resume",
  description: [This is Somraj Saha's resume written using Typst, an awesome typesetting tool!],
)

// Configure the hyperlinks to render with an underline
#show link: underline

// The top-level heading of the resume
#text(size: 25pt, align(center, [Somraj Saha]))

// The hyperlinks to various social profiles
#text(
  align(
    center,
    [
      #link("mailto:somraj.saha@jarmos.dev")[somraj.saha\@jarmos.dev] |
      #link("https://jarmos.dev")[jarmos.dev] |
      #link("https://github.com/Jarmos-san")[github.com/Jarmos-san]
    ],
  ),
)

#linebreak()

// The "skills" section
#text(size: 15pt)[Skills]
#v(4pt, weak: true)
#line(length: 100%, stroke: 1pt)
#v(6pt, weak: true)
*Software Development*: Python, Golang, Lua, TypeScript (and JavaScript) \
*Miscellaneous*: Terraform, Ansible, Git, Packer

// The "experience" section
#text(size: 15pt)[Experience]
#v(4pt, weak: true)
#line(length: 100%, stroke: 1pt)
#v(6pt, weak: true)
#grid(
  columns: (96%, auto),
  [*Chief Technology Officer (CTO)*, Weburz Ltd -- Remote], [2022],
)

#grid(
  columns: (91%, auto),
  [*Senior Software Engineer*, Augwir Technologies -- Remote], [2021-2022],
)

#grid(
  columns: (91%, auto),
  [*Technical Writer*, deepen -- Remote], [2020-2021],
)

#grid(
  columns: (91%, auto),
  [*Software Support Engineer*, MoveInSync -- Bangalore, India], [2019-2020],
)

// The "projects" section
#text(size: 15pt)[Projects]
#v(4pt, weak: true)
#line(length: 100%, stroke: 1pt)
#v(6pt, weak: true)
#grid(
  columns: (65%, auto),
  [*jarmos.dev*], [#link("https://github.com/Jarmos-san/jarmos.dev")[github.com/Jarmos-san/jarmos.dev]],
)

// The "education" section
#text(size: 15pt)[Education]
#v(4pt, weak: true)
#line(length: 100%, stroke: 1pt)
#v(6pt, weak: true)
#grid(
  columns: (20fr, 1fr),
  align: auto,
  [University of Hyderabad - MA in Economics], [2019],
)

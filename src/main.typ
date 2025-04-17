// Variables for the document metadata
#let doc = (
  author: "Somraj Saha",
  title: "Somraj Saha's Resume",
  description: "Somraj Saha's Software Development Engineering (SDE) resume written and built using Typst.",
  keywords: ("resume", "engineering", "typst"),
)

// Variables for storing the college related information
#let college = (
  name: "University of Hyderabad",
  degree: "MA",
  subject: "Economics",
  start: 2013,
  end: 2019,
)

// Variables for storing the skills
#let skills = (
  "Software Development": "Python, Golang, Lua, TypeScript (and JavaScript)",
  "Frameworks & Libraries": "FastAPI, Nuxt.js, Chi, SQLAlchemy",
  "Miscellaneous": "Terraform, Ansible, Git, Packer, PostgreSQL",
)

// Variables for storing the header related information
#let details = (
  name: "Somraj Saha",
  links: (
    (type: "email", url: "somraj.saha@jarmos.dev", display: "somraj.saha@jarmos.dev"),
    (url: "https://jarmos.dev", display: "jarmos.dev"),
    (url: "https://github.com/Jarmos-San", display: "github.com/Jarmos-san"),
  ),
)

// The list of past work experience and the relevant achievements in there
#let experiences = (
  (
    designation: "Chief Technology Officer (CTO)",
    company: "Weburz Ltd",
    location: "Remote",
    start: "2022",
    end: datetime.today().year(),
    achievements: (
      [*Co-founded* a company specializing in *custom web-based software solutions*, empowering *e-commerce merchants and social media influencers* with tailored digital tools to streamline operations and enhance their online presence.],
      [*Established and led the engineering team*, overseeing Software Development, Cybersecurity, and DevOps, and *implemented best practices* to ensure scalability, security, and operational efficiency.],
      [*Designed and led* the development of BurzCommerce and BurzContent (Open-Source Software), the company's flagship products. These platforms were purpose-built for e-commerce and content creators, increasing customer adoption and driving revenue growth for the company.],
      [*Spearheaded* the company's *open-source software initiative*, for BurzContent by establishing contribution guidelines, promoting adoption and engaging with developers to strengthen the project's presence.],
    ),
  ),
  (
    designation: "Senior Software Engineer",
    company: "Augwir Technologies",
    location: "Remote",
    start: 2021,
    end: 2022,
    achievements: (
      [*Built an engineering team from the ground up*, establishing foundational development workflows and management guidelines that streamlined collaboration and enhanced productivity.],
      [*Led a cross-functional engineering team* (Frontend, Backend, and DevOps) to *design*, *develop*, and *launch the company's Minimum Viable Product (MVP)*, expediting product validation and market entry.],
      [*Designed the foundational architecture* for the company's flagship product, leveraging state-of-the-art photogrammetry and Machine Learning (ML) techniques to generate high-fidelity 3D models from 2D images.],
    ),
  ),
  (
    designation: "Technical Writer",
    company: "deepen",
    location: "Remote",
    start: "2020",
    end: "2021",
    achievements: (
      [*Collaborated with the marketing team* to develop a content strategy focused on technical topics such as *Computer Vision (CV) and Machine Learning (ML)*, bridging the knowledge gap and ensuring accurate, high-quality articles.],
      [*Published technical content on CV technologies and Autonomous Vehicles (AVs)* on the company's engineering blog. This collaboration led to a *25% improvement in keyword selection*, enhancing the technical accuracy and searchability of published articles.],
      [*Optimized past and future blog posts* for SEO by ensuring the inclusion of *relevant technical keywords*. This initiative resulted in a *3x increase in organic traffic*, boosting the blog's visibility and engagement.],
    ),
  ),
  (
    designation: "Software Support Engineer",
    company: "MoveInSync",
    location: "Bangalore, India",
    start: "2019",
    end: "2020",
    achievements: (
      [*Triaged and analyzed* 5-10 tickets daily, assessing severity and escalating critical issues to the Software Engineering (SWE) teams. This *enabled bug fixes to be deployed 5x faster*, reducing downtime and improving system stability.],
      [*Proactively monitored* the frontend for unintended behavior, diagnosing and resolving backend issues *within 24* hours when necessary. This ensured a *seamless user experience*, reducing frontend-related issue escalations.],
      [*Facilitated cross-functional collaboration* between Customer Support and SWE teams, ensuring clear documentation and communication of support tickets. This led to a *90% reduction in miscommunications*, accelerating bug resolution and improving customer satisfaction.],
    ),
  ),
)

// Set the metadata for the document
#set document(
  author: doc.author,
  title: doc.title,
  description: [#doc.description],
  keywords: doc.keywords,
)

// Setup the page for legibility and better utilisation of whitespace
#set page(margin: 1.25cm)

// Configure the hyperlinks to render with an underline
#show link: underline

// Set a more legible font
#set text(font: "Liberation Serif")

// Function to define the header of the resume
#let header(name, contacts) = {
  text(size: 25pt, align(center, [#name]))
  v(15pt, weak: true)

  text(
    align(
      center,
      [
        #(
          contacts
            .map(contact => {
              if contact.at("type", default: none) == "email" {
                link("mailto:" + contact.url)[#contact.display]
              } else {
                link(contact.url)[#contact.display]
              }
            })
            .join([ | ])
        )
      ],
    ),
  )
}

// Function definition to render the roles
#let role(name, company, location, start, end) = {
  grid(columns: (auto, 1fr), [#text(strong(name), size: 12pt), #company -- #location], grid.cell(
      align(right, [#start\-#end]),
    ))
}

// Function to define the section of the resume
#let section(body) = {
  text(size: 15pt)[#body]
  v(4pt, weak: true)
  line(length: 100%, stroke: 1pt)
  v(6pt, weak: true)
}

#let experience(designation, company, location, start, end, pointers) = {
  role(designation, company, location, start, end)
  for pointer in pointers {
    [- #pointer #linebreak()]
  }
}

// Function to render the academic entries
#let academic(name, degree, subject, start, end) = {
  grid(columns: (auto, 1fr), [*#name* - #degree in #subject], grid.cell(align(right, [#start\-#end])))
}

// The top-level heading of the resume
#header(details.name, details.links)

#linebreak()

// The "skills" section
#section[Skills]

// Render the skills
#for (key, value) in skills {
  [*#key*: #value #linebreak()]
}

// The "experience" section
#section[Experience]

#for exp in experiences {
  experience(
    exp.designation,
    exp.company,
    exp.location,
    exp.start,
    exp.end,
    exp.achievements,
  )
}

// The "education" section
#section[Education]

#academic(college.name, college.degree, college.subject, college.start, college.end)

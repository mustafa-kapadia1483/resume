// Document metadata
#let doc = (
  author: "Mustafa Kapadia",
  title: "Mustafa Kapadia's Resume",
  description: "Mustafa Kapadia's Software Development Engineering (SDE) resume written and built using Typst.",
  keywords: ("resume", "engineering", "typst"),
)

// College related information
#let college = (
  name: "Vidyalankar School of Information Technology",
  degree: "BSc",
  subject: "Information Technology",
  start: 2019,
  end: 2022,
)

// Skills
#let skills = (
  "Software Development": "Python, JavaScript (and TypeScript)",
  "Frameworks & Libraries": "Flask, Svelte, Electron, React, NextJS, SQLAlchemy",
  "Miscellaneous": "GCP, Redis, Web automation, Client Onboarding & Technical Documentation, Product Ownership",
)

// Header related information
#let details = (
  name: "Mustafa Kapadia",
  links: (
    (type: "email", url: "mustafa_kapadia@protonmail.com", display: "mustafa_kapadia@protonmail.com"),
    (url: "https://www.mustafak.dev", display: "mustafak.dev"),
    (url: "https://github.com/mustafa-kapadia1483", display: "github.com/mustafa-kapadia1483"),
  ),
)

// Past work experience and achievements
#let experiences = (
  (
    designation: "Product Owner & Engineer",
    company: "AVRL",
    location: "Remote",
    start: "Mar 2024",
    end: "Present",
    achievements: (
      [Currently leading the development of the Phoenix system at AVRL using Flask, the core API platform powering all automation processes for generating base rates used in spot freight bidding. Standardized processes to maximize customer flexibility in fine-tuning rates, enhancing control over pricing strategies and driving increased profitability.],
      [Oversaw the migration and deployment of Phoenix API to multiple client-owned & AVRL managed infrastructures (GCP, Azure and on-premise VM), ensuring smooth deployments & updates],
      [Played a crucial role in onboarding new clients end-to-end, from setting up their Phoenix API, virtual machines (VMs), and MySQL-based Datastore (with Datastore APIs) in client-owned GCP projects, to assisting with on-prem or cloud deployments. Provided detailed Datastore API documentation and pre-built Flask-based Phoenix API code to streamline client-led implementations.],
      [Led the development of the callAG API at AVRL, streamlining automation for third-party logistics in the U.S. spot freight market by replacing web scraping. Achieved an 80% reduction in bot processing times, significantly increasing the volume of freight opportunities secured for clients],
    ),
  ),
  (
    designation: "Software Developer Engineer",
    company: "AVRL",
    location: "Remote",
    start: "Jun 2022",
    end: "Mar 2024",
    achievements: (
      [Leveraging my proficiency in JavaScript, I contribute my skills to AVRL, enhancing their ability to provide clients with cutting-edge web automations],
      [Demonstrating expertise in web automation, I am entrusted with the responsibility of managing and optimizing over 4 automation templates. My role involves frequent updates to enhance their modularity and minimize errors, ensuring minimal downtime for automations. I prioritize proactive error logging for swift and accurate issue resolution, contributing to the seamless functioning of automated processes],
      [Designed and developed 10+ automation templates for clients, optimizing operational efficiency. Reduced automation run times by up to 30%, enabling faster and more reliable process execution.],
      [Consistently maintained the lowest ticket turnaround times while ensuring continuous monitoring of automation bots. Improved customer satisfaction and reduced automation downtime by up to 40%, leading to enhanced ROI for clients.],
    ),
  ),
  (
    designation: "Associate Software Engineer",
    company: "Vistaar Digital Communications Pvt. Ltd.",
    location: "Mumbai",
    start: "Jan 2022",
    end: "May 2022",
    achievements: (
      [Developed and customized WordPress plugins and widgets to meet client-specific functionality and design requirements, ensuring seamless integration with existing site structures.],
      [Collaborated directly with clients to gather requirements for UI components and page layouts, translating their concepts into responsive, interactive designs using HTML, CSS, and JavaScript for both WordPress and non-WordPress websites.],
      [Optimized website performance, improving load times and enhancing overall user experience across multiple client projects.],
    ),
  ),
)

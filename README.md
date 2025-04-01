# Resume

The contents of this repository is how I create my resume using
[Typst](https://typst.app). Its a modern alternative to LaTeX with an intuitive
and easy-to-use syntax.

## Get Started

To started with composing your resume using the same tools as I did in this
repository, follow these guidelines:

1. Fork the repository and clone it locally to your system.
2. Ensure Typst is installed and accessible (follow
   [the official installation guideline](https://github.com/typst/typst?tab=readme-ov-file#installation)).
   (**Optionally**) You will also need [Task](https://taskfile.dev) for ease of
   compiling the markup code to a PDF document.
3. Run the relevant commands to check whether the compilation step succeeds:

   _Using Task_:

   ```console
   task compile
   ```

   **Without Using Task**:

   ```console
   mkdir build
   typst compile main.typ build/resume.pdf
   ```

4. (_Additionally_), to compile and watch for changes at the same time, you can
   invoke the following command:

   **Using Task**:

   ```console
   task
   ```

   **Without Using Task**:

   ```console
   mkdir build
   typst watch main.typ build/resume.pdf
   ```

If the aforementioned commands succeeds, you should then see a compiled PDF
ready for review. Open it in your preferred PDF reader, review it, make the
necessary changes and run the commands once again.

## Attribution and Credits

Work on the resume would not have been possible without the help of the
following resources (and everyone involved with the mentioned resources):

- The
  [r/EngineeringResumes Resume Template](https://docs.google.com/document/d/1MBvhATv8y-ESORopRoLSZ3f3HjkM_Qa_f8fIHAEqgnI)
- The [r/developersIndia](https://www.reddit.com/r/developersIndia) subreddit
  for introducing me to Typst.

## Licensing and Distribution

The contents of this repository are licensed under the terms and conditions
(T&Cs) of CC BY-NC 4.0 and you are allowed to modify, copy and distribute the
contents under similar T&Cs. For more information on the licensing T&Cs, refer
to the [LICENSE](./LICENSE) document.

# Adam Bawatneh Resume

This repository contains my research-focused resume and separate Adobe and Amazon research internship cover letters, with LaTeX sources and compiled PDFs.

## Build

Open this folder in VS Code with the LaTeX Workshop extension. The workspace recipe uses TinyTeX through `scripts/latexmk-tinytex-wrapper.sh`.

To compile the resume from a terminal on this Mac:

```sh
./scripts/latexmk-tinytex-wrapper.sh -pdf -interaction=nonstopmode -synctex=1 -file-line-error main.tex
```

The cover letters are standalone documents. Compile them separately:

```sh
./scripts/latexmk-tinytex-wrapper.sh -pdf -jobname=Cover_Letter_Adobe cover_letter_adobe.tex
./scripts/latexmk-tinytex-wrapper.sh -pdf -jobname=Cover_Letter_Amazon cover_letter_amazon.tex
```

In Overleaf, choose the desired file under **Menu → Main document**, then recompile. The resume remains `main.tex`.

## Git remotes

`origin` is the GitHub copy and `overleaf` is the Overleaf project. To publish a local revision to both:

```sh
git push origin main
git push overleaf main
```

Before pulling changes from Overleaf, fetch and inspect the history. Merge the Overleaf branch into `main` when both copies have new commits. Do not force-push over either copy.

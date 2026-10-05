# Adam Bawatneh Resume

This repository contains the LaTeX source and compiled PDF for my research-focused resume.

## Build

Open this folder in VS Code with the LaTeX Workshop extension. The workspace recipe uses TinyTeX through `scripts/latexmk-tinytex-wrapper.sh`.

To compile from a terminal on this Mac:

```sh
./scripts/latexmk-tinytex-wrapper.sh -pdf -interaction=nonstopmode -synctex=1 -file-line-error main.tex
```

## Git remotes

`origin` is the GitHub copy and `overleaf` is the Overleaf project. To publish a local revision to both:

```sh
git push origin main
git push overleaf main
```

Before pulling changes from Overleaf, fetch and inspect the history. Merge the Overleaf branch into `main` when both copies have new commits. Do not force-push over either copy.

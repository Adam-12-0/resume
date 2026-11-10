# Adam Bawatneh Resume

This repository contains my research resume, its LaTeX source, and the compiled PDF.

## Build

Open this folder in VS Code with the LaTeX Workshop extension. The workspace recipe uses TinyTeX through `scripts/latexmk-tinytex-wrapper.sh`.

To compile the resume from a terminal on this Mac:

```sh
./scripts/latexmk-tinytex-wrapper.sh -pdf -interaction=nonstopmode -synctex=1 -file-line-error main.tex
```

The main document in Overleaf is `main.tex`.

## Git remotes

`origin` is the GitHub copy and `overleaf` is the Overleaf project. To publish a local revision to both:

```sh
git push origin main
git push overleaf main
```

Before pulling changes from Overleaf, fetch and inspect the history. Merge the Overleaf branch into `main` when both copies have new commits. Do not force-push over either copy.

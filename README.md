# marble-diagrams
A collection of marble diagrams of various Rx combinators in standalone TikZ format.

## How to export (LaTeX + dvisvgm)

LaTeX files can be exported to SVG with the following commands:

```
latex -output-directory=build file.tex
dvisvgm --no-fonts --output=build/%f.svg build/file.dvi
```

The above commands are available with most common LaTeX distributions, such as [MiKTeX](https://miktex.org/download) on Windows. The `push.cmd` file contains an example batch script which leverages both commands to export all files in the repository.

## How to build (VS Code)

1. Install [MiKTeX](https://miktex.org/download).
2. Install the [Latex Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) VS Code extension.
3. Install portable [Strawberry Perl](https://strawberryperl.com/releases.html).
4. Make sure both MiKTeX and Perl are in the system PATH.
5. (Optional): Enable Auto-clean run setting in Latex-workshop settings.
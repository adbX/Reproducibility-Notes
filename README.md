# NCSA Reproducibility Group Notes

This LaTeX document is meant to serve as an amalgamation of sources we have collected pertaining to reproducibility and any topic therein.

## Needed Software

To build this document you need to install a texlive distribution along with biber.

For specific linux distributions install the following packages:

Arch:
* texlive
* biber

Ubuntu:
* texlive
* biber

For Windows, Install Cygwin, and make sure the texlive, make, and biber packages are installed.

For Mac:

Make sure texlive and biber is installed

## Overview

This document has many powers which make it great for documenting research narratives and helping find whats missing and filling the gaps. 

Some high-level things of note, most items in the document contain links to other sections of the document where they are mentioned. These links help you navigate quickly around the document.

### Table of Contents

The table of contents contains of course, an overview of the document along with links to each part of the document

### References

At the end of the document is a list of references. Each time a reference is cited, you can click on the citation, and it will bring you to the page containing that reference in the reference section. At the end of each reference in the reference section is a list of pages on which that reference is mentioned.

### Index

Currently rather raw, the index lists areas where titles, names, or defined terms are mentioned. You can look up an item an click a page number to get linked to the section of the document which mentions that item.

### Glossary

This is a quick list of sections which have been labeled with a few codes I've defined meaning they need attention in some way. I'll go over the codes later.

### Attention codes

I've defined several commands which indicate parts of the document which need attention in some way. Either they don't contain much information, or a new citation which needs to be read and a summary created for it, or whether a citation needs to be categorized, etc...

#### Read command

``` latex
\Read
```
Inserting this command indicates a reference which hasn't been read the whole way and needs to be read to create a good or more full description of the reference. If you read the reference, and add a description to the reference, you can remove this command.

#### categorize command

``` latex
\categorize
```

This command indicates a reference which hasn't been properly categorized yet. If you categorize this reference, you can remove this command.

#### complete command

``` latex
\complete
```

This command indicates a section which isn't complete yet. If you add enough that you feel the section is complete, you can remove the command.

#### needcite command

``` latex
\needcite
```

This command indicates a section or claim which needs a citation. If you find the citation for this command, add it to krafczyk/Reproducibility-bib and add a citation definition and citation for this neew citation, you can remove this command.

#### expand command

``` latex
\expand
```

This command indicates a section which needs to be expanded as it seems a bit sparse. If you expand the section and you feel it's been expanded enough, you can remove this command.

#### readmore command

``` latex
\readmore
```

This command indicates a reference which has been partially read and may have some small description written about it, but which may need to be read read more. If you finish reading the reference and update the section and feel that it is adequate, you can remove this command.

### Citation Definitions

For every citation which is added to krafczyk/Reproducibility-bib, I want to have a citation definition here. I've defined the `refdef` environment for this purpose. Essentially you invoke it like this:

``` latex
\begin{refdef}{<citation-name>}{<citation-pdf-name>}
<citation-description>
\end{refdef}
```

`<citation-name>` is the name of the citation in the bibliography

`<citation-pdf-name>` is the name of the pdf for that citation in our reference storage folder [here](https://drive.google.com/drive/folders/0B3BA_GGofHK4M0xyNzRVVUI2NlE?usp=sharing). If you do have a pdf of the reference, Please make sure its the most recent published version if possible.

`<citation-description>` is the description you write for that citation.

This renders a nice little section in the document describing the title, journal (if it exists) and year it was published, along with its description. You can then navigate to a references description from the references section by looking at the end of the refernce as mentioned earlier.

## How to build

There are a couple steps to properly set up and build this document.

### Checkout source code.

``` bash
git clone git@github.com:krafczyk/Reproducibility-Notes
git submodule init
git submodule update
```

### Build code

``` bash
make
```

### View output

Look at `out/main.pdf` for the output pdf which is produced.

`evince out/main.pdf` for example.

### Updating submodules

``` bash
git submodule update --recursive --remote
```

## How to contribute

Submit a PR, and it will be reviewed and pulled if accepted.

## Rules

Please follow these rules to increase the likelihood that your change will be merged.

1. When adding a new reference, Please add a section

# Causemos Help Documentation #

This repository contains all the necessary files to build and store the help documentation for Causemos. The Causemos help site builds with [MkDocs](https://www.mkdocs.org/) and the [Material for MkDocs theme](https://squidfunk.github.io/mkdocs-material/getting-started/). 

## Prerequisites ##

Before you begin, make sure you a recent version of [Python](https://www.python.org/) and the Python package manager, [pip](https://pip.readthedocs.io/en/stable/installing/).

## Installing MkDocs and the Material theme ##

The help builds with the latest MkDocs and Material theme. It also uses a few extensions to provide extra functionality:

- [mkdocs-glightbox](https://github.com/blueswen/mkdocs-glightbox) enables zoom functionality for images.
- [mkdocs-macros-plugin](https://github.com/fralau/mkdocs_macros_plugin) allows the use of variables in Markdown files.

To install the latest MkDocs, theme, and extensions: 

```
pip install mkdocs
pip install mkdocs-material
pip install mkdocs-glightbox
pip install mkdocs-macros-plugin
``` 

## Building the help site ##

To build the Causemos help site, run the following command in the root folder:

```
mkdocs build -d <dest_folder>
```

To build a local development version of the site, run the following command in the root folder:

```
mkdocs serve
```

Access the development server at `http://localhost:8000/`.

## Writing the docs ##

### Known issues ###

- A topic can only have one h1. If you add more than one, the Table of contents for the page (rightmost pane) won't generate.
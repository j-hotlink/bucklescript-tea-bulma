# bucklescript-tea-bulma

Bulma (Material Design) CSS Framework support for bucklescript-tea

## Purpose

This package provides support for the [Bulma CSS Framework (for Material Design)](https://bulma.io/) from within Bucklescript. As Bulma is a css only implementation of material design, it's perfect for building responsive UI with [bucklescript-tea](https://github.com/OvermindDL1/bucklescript-tea).

The library is simple, but lets you get on with implementing MD on bucklescript-tea quickly.

## Installation

Currently this code is only published on GitHub, so you need to clone locally and include in your project by local referencing. The only dependency is bucklescript-tea.

1. Ensure your bucklescript environment has bucklescript-tea installed in your existing project
2. clone this repo `git clone https://github.com/j-hotlink/bucklescript-tea-bulma.git`
3. Adjust your `bsconfig.json` file to reference the downloaded project source (eg. `bucklescript-tea-bulma/src`)

Example `bsconfig.json` file:
<pre>
{
    "name": "your-local-project",
    "version": "0.1.0",
    "sources":  {
        "dir" : "src",
        "dir" : "bucklescript-tea-bulma/src",  // *ADD THIS LINE*
        "subdirs" : true
    },
    "package-specs": {
        "module": "es6",  // module 'es6' format is required by the rollup utility, so replaces 'commonjs'
        "in-source": true
    },
    "suffix": ".bs.js",
    "bs-dependencies": [
        "bucklescript-tea"
    ],
    "warnings": {
        "error" : "+101"
    },
    "generate-merlin" : false,
    "refmt": 3,
    "bsc-flags": [
        "-bs-super-errors"
    ]
}
</pre>

## Usage

The module `Bulma` is a root node of the tree covering all modules.

Css classes are defined in `Bulma.Class`, and other constructs explained on the [Bulma Site](https://bulma.io/) are broadly available under their namesake modules (eg. `Bulma.Component.Navbar` for navbar).

Bulma html elements are structured with the standard tea_html pattern `<tag> [attributes] [childrens]`.

There are no tests; the file `src/bulma_example` contains a tiny demo of intended code usage.

## Acknowledgments

* Thanks to overminddl1@gmail.com for the great bucklescript-tea library, which made the switch from Elm a painless joy.
* Thanks to surprisetalk@gmail.com for the [elm-bulma](https://github.com/surprisetalk/elm-bulma) package - this code is a port of that to ocaml (minor refactoring).
* please PR fixes or improvements

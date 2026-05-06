# Ocamltype Walkthrough

I use this file as a small checklist before changing the OCaml implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | IR pressure | 132 | watch |
| stress | lowering drift | 121 | watch |
| edge | stack depth | 202 | ship |
| recovery | diagnostic reach | 179 | ship |
| stale | IR pressure | 216 | ship |

Start with `stale` and `stress`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The next useful expansion would be a malformed fixture around lowering drift and diagnostic reach.

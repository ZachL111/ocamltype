# Review Journal

The review surface for `ocamltype` is deliberately narrow: one fixture, one scoring rule, and one local check.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its compilers focus without claiming live deployment or external usage.

## Cases

- `baseline`: `IR pressure`, score 132, lane `watch`
- `stress`: `lowering drift`, score 121, lane `watch`
- `edge`: `stack depth`, score 202, lane `ship`
- `recovery`: `diagnostic reach`, score 179, lane `ship`
- `stale`: `IR pressure`, score 216, lane `ship`

## Note

The useful failure mode here is a wrong decision on a named case, not a vague style disagreement.

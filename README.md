# ocamltype

`ocamltype` explores compilers with a small OCaml codebase and local fixtures. The technical goal is to infer simple Hindley-Milner types for lets and lambdas.

## Why It Exists

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how IR pressure and stack depth should influence a review result.

## Ocamltype Review Notes

`stale` and `stress` are the cases worth reading first. They show the optimistic and cautious ends of the fixture.

## Features

- `fixtures/domain_review.csv` adds cases for IR pressure and lowering drift.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/ocamltype-walkthrough.md` walks through the case spread.
- The OCaml code includes a review path for `IR pressure` and `lowering drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture Notes

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `IR pressure`, `lowering drift`, `stack depth`, and `diagnostic reach`.

The OCaml addition stays small enough to inspect in one sitting.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

The check exercises the source code and the review fixture. `stale` is the high score at 216; `stress` is the low score at 121.

## Limitations And Roadmap

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.

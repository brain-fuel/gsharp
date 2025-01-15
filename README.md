## Next Steps

- Finish up v0.1.1 of operators grammar by adding trigonometeric functions and so-on
- 

## API Stability

| Level | Label | Stable (Y/N) | Explanation |
|---|---|---|---|
|1|alpha-1|N|Feature may go away; major changes likely|
|2|alpha-2|N|Major changes likely|
|3|beta-1|N|Minor backwards-compatibility-breaking changes likely to occur often|
|4|beta-2|N|Minor backwards-compatibility-breaking changes likely to occur seldom|
|5|ga|Y|No backwards-compatibility-breaking changes|

## Code Review Checklist

- [ ] Diff
  - [ ] Regression tests
  - [ ] Usage Examples (doctests)
  - [ ] Documentation
    - [ ] for users (V-SNC)
    - [ ] for feature developers (V-SNC)
- [ ] Squash with appropriate message

### Commit Messages

TODO: Look at Winglang strategy.

## Design Decisions

```
-- comment
(* multi line comment *)
(** documentation comment **)

TODO: figure out syntax for quoting code.

-- grammar
DOT: '.';

-- Haskell
fromIntegral
-- G#
transform_from Integral
transform_from String
```

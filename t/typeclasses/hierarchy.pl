proper_subset(Sub, Super) :-
  subset(Sub, Super),
  Sub \= Super.

base_typeclass(unit, []).
extended_typeclass(magma, unit, [bin_op]).

extended_typeclass(quasigroup, magma, [divis]).
extended_typeclass(unital_magma, magma, [id]).
extended_typeclass(semigroup, magma, [assoc]).

extended_typeclass(loop, quasigroup, [id]).
extended_typeclass(assoc_quasigroup, quasigroup, [assoc]).
extended_typeclass(monoid, semigroup, [id]).
extended_typeclass(monoid, unital_magma, [assoc]).

extended_typeclass(group, loop, [assoc]).

typeclass(T, Props) :- base_typeclass(T, Props).
typeclass(T, Props) :-
  setof(P, compute_props(T, P), [Props]).

compute_props(Sub, SubProps) :-
  extended_typeclass(Sub, Super, ExtProps),
  typeclass(Super, SuperProps),
  ord_union(SuperProps, ExtProps, SubProps).

extends(Sub, Super, ByProps) :-
  typeclass(Sub, SubProps),
  typeclass(Super, SuperProps),
  proper_subset(SuperProps, SubProps),
  subtract(SubProps, SuperProps, ByProps).



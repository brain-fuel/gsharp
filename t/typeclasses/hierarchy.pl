proper_subset(Sub, Super) :-
  subset(Sub, Super),
  Sub \= Super.

%% Typeclasses %%

base_typeclass(unit, []).

%% Abstract Algebra: Unary Typeclass %%

extended_typeclass(unary, unit, [un_op]).

%% Abstract Algebra: Magma thru Group %%

extended_typeclass(magma, unit, [bin_op]).

extended_typeclass(quasigroup, magma, [divis]).
extended_typeclass(unital_magma, magma, [id]).
extended_typeclass(semigroup, magma, [assoc]).

extended_typeclass(loop, quasigroup, [id]).
extended_typeclass(assoc_quasigroup, quasigroup, [assoc]).
extended_typeclass(monoid, semigroup, [id]).

extended_typeclass(group, loop, [assoc]).

%% Comparison %%

extended_typeclass(eq, unit, [eq_op]).
extended_typeclass(ord, eq, [cmp_op]).

typeclass(T, Traits) :- base_typeclass(T, Traits).
typeclass(T, Traits) :-
  setof(P, compute_traits(T, P), [Traits]).

compute_traits(Sub, SubTraits) :-
  extended_typeclass(Sub, Super, ExtTraits),
  typeclass(Super, SuperTraits),
  ord_union(SuperTraits, ExtTraits, SubTraits).

extends(Sub, Super, ByTraits) :-
  typeclass(Sub, SubTraits),
  typeclass(Super, SuperTraits),
  proper_subset(SuperTraits, SubTraits),
  subtract(SubTraits, SuperTraits, ByTraits).



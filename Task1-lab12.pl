edge('Makkah', 'Madinah').
edge('Makkah', 'Riyadh').

edge('Madinah', 'Makkah').
edge('Madinah', 'Taif').
edge('Madinah', 'Tabuk').

edge('Taif', 'Tabuk').
edge('Taif', 'Dammam').

edge('Tabuk', 'Taif').

edge('Riyadh', 'Dammam').

edge('Dammam', 'Riyadh').
edge('Dammam', 'Al-Qatif').

edge('Al-Qatif', 'Dammam').
edge('Al-Qatif', 'Madinah').


travel(From, To, Path) :-
    path(From, To, [From], P),
    reverse(P, Path).

path(X, X, Path, Path).

path(From, To, Visited, Path) :-
    edge(From, Next),
    not(member(Next, Visited)),
    path(Next, To, [Next|Visited], Path).

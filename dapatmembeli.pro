PREDICATES
 nondeterm dapat_membeli(symbol, symbol)
 nondeterm orang(symbol)
 nondeterm mobil(symbol)
 suka(symbol, symbol)
 dijual(symbol)

CLAUSES
dapat_membeli(X,Y):-
orang(X),
mobil(Y),
suka(X,Y),
 dijual(Y).
 
 orang(mikasa).
 orang(accelerator).
 orang(touma).
 orang(misaki).
 
 mobil(atoz).
 mobil(kijang).
 
 suka(mikasa, atoz).
 suka(accelerator, pecel).
 suka(touma, buku).
 suka(misaki, komputer).
 
 dijual(kijang).
 dijual(atoz).
 dijual(buku).
 
GOAL
 suka(accelerator,pecel).
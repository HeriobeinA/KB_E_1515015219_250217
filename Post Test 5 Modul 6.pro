PREDICATES
   faktorial(unsigned,real)   
   faktorial(unsigned,real,unsigned,real) 
 
CLAUSES
   faktorial(N,FaktoN):-
     faktorial(N,FaktoN,1,1). 			/*(1,1) maksudnya dari nilai goal di bawah, di faktorialkan sampai (1,1)*/
 
  faktorial(N,FaktoN,N,FaktoN):-!.		
     faktorial(N,FaktoN,I,P):-			/*I=N P=FaktoN */
       IBaru = I+1,  				/*fase 1 IBaru = 1+1*/ /*fase 2 IBaru = 2+1*/
       PBaru = P*IBaru,  			/*fase 1 PBaru = 1*2*/ /*fase 2 PBaru = 2*3*/
       faktorial(N, FaktoN, IBaru, PBaru).	/*fase 1 faktorial (N, FaktonN, 2, 2)*/ /*fase 2 faktorial (N, FaktonN, 3, 6)*/  
 
GOAL
   faktorial(3,X). 				/*di dalam goal N=3 berarti N dimulai dari 3*/
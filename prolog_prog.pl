% lcp will find the longest common prefix of two strings ;
lcp([C1 | R1 ] , [C2 | R2], [C1|R3]):-
   C1 =:= C2, lcp(R1,R2,R3). 
lcp(_,_,[]).

% lcpList will use the lcp to compare each neighbouring strings to find the longest common prefix ;
lcpList([H],H,A):- atom_codes(A,H).
lcpList([H1,H2 | T],S,A):- lcp(H1,H2,L), lcpList([L|T], S,A).

% this function combines the two above functions to give an easier to understand result ;
lcpOfList(List,Result):- lcpList(List,_,Result).

% lcpOfList(["interview","interview","intervene","internship"],L). L = "inter" ; 
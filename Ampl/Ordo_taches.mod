param n>0;

param durre{1..n}>=0;
param DNettoyage{1..n,1..n}>=0;
var Succ{1..n,1..n} , binary;
var Rang {1..n}>=0;





minimize LaDurreTotale :sum {i in 1..n, j in 1..n}
      (durre[i] + DNettoyage[i,j])*Succ[i,j];
  s.t. InitRang: Rang[1]=1;
  s.t. Initials{p in 1..n}: Succ[p,p]=0;	
  s.t. Successeur{i in 1..n}: sum{j in 1..n} Succ[i,j]=1;
  s.t. Precesseur{j in 1..n}: sum{i in 1..n} Succ[i,j]=1;
  s.t. Noncycles{i in 1..n,j in 2..n: j<i or i<j}: Rang[j]>= Rang[i]+1-n*(1-Succ[i,j]);




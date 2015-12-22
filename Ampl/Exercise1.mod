set PROD;

var X , integer;
var Y , integer;
param prix1;
param prix2;
param domet{PROD};
param martel{PROD};
param demande {PROD};



minimize Cost: prix1*X+prix2*Y;
s.t. Constraint{p in PROD}: domet[p]*X+martel[p]*Y     >= demande[p];

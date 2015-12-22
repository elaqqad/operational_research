param N=11;

var r:=Uniform(0,1), >=0, <=1;
var x{j in 1..N} := Uniform(0,1), >= 0, <=1; 
var y{j in 1..N} := Uniform(0,1), >= 0, <=1; 
 
 
maximize rayon: r;
s.t. Non_intersections{i in 1..N, j in 1..N : i<j}: 4*r**2<= (x[i]-x[j])**2 + (y[i]-y[j])**2;
s.t. min1{i in 1..N}: x[i]>=r; 
s.t. min2{i in 1..N}: y[i]>=r; 
s.t. max1{i in 1..N}: x[i]<=1-r; 
s.t. max2{i in 1..N}: y[i]<=1-r;
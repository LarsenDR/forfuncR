mesavage = function( dbh, mht, volumetype="Int1/4", girard=78)
{
# Function to calcalate the Mesavage and Girard 1946 volume. 
# using the equations by H.V. Wiant, Jr., 1986, Formula's for
# Mesavage and Girard's Volume Tables, Northern Journal of Applied Forestry 3:124.
# Coded by David R. Larsen, June 20, 2015

L = mht / 16.0
cor = (1.0+ ((girard - 78.0) * 0.03))
a = vector()
b = vector()
c = vector()
treevolume=numeric()

if (volumetype == "Int1/4"){
	a = c(-13.35212, 9.58615, 1.52968)
   b = c(1.79620, -2.59995, -0.27465)
   c = c(0.04482, 0.45997, -0.00961)
}else if (volumetype == "Scribner"){
   a = c(-22.50365, 17.53508, -0.59242)
   b = c(3.02888, -4.34381, -0.02302)
   c = c(-0.01969, 0.51593, -0.02035)
}else if (volumetype == "Doyle"){ 
	a = c(-29.37337, 41.51275, 0.55743)
	b = c(2.78043, -8.77272, -0.04516)
   c = c(0.04177, 0.59042,  -0.01578)
}else{
  cat("volumetype not found!")
}

v1 = (a[1] + a[2] * L + a[3] * L**2) 
v2 = (b[1] + b[2] * L + b[3] * L**2) * dbh 
v3 = (c[1] + c[2] * L + c[3] * L**2) * dbh**2 
volume = (v1 + v2 + v3) * cor
volume
}

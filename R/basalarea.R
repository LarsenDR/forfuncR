basalarea = function( dia, weight, unittype="imperial" )
{
# Function to calculate the basal area per unit area
# weight is the expansion factor to convert the sample area number to 
# the unit area.
# By David R. Larsen, Copyright, October 9, 2012
# Creative Commons http://creativecommons.org/licenses/by-nc/3.0/us/

  if ( unittype == "imperial" ){
    bat = 0.005454154 * dia ^ 2 * weight
  }else if ( unittype == "metic" ){
    bat = 0.00007854 * dia ^ 2 * weight
  }else{
    bat = rep( 0, length=length(dia) )
  }
  ba = sum(bat)
  ba
}

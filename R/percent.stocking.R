percent.stocking = function( tpa, ba, b = c(-0.00507, 0.01698, 0.00317), adj=1 )
{
#
#  Routine to calculate the percent stocking from tpa and ba
#
# these equations have only been developed in imperial units.
#
#  by David Larsen, Copyright January 20, 1999
#
  dia <- qmd( tpa=tpa, ba=ba )
  amd <- -0.259+.973*dia
  percent <- (tpa*(b[1]+b[2]*amd+b[3]*dia^2))
  if( percent < 0.0 ) percent = 0.0
  percent
}


qmd = function( ba, tpa, unittype="imperial" )
{
# Function to calculate the quadratic mean diameter from basal area and tree per acre
# by David R. Larsen, Copyright October 9, 2012
# Creative Commons http://creativecommons.org/licenses/by-nc/3.0/us/

   if (unittype == "imperial"){
       qmd = sqrt((ba / tpa) / 0.005454154)
   }else if (unitype == "metric"){
       qmd = sqrt((ba / tpa) / 0.00007854)
   }else{
       qmd = 0
   }
   qmd
}

upland.oak <- c(-0.00507, 0.01698, 0.00317)
northern.red.oak <- c(-0.02476, 0.004182, 0.00267)
sugar.maple <- c(-0.003082, 0.006272, 0.00469)
black.cherry <- c(-0.002794, 0.01545, 0.000871)
red.maple <- c(-0.01798, 0.02143, 0.001711)
black.walnut <- c(0.01646, 0.01347, 0.002757)
shortleaf.pine <- c(0.008798, 0.009435, 0.00253)
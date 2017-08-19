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

sdi = function( tpa, qmd, unittype="imperial" )
{
# Function to calculate the stand density index
# by David R. Larsen, Copyright October 9, 2012
# Creative Commons http://creativecommons.org/licenses/by-nc/3.0/us/

  if (unittype == "imperial" ){
    sdi = tpa * ( qmd / 10 )^ 1.605
  }else if ( unittype == "metric" ){
    sdi = tpa * ( qmd / 25.4)^1.605
  }else{
    sdi = 0
  }
  sdi
}  
  

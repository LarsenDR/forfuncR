neloid=function( sdia, ldia, length, unittype="imperial", sameunits=F )
{
# Function to calucate Smalian's formula for cubic volume
# by David R. Larsen, Copyright October 30, 2012
# Creative Commons http://creativecommons.org/licenses/by-nc/3.0/us/

   neloid = 0
   if (unittype == "imperial"){
       if( sameunits == T ){
         As = pi * sdia^2
         Al = pi * ldia^2
       }else{
         As = pi * (sdia / 12.0)^2
         Al = pi * (ldia / 12.0)^2
       }
   }else if (unitype == "metric"){
       if( sameunits == T ){ 
         As = pi * sdia^2
         Al = pi * ldia^2
       }else{
         As = pi * (sdia / 12.0)^2
         Al = pi * (ldia / 12.0)^2
       } 
   }else{
     cat( "Error: unknown unittype" )
   }
   neloid = length / 4 * ( As + (As^2 * Al)^(1/3) + (As * Al^2)^(1/3) + Al )
   neloid
}
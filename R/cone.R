cone=function( sdia, ldia, length, unittype="imperial", sameunits=F )
{
# Function to calucate Smalian's formula for cubic volume
# by David R. Larsen, Copyright October 30, 2012
# Creative Commons http://creativecommons.org/licenses/by-nc/3.0/us/

   cone = 0
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
   cone = length / 3 * ( As + sqrt(As * Al) + Al )
   cone
}
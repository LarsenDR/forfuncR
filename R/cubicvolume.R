cubicvolume=function( sdia, ldia, length,  unittype="imperial", sameunits=F )
{
# Function to calculate omined cubic volume formula
# by David R. Larsen, Copyright October 30, 2012
# Creative Commons http://creativecommons.org/licenses/by-nc/3.0/us/

   smalian = 0
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
         As = pi * (sdia / 100.0)^2
         Al = pi * (ldia / 100.0)^2
       }
   }else{
     cat( "Error: unknown unittype" )
   }
   smalian = length / 2 * ( As + Al )
   cone = length / 3 * ( As + sqrt(As * Al) + Al )
   neiloid = length / 4 * (As + cbrt( As^2 * Al ) + cbrt( As * Al^2) +  Al )
   list( smalian=smalian, cone=cone, neiloid=neiloid)
}


cbrt=function(a){
# function to calculate a cube root
 sign(a) * abs(a)^(1/3) 
}
mobiomass = function( dbh, mht, species="black" )
{
# Function to calculate the biomass of a tree using Goerndt, 2016
# by David R. Larsen, Copyright April 22, 2020
#
  mobio = 0
  if ( mht > 0 ){
   if( species == "black" )  {
	mobio = 1.67079 + 0.04796 * dbh^2 + 0.81549 * log((dbh^2)*mht)
   } else if( species == "post" ) {
	mobio = -0.50714 + 0.01655 * dbh^2 + 0.81549 * Log((dbh^2)*mht)
   } else if( species == "hickory" ) {
	mobio = 0.70177 + 0.05791 * dbh^2 + 0.60755 * Log((dbh^2)*mht)
   } else if( species == "white" ) {
	mobio = 0.61557 + 0.00373 * dbh^2 + 0.71159 * Log((dbh^2)*mht)
   } else {
	mobio = 0.0
   }
  }
  mobio
}

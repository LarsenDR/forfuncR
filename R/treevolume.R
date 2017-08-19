treeVolume = function( dbh, mht, volumeType="boardfeet" )
{
# Function to calculate the volume of a tree using Beers, 1964
# by David R. Larsen, Copyright November 2, 2012
#
  volume = 0
  if ( mht > 0 ){
    a = (dbh^2 * (dbh + 190))/ 100000
    b = 1/100 * ((mht * (168 - mht))/64 + (32/mht))
    c = 475 + (3 * mht^2) / 128
    if( volumeType == "cords" ){
       volume = a * b
    }else if( volumeType == "cubic" ){
       volume = 76 * a * b
    }else if( volumeType == "cubicbark" ){
       volume = 92 * a * b
    }else if( volumeType == "boardfeet" ){
       volume = a * b * c
    }
  }
  volume
}
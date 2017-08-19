doyle = function( sdia, length )
{
# Function to calculate the Doyle Board Foot volume
# by David R. Larsen, Copyright November 2, 2012
# Creative Commons http://creativecommons.org/licenses/by-nc/3.0/us/

  doyle = ((sdia - 4) / 4 )^2 * length
  doyle
}  

scribner = function( sdia, length )
{
# Function to calculate the Scribner Board Foot volume
# by David R. Larsen, Copyright November 2, 2012
# Creative Commons http://creativecommons.org/licenses/by-nc/3.0/us/

  scribner = ( 0.79 * sdia^2 - 2 * sdia - 4) * (length / 16)
  scribner
}  

intVolume = function( sdia, length )
{
# Function to calculate the International Board Foot volume
# by David R. Larsen, Copyright November 2, 2012
# Creative Commons http://creativecommons.org/licenses/by-nc/3.0/us/
  if( length == 4 ){
    intVolume = 0.22 * sdia^2 - 0.71 * sdia
  }else if( length == 8 ){
    intVolume = 0.44 * sdia^2 - 1.20 * sdia - 0.30
  }else if( length == 12 ){
    intVolume = 0.66 * sdia^2 - 1.47 * sdia - 0.79
  }else if( length == 16 ){
    intVolume = 0.88 * sdia^2 - 1.52 * sdia - 1.36
  }else if( length == 20 ){
    intVolume = 1.10 * sdia^2 - 1.35 * sdia - 1.90
  }else if( length == 24 ){
    intVolume = 1.10 * sdia^2 - 1.35 * sdia - 1.90 + 0.22 * sdia^2 - 0.71 * sdia
  }else if( length == 28 ){
    intVolume = 1.10 * sdia^2 - 1.35 * sdia - 1.90 + 0.44 * sdia^2 - 1.20 * sdia - 0.30
  }else if( length == 32 ){
    intVolume = 1.10 * sdia^2 - 1.35 * sdia - 1.90 + 0.66 * sdia^2 - 1.47 * sdia - 0.79
  }else if( length == 36 ){
    intVolume = 1.10 * sdia^2 - 1.35 * sdia - 1.90 + 0.88 * sdia^2 - 1.52 * sdia - 1.36
  }else if( length == 40 ){
    intVolume = (1.10 * sdia^2 - 1.35 * sdia - 1.90) * 2 
  }
  intVolume
}  


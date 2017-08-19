int14Volume = function( sdia, length )
{
# Function to calculate the International 1/4"  Board Foot volume
# by David R. Larsen, Copyright November 2, 2012
# Creative Commons http://creativecommons.org/licenses/by-nc/3.0/us/
  if( length == 4 ){
    int14Volume = 0.22 * sdia^2 - 0.71 * sdia
  }else if( length == 8 ){
    int14Volume = 0.44 * sdia^2 - 1.20 * sdia - 0.30
  }else if( length == 12 ){
    int14Volume = 0.66 * sdia^2 - 1.47 * sdia - 0.79
  }else if( length == 16 ){
    int14Volume = 0.88 * sdia^2 - 1.52 * sdia - 1.36
  }else if( length == 20 ){
    int14Volume = 1.10 * sdia^2 - 1.35 * sdia - 1.90
  }else if( length == 24 ){
    int14Volume = 1.10 * sdia^2 - 1.35 * sdia - 1.90 + 0.22 * sdia^2 - 0.71 * sdia
  }else if( length == 28 ){
    int14Volume = 1.10 * sdia^2 - 1.35 * sdia - 1.90 + 0.44 * sdia^2 - 1.20 * sdia - 0.30
  }else if( length == 32 ){
    int14Volume = 1.10 * sdia^2 - 1.35 * sdia - 1.90 + 0.66 * sdia^2 - 1.47 * sdia - 0.79
  }else if( length == 36 ){
    int14Volume = 1.10 * sdia^2 - 1.35 * sdia - 1.90 + 0.88 * sdia^2 - 1.52 * sdia - 1.36
  }else if( length == 40 ){
    int14Volume = (1.10 * sdia^2 - 1.35 * sdia - 1.90) * 2 
  }
  int14Volume
}  
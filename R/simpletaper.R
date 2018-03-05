simpletaper=function(h, dbh, ht, htcb, stumpR, stemR, bh=4.5)
{
#  Function to calculate a simple taper equation
#  Copyright by David R. Larsen, August 14, 2012
#  Creative Commons,  http://creativecommons.org/licenses/by-nc/3.0/us/

  diameterCrownBase = dbh + stemR * (htcb - bh)
  crownLength = ht - htcb
  topRate = diameterCrownBase / crownLength
  
  simpleTaper = 0.0
    
  if (h < bh){
     simpleTaper = dbh + stumpR * (h - bh)
  }else if((h >= bh) And (h < htcb)){
     simpleTaper = dbh + stemR * (h - bh)
  }else{
     simpleTaper = (ht - h) * topRate
  }
  simpletaper
}
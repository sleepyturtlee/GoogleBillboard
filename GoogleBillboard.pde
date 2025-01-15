public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  

// problem: What to do about the decimal?
public void setup()  
{ 
  // make an exception case for the first 2 indexes (0, 1);
  if(isPrime(Double.parseDouble(e.substring(0, 10))) == true|| isPrime(Double.parseDouble(e.substring(1, 11))));
  // start at 2 to try and start from 7 in 2.718
    for(int i = 2; i < e.length()-10; i++) {
      // eg: at start, goes from index 0, up to but not including index 10 (that's 0-9 = 10 digits total)
      String digits = e.substring(i, i+10);
      double coolNum = Double.parseDouble(digits);
      if(isPrime(coolNum) == true) {
        System.out.println(coolNum);
        break;
      }
      
    }
} 
public boolean isPrime(double dNum)  
{   
    if(dNum < 2) {
      return false;
    }
    for(int i = 2; i < Math.sqrt(dNum); i++) {
      if(dNum % i == 0) {
        return false;
      }
    }
    return true;  
} 

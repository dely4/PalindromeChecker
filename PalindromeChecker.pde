public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(isPalindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}

public boolean isPalindrome(String sWord){
  if(noCapitals(onlyLetters(noSpaces(sWord))).equals(reverse(noCapitals(onlyLetters(noSpaces(sWord)))))){
    return(true);
  }
  return(false);
}

public String reverse(String sWord){
  String temp = "";
  for(int i = sWord.length()-1; i > -1; i--){
    temp += sWord.substring(i,i+1);
  }
  return(temp);
}

public String onlyLetters(String sString){
  String temp = "";
  for(int i = 0; i < sString.length(); i++){
    if(Character.isLetter(sString.charAt(i))){
      temp+=sString.substring(i,i+1);
    }
  }
  return(temp);
}
public String noCapitals(String sWord){
  return(sWord.toLowerCase());
}
public String noSpaces(String sWord){
  String[] temp = sWord.split(" ");
  String q = "";
  for(String current: temp){
    q+= current;
  }
  return(q);
}
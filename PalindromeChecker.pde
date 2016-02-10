public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  { 
    String s = lines[i];
    s = noCapitals(s);
    s = noSpaces(s);
    s = allLetters(s);
    if(palindrome(s)==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}

public boolean palindrome(String word)
{
  String temp = new String();
  for(int i=word.length()-1; i>=0; i--)
    temp = temp+word.charAt(i);
  if(temp.equals(word)) return true;
  return false;
}

public String reverse(String str)
{
   String temp = new String();
   for(int i=str.length()-1; i>=0; i--)
    temp = temp+str.charAt(i);
   return temp;
}
 
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}

public String noSpaces(String sWord){
  String s = new String();
  for(int i=0; i<sWord.length(); i++)
  {
    if(!sWord.substring(i,i+1).equals(" "))
      s = s+sWord.substring(i,i+1);
  }
  return s;
}

public String allLetters(String sString){
  String s = new String();
  for (int i=0; i<sString.length(); i++)
  {
   if(Character.isLetter(sString.charAt(i)) == true)
     s = s+sString.charAt(i);
  }
  return s;
}

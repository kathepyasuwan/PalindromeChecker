public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(reverse(lines[i]))==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String word2 = onlyLetters(word);
 if(word2.toLowerCase().equals(reverse(word2.toLowerCase())))
    return true;
    
return false;
  }
 

public String reverse(String str)
{
  String bruh = "";
  int last = str.length()-1;
  for(int i = last; i >= 0; i --) {
    bruh = bruh + str.substring(i, i+1);
  }
  return bruh;
}

public String onlyLetters(String sString){
  String result = new String();
  for(int i = 0; i < sString.length(); i++)
    if(Character.isLetter(sString.charAt(i)))
      result = result + sString.substring(i,i+1);
  return result;
}

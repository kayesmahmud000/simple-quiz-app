class  Palindrome{
bool isPalindrome( int x){
    int reverse =0;
    int number= x;

    while( number !=0){
        int lastNumber =number % 10;
          reverse =(reverse* 10)+lastNumber;
          number ~/ 10;
    }
    return true;
      
  

}
}
void main(){
   Palindrome palindrome =Palindrome();
   var p =palindrome.isPalindrome(245);
  print( p);
}
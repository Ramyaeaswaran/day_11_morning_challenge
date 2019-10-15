import 'dart:math';

// Challenge 1
// Create a function that returns the total number of steps it takes to transform each element to the maximal element in the list.
// Each step consists of incrementing a digit by one.
// Examples
// incrementToTop([3, 4, 5]) ➞ 3
// 3 increments: 3 -> 4, 4 -> 5; 4 -> 5
// incrementToTop([4, 3, 4]) ➞ 1
// incrementToTop([3, 3, 3]) ➞ 0
// incrementToTop([3, 10, 3]) ➞ 14
incrementToTop(List<int> n){
  int steps=0;
int maxvalue =n.reduce(max);
for(int i=0;i<n.length;){
  if(n[i]!=maxvalue){
    n[i]+=1;
    steps++;
    continue;
  }
  i++;
}
  return steps;
}


 count(List<dynamic> num){
  int value=0;
 for(int i=0;i<num.length;i++){
   if(num[i] ==10 || num[i]=='J' || num[i]=='Q'|| num[i]=='K' || num[i]=='A'){
  value-=1;
   } else if(num[i]==2 || num[i]==3 || num[i]==4 || num[i]== 5 || num[i]==6){
    value+=1;
   }else{
     value+=0;
   }
 }
 return value;
}

// Challenge 2
// In BlackJack, cards are counted with -1, 0, 1 values:
//
//  - 2, 3, 4, 5, 6 are counted as +1
//  - 7, 8, 9 are counted as 0
//  - 10, J, Q, K, A are counted as -1
//  Create a function that counts the number and returns it from the list of cards provided.
//  count([5, 9, 10, 3, "J", "A", 4, 8, 5]) ➞ 1
//
//  count(["A", "A", "K", "Q", "Q", "J"]) ➞ -6
//
//  count(["A", 5, 5, 2, 6, 2, 3, 8, 9, 7]) ➞ 5

// Challenge 3
// Write a test case each for previous two functions you wrote



 main() {
  print(incrementToTop([3, 10, 3]));
  print(count(["A", 5, 5, 2, 6, 2, 3, 8, 9, 7]));
}

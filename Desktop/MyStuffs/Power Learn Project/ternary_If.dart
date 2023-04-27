void main(){
  int score = 80;
  //if statement
  if(score >= 60){
    print("You passed");
  }
  else{
    print("You failed");
  }
  //ternary operator
  const score1 = 83;
  const message = (score1 >= 60)? "You passed" : "You failed";

  //Switch statement
  const score2 = 85;
  switch (score2) {
    case 65:
    // code
    break;
    case 40:
    // code
    break;
    default:
// code
}

}
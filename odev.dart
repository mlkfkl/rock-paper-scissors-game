
import 'dart:io';
import 'dart:math';

enum vote{rock,paper,scissors}

void  main(){

var pc=0;
var you=0;
var movement="";


  while(pc<3 && you<3)
  {
  print("Choose Move");
  movement = stdin.readLineSync() ?? "";
  movement=movement.toLowerCase();

  var automatic = new Random().nextInt(vote.values.length);

    if (movement=='q') 
    {
    print('You Left The Game');
    exit(0);
    }

    if(movement.isEmpty || (movement!='rock'&&  movement!='paper' && movement!='scissors' ))
    {
      continue;
    }

    if(automatic==0 )
    {
    if (movement=='rock')
    {
    print("Computer Selection: Rock  Conclusion: Draw");
    }
    else if ( movement=='paper')
    {
    print("Computer Selection: Rock  Conclusion: You Win");
    you++;
    }
    else if(movement=='scissors'){
    print("Computer Selection: Rock  Conclusion: You Lost");
    pc++;
    }
    }

    else if(automatic==1 )
    {
    if (movement=='paper')
    {
    print("Computer Selection: Paper  Conclusion: Draw");
    }
    else if ( movement=='scissors')
    {
    print("Computer Selection: Paper  Conclusion: You Win");
    you++;
    }
    else if (movement=='rock')
    {
    print("Computer Selection: Paper  Conclusion: You Lost");
    pc++;
    }
    }

    else if(automatic==2 )
    {
    if (movement=='scissors')
    {
    print("Computer Selection: Scissors  Conclusion: Draw");
    }
    else if ( movement=='rock')
    {
    print("Computer Selection: Scissors  Conclusion: You Win");
    you++;
    }
    else if(movement=='paper') 
    {
    print("Computer Selection: Scissors  Conclusion: You Lost");
    pc++;
    }
    }

    print('You:$you' + ' Computer:$pc ');
    }
   
    
    
   
   
  }
    


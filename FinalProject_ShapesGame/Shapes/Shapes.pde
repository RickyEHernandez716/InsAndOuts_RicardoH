class rectangle{
  float x; 
  float y;
  float shapeWidth; 
  float shapeHeight;
  
  rectangle(){
    x = random(700);
    y = 0; 
   
  }
  
  //This chunk of functions is just to able to display 
  //Shapes from the Shapes class to the actual game. 
  void displayRectangle(){
  fill(255); 
  rect (x,y,shapeWidth,shapeHeight);
  }
  
  //This functions is to make the Shapes 
  void fallingShapes(){
  y++;
  }
}

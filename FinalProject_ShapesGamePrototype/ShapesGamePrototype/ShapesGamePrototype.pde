Shapes[] trash = new Shapes[25];

void setup(){
size(1000,1000);
for(int i = 0; i < trash.length; i++){
trash[i] = new Shapes();
  }
}

void draw(){
background(0);
for(int i = 0; i < trash.length; i++){
trash[i].spawnTrash();
trash[i].moveTrash();
  }
}

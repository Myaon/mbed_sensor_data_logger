import processing.serial.*;

Serial port;
String myString = null;

int y = 36;
int count = 0;
int jp_time;

void setup(){
  size(1000,1000);
  background(0);
  frameRate(30);
  port = new Serial(this,"COM5",9600);
  surface.setResizable( true );
  textSize(36);
}

void draw(){
  if(port.available() > 0){
    myString = port.readStringUntil(10);
    if(myString != null){
      count=count+1;
      
      myString = trim(myString);
      println(myString);
      colorMode(RGB,256);
      noStroke();
      fill(0,0,0);
      //rect(200, 0, 240, 400);
      
      
      if(count==1){
        rect(140, 0, 300, 40)
        ;
        rect(0, 450, 300, 80);
        fill(255,255,255);
        //only num
        
        if(myString.length() >= 13){
          //jp_time = 9 + Integer.parseInt(myString.substring(7,9));
          jp_time = 9 + Integer.parseInt(myString.substring(7,8));
          //text(myString.substring(0,9)+":"+myString.substring(9,11)+":"+myString.substring(11,13),10,36);
          text(myString.substring(0,6)+str(jp_time)+":"+myString.substring(8,10)+":"+myString.substring(10,12),10,36);
          //text(str(jp_time),10,500);
        }
        
        //text(myString,10,36);
      }
      
      if(count==2){
        rect(110, 36, 240, 40);
        fill(255,255,255);
        text(myString,10,72);
      }
      
      if(count==3){
        rect(120, 72, 300, 40);
        fill(255,255,255);
        text(myString,10,108);
      }
      
      if(count==4){
        rect(160, 108, 240, 40);
        fill(255,255,255);
        text(myString,10,144);
      }
      
      if(count==5){
        rect(200, 144, 300, 40);
        fill(255,255,255);
        text(myString,10,180);
      }
      
      if(count==6){
        rect(200, 180, 240, 40);
        fill(255,255,255);
        text(myString,10,216);
      }
      /*
      if(count==7){
        rect(200, 216, 240, 40);
        fill(255,255,255);
        text(myString,10,252);
      }
      */
      
      if(count==7){
        count=0;
      }
    }
  }
}

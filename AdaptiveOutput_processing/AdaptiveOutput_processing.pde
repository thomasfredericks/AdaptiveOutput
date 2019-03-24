


AdaptiveOutput output;

PImage img;

void setup() {
  
   // SET ANY SCREEN SIZE, EVEN FULLSCREEN
   // THIS IS JUST YOUR WINDOW SIZE.
   // YOU WILL SET YOUR WORKING SKETCH SIZE LATER.
  //size(1500,700,P3D);
  fullScreen(P3D);
  
  // THIS IS THE OUTPUT TO WHICH
  // YOU SHOULD DRAW. IT WILL ALWAYS BE RESIZED
  // TO FIT YOUR WINDOW *BUT* WILL KEEP THE 
  // PROPER RATIO. IF YOUR ARE USING VIDEO, IT 
  // COULD FOR EXAMPLE BE THE RESOLUTION OF THE 
  // VIDEO.
   output = new AdaptiveOutput(this,1024,1024);
   
   // SPECIAL CONSIDERATIONS:
   
   // USE output.mouseX INSTEAD OF mouseX.
   
   // USE output.mouseY INSTEAD OF mouseY.
   
   // USE output.width INSTEAD OF width.
   
   // USE output.height INSTEAD OF height.
   
   // USE output.windowLeft, output.windowTop, output.windowWidth 
   // AND output.windowHeight FOR THE COORDINATES OF THE WINDOW
   
   // USE output.centerX AND output.centerY FOR THE CENTER
   
   // [Washakie, Chief of Shoshones, head-and-shoulders portrait, facing front]
   // https://picryl.com/media/washakie-chief-of-shoshones-head-and-shoulders-portrait-facing-front
   img = loadImage("Washakie.jpg");
  
}

void draw() {
  
  // WHEN YOU WANT TO DRAW, ALWAYS ENTER THE MATRIX FIRST
  output.enterMatrix();
  
  // FILL THE WHOLE WINDOW
  fill(255,0,0);
  rect(output.windowLeft, output.windowTop, output.windowWidth, output.windowHeight);
  
  // FILL ONLY THE FITTED AREA I.E.
  fill(0,255,0);
  noStroke();
  rect(0, 0, output.width, output.height);
  
  // DRAW ON THE AREA WITH A FIXED RESOLUTION OF 1375 BY 448
  imageMode(CENTER);
  image(img,output.centerX,output.centerY);
  
  fill(255);
  noStroke();
  ellipse( output.mouseX, output.mouseY, 30,30);
  
 
  // EXIT THE OUTPUT MATRIX WHEN YOU ARE DONE DRAWING
  output.exitMatrix();
  
}

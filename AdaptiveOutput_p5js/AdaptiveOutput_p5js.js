let output;

function setup() {
  
  createCanvas(windowWidth,windowHeight);
  
  output = new AdaptiveOutput(640,640);
  
}


function draw() {

  background(0);
  
  
  output.enterMatrix();
  
  let ellipseWidht = (frameCount % 640) ;
  let ellipseHeight = (frameCount % 640) ;

  noStroke();
  fill(255);
  
  ellipse( 320, 320, ellipseWidht, ellipseHeight);

  fill(255,0,0);
  ellipse(output.mouseX, output.mouseY, 10, 10);

  console.log(output.scale);
  
 output.exitMatrix();
  
  
}

function windowResized(){
  resizeCanvas(windowWidth, windowHeight);
}


class AdaptiveOutput {
  

  constructor (  originalWidth,  originalHeight) {
    this.width = originalWidth;
    this.height = originalHeight;
    this.calculate();
  }
  
    calculate() {
     this.scaleX = width/this.width;
     this.scaleY = height/this.height;
     this.scale = min(this.scaleX, this.scaleY);
     this.left = 0;
     this.top = 0;
     this.windowLeft = -((width/this.scale)-this.width)*0.5;
     this.windowTop = -((height/this.scale)-this.height)*0.5;
     this.windowWidth = width / this.scale;
     this.windowHeight= height / this.scale;
     this.windowBottom = this.windowHeight + this.windowTop;
     this.windowRight = this.windowWidth + this.windowLeft ;
     this.centerX = this.width *0.5;
     this.centerY = this.height *0.5;
     
  }
  
  
   enterMatrix() {
    push();
    this.calculate();
    scale(this.scale);
    translate(-this.windowLeft,-this.windowTop);
    this.mouseX = mouseX / this.scale + this.windowLeft;
    this.mouseY = mouseY / this.scale + this.windowTop;
  }
  
  
   exitMatrix() {
    pop();
  }
  
  
 
};

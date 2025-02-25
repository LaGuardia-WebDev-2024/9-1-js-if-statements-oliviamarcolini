//setup Function - will automatically run Once
setup = function(){
    size(400, 400); 
    frameRate(30); 
}

var y = 0;  // position of the ball
var x = 0;
var randompos = random(0, 400);
var speed = 5;  // how far the ball moves every time

//draw Function - will run repeatedly
draw = function() {
    background(255, 255, 255, 150);

    fill(66, 66, 66);
    ellipse(200, y, 50, 50);
    ellipse(x, 200, 50, 50); 
    ellipse(x, y, 50, 50);
    
    if (y > 375) {
    speed = -5;
    }
    
    if (y < 25) {
    speed = 5;
    }

    x = x + speed;
    y = y + speed;  // move the ball
};
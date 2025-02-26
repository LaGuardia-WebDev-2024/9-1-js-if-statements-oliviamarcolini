//setup Function - will automatically run Once
setup = function(){
    size(400, 400); 
    frameRate(30); 
}

var y = 0;  // position of the ball
var x = 0;
var randomposX = random(0, 400);
var randomposY = random(0, 400);
var randomspeed = 5;
var speed = 5;  // how far the ball moves every time

//draw Function - will run repeatedly
draw = function() {
    background(255, 255, 255, 150);

    ellipse(200, y, 50, 50);
    ellipse(x, 200, 50, 50); 
    ellipse(x, y, 50, 50);
    ellipse(randomposX, randomposY, 50, 50);
    
    if (y > 375) {
    speed = - 5;
    fill(random(0, 255), random(0, 255), random(0, 255));
    }
    
    if (y < 25) {
    speed = 5;
    fill(random(0, 255), random(0, 255), random(0, 255));
    }
    
    if (randomposX > 375) {
    randomspeed = - 5;
    }
    
    if (randomposX < 25) {
    randomspeed = 5;
    }
    
   
    
    randomposX = randomposX + randomspeed;
    x = x + speed;
    y = y + speed;  // move the ball
};
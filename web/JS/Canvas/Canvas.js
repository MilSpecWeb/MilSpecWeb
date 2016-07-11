var canvas = document.getElementById("Canvas"),
        ctx = canvas.getContext("2d"), xLine = 10, yLine = 10, raf;
var ball = {
    x: 0,
    y: 0,
    vx: 0,
    vy: 0,
    radius: 0,
    color: '',
    setX: function(x){this.x = x;},
    getX: function(){return this.x;},
    setY: function(y){this.y = y;},
    getY: function(){return this.y;},
    setVX: function(vx){this.vx = vx;},
    getVX: function(){return this.vx;},
    setVY: function(vy){this.vy = vy;},
    getVY: function(){return this.vy;},
    setRadius: function(radius){this. radius = radius;},
    getRadius:function(){return this.radius;}, 
    setColor: function(color){this.color = color;},
    getColor:function(){return this.color},
    draw: function (x,y,vx,vy,radius,color) {
        this.setX(x);
        this.setY(y);
        this.setVX(vx);
        this.setVY(vy);
        this.setColor(color);
        this.setRadius(radius);
        ctx.beginPath();
        ctx.arc(this.getX(), this.getY(), this.getRadius(), 0, Math.PI * 2, true);
        ctx.closePath();
        ctx.fillStyle = this.getColor();
        ctx.fill();
    },
    defaultDraw: function (){
        this.setX(100);
        this.setY(100);
        this.setColor('blue');
        this.setRadius(25);
        this.setVX(5);
        this.setVY(2);
        ctx.beginPath();
        ctx.arc(this.getX(), this.getY(), this.getRadius(), 0, Math.PI * 2, true);
        ctx.fillStyle=this.getColor();
        ctx.fill();
    }
};
function draw() {
    ctx.clearRect(0, 0, canvas.width, canvas.height);
    ball.defaultDraw();
    ball.vx += ball.getVX();
    ball.vy += ball.getVY();
    if (ball.y + ball.vy > canvas.height || ball.y + ball.vy < 0) {
        ball.vy = -ball.vy;
    }
    if (ball.x + ball.vx > canvas.width || ball.x + ball.vx < 0) {
        ball.vx = -ball.vx;
    }
    
    ball.draw(50,50,5,2,20,'white');
  raf = window.requestAnimationFrame(draw);
}
canvas.addEventListener('mouseover', function (e) {
  raf = window.requestAnimationFrame(draw);
});
canvas.addEventListener('mouseout', function (e) {
    window.cancelAnimationFrame(raf);
});
ball.defaultDraw();
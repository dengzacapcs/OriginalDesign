ArrayList <Ball> al= new ArrayList<Ball>();
int BALL_SIZE = 5;
void setup()
{
  size(480, 640);
}
void addCircle(int x, int y) {
  Ball b = new Ball();
  b.x = x; 
  b.y = y;
  b.dx =  (int)( Math.random()*5-2.5);
  b.dy = (int)(Math.random()*5-2.5);
  al.add(b);
}
void update() {

  for (Ball b : al) {
    b.x+=b.dx;
    b.y+=b.dy;

    if (b.x > 480-BALL_SIZE) {
      b.dx *= -1;
      b.x = 480-BALL_SIZE;
    }
    if (b.x <BALL_SIZE) {
      b.dx *= -1;
      b.x = BALL_SIZE;
    }
    if (b.y > 640-BALL_SIZE) {
      b.dy *= -1;
      //b.dx *= 0.8;
      b.y = 640-BALL_SIZE;
    }
    if (b.y < BALL_SIZE) {
      b.dy *= -1;
      b.y = BALL_SIZE;
    }
  }
}
void draw()
{
  if (mousePressed) {
    addCircle(mouseX, mouseY);
  }
  for (Ball b : al) {
    ellipse(b.x, b.y, BALL_SIZE, BALL_SIZE);
  }
  update();
}

public class Ball {
  int x;
  int y;
  int dx;
  int dy;
}
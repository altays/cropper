// places image on canvas randomly based on size of canvas and size of image
// image needs to be larger than the canvas

// cover art dimensions 3000 x 3000
// 480 resolutions 640 x 480

PImage img;
int randXlim;
int randYlim;


void setup() {
  size(640,480); //change dimensions here
  img = loadImage("IMG_2891a.png");
  
  randXlim = img.width - width;
  randYlim = img.height - height;  
  
  float drawX = random(randXlim) * -1;
  float drawY = random(randYlim)*-1;
  image(img, drawX, drawY);
  print(drawX, drawY);
}

void draw() {
  if (keyPressed) {
      if (key == 'p' || key == 'P') {
        int randAppendFloat=int(random(100000));
        int randAppendInt=int(random(10));
      
        save("/bounces/export"+randAppendInt+"_"+randAppendFloat+".png");
    } if (key == ENTER) {
        float drawX = random(randXlim) * -1;
        float drawY = random(randYlim)*-1;
        image(img, drawX, drawY);
        print(drawX, drawY);
    }
  }

}


// export image in designated dimensions

// enter to generate a new image

// p to save image

float[] values;
int i = 0;

void setup() {
  size(800, 500);
  values = new float[width];
  for (int i = 0; i < values.length; i++) {
    values[i] = random(height);
    // Noise Mountain
    //values[i] = noise(i / 100.0) * height;
  }
 
 //values = sort(values);

}

void draw() {
  background(0);
  
  if (i < values.length) {
    for (int j = 0; j < values.length - 1 - i; j++) {
      float temp1 = values[j];
      float temp2 = values[j + 1];
      if (temp1 > temp2) {
        swap(values, j, j + 1);
      }
    }
  } else {
    println("finished");
    noLoop();
  }
  
  i = i + 1;
  
  for (int i = 0; i < values.length; i++) {
    stroke(255);
    line(i, height, i, height - values[i]);
  }
}

void swap(float[] arr, int i, int j) {
  float temp = arr[i];
  arr[i] = arr[j];
  arr[j] = temp;
}

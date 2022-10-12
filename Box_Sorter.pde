int[] randomNum = new int[56];

void setup() {
  size(1405, 150);

  for (int i = 0; i < randomNum.length; i++) {
    randomNum[i] = int(random(255));
  }
}

void draw() {
  background(0, 0, 20);

  for (int i = 0; i < randomNum.length; i++) {
    noStroke();
    fill(randomNum[i],0,255-randomNum[i]);
    square(i * 25 + 5, 65, 20);
    fill(255, 0, 0);
    text(randomNum[i], i*25+5, 55);
  }

  for (int i = 0; i < randomNum.length - 1; i++) {
    if (randomNum[i] < randomNum[i + 1]) {
      swap(randomNum, i, i+1);
    }
  }
}

void swap(int[] arr, int numX, int numY) {
  int temp;
  temp = arr[numX];
  arr[numX] = arr[numY];
  arr[numY] = temp;
}

PImage img;  // Declare a variable of type PImage
Table Export;
PrintWriter output;
String str;

void setup() {
  size(5,5);
  img = loadImage("Untitled.png");
  str = "Colors = {'";
  output = createWriter("output.txt"); 
  loadPixels();
  int[] numbers = new int[img.pixels.length];
  for (int i = 0; i < img.pixels.length; i++) {
    numbers[i] = img.pixels[i];
  };
  for (int i = 0; i < numbers.length; i++) {
   println(brightness(numbers[i]));
   if (i == numbers.length) {
     str = str + nf(brightness(numbers[i])) + "'}";
   } else {
     str = str + nf(brightness(numbers[i])) + "', '";
   };
  };
  output.println(str);
  //println(str);
  output.flush();
  output.close();
  exit();
}

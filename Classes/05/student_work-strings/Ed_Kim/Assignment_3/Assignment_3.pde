char[] objects = {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '*', '.'}; // Fills the night sky
int size = 160; // Used to determine the length and width of the sky

for (int i = 0; i < (size / 16); i = i++)
{
  String sky_layer = "";
  for (int j = 0; j < size; j = j + 1)
  {
    int index = int(random(objects.length));
    sky_layer = sky_layer + objects[index];
  }
  println("\n");
  println(sky_layer);
}
println("\n");
println("Starry Sky");
for (int k = 0; k < size; k = k + 1)
{
  print('_');
}

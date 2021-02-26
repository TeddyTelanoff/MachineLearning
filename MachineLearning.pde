float num;
Node node = RandomNode();

void setup() {
  size(1280, 720);
  frameRate(5);
}

void draw() {
  background(64);
  
  num = random(120);
  NextGen();
  
  println(num);
  println(HardCode(num));
  println(AI(num));
  println();
}

boolean HardCode(float n)
{
  return int(n) % 2 == 0;
}

float Solve(float n)
{
  return (node.WeightMul * n + node.WeightAdd) / node.WeightDiv;
}

float Solve(float x, float y)
{
  return (y + node.WeightAdd) / node.WeightDiv + node.WeightMul * x;
}

boolean AI(float n)
{
  return Solve(n) > .5;
}

void NextGen()
{
  Node next = RandomNode();
  next.WeightAdd = Solve(next.WeightAdd, node.WeightAdd);
  next.WeightAdd = Solve(next.WeightMul, node.WeightMul);
  next.WeightAdd = Solve(next.WeightDiv, node.WeightDiv);
}

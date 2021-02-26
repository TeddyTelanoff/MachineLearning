class Node
{
  float WeightAdd, WeightMul, WeightDiv;
  
  Node(float weightAdd, float weightMul, float weightDiv)
  {
    WeightAdd = weightAdd;
    WeightMul = weightMul;
    WeightDiv = weightDiv;
  }
  
  void Print()
  {
    println("{ Add: ", WeightAdd, "Mul: ", WeightMul);
  }
}

Node RandomNode()
{
  return new Node(random(1), random(1), random(1, 100));
}

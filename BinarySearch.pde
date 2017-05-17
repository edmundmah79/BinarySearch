private Item[] store = 
{
  new Item(184, 14), 
  new Item(196, 60), 
  new Item(206, 31), 
  new Item(2370, 65), 
  new Item(7282, 73), 
  new Item(8303, 90), 
  new Item(12328, 63), 
  new Item(12705, 14), 
  new Item(13066, 8), 
  new Item(14088, 92), 
  new Item(15320, 82), 
  new Item(15814, 60), 
  new Item(15917, 51), 
  new Item(17911, 96), 
  new Item(18061, 3), 
  new Item(18410, 56), 
  new Item(18465, 27), 
  new Item(18618, 64), 
  new Item(18871, 69), 
  new Item(19967, 45)
};                             
public int linearSearch(int catNumToFind)
{
  //complete this method
  for(int i = 0; i < store.length; i++)
  {
    if(catNumToFind == store[i].getCatNum())
    {
      return store[i].getInventory();
    } 
  }
  return -1;
}
public int recursiveLinearSearch(int catNumToFind, int startIndex)
{
  //complete this method
  int i = startIndex;
  if(store[i].getCatNum() == catNumToFind)
  {
    return store[i].getInventory();
  }
  else if(i >= store.length-1)
  {
    return -1;
  }
  else 
  {
    i++;
    return recursiveLinearSearch(catNumToFind, i);
  }
}
public int binarySearch(int catNumToFind)
{
  //complete this method    
  int low = 0;
  int high = store.length-1;
  while(low<=high)
  {
    int mid = (low+high)/2;
    if(store[mid].getCatNum() > catNumToFind)
    {
      high = mid-1;
    }
    else if(store[mid].getCatNum() < catNumToFind)
    {
      low = mid+1;
    }
    else
    {
      return store[mid].getInventory();
    }
  }
  return -1;
}
public int recursiveBinarySearch(int catNumToFind, int nLow, int nHigh)
{
  //complete this method    
  int nMid = (nHigh+nLow)/2;
  if(nLow<=nHigh)  
  {  
    if(store[nMid].getCatNum() < catNumToFind)
    {
      return recursiveBinarySearch(catNumToFind, nMid+1, nHigh);
    }
    else if(store[nMid].getCatNum() > catNumToFind)
    {
      return recursiveBinarySearch(catNumToFind, nLow, nMid-1);
    }
    else
    {
      return store[nMid].getInventory();
    }
  }
  return -1;
}
public void setup()
{
  int[] tests = {0, 183, 184, 2370, 15320, 19967, 19968};
  System.out.println();
  System.out.println("Testing Non-Recursive Linear Search");
  System.out.println("=====================");
  for (int i = 0; i < tests.length; i++)
  {

    if (linearSearch(tests[i]) != -1)
      System.out.println("Catalog #"+tests[i]+" has "+linearSearch(tests[i]) + " in stock");
    else
      System.out.println("Catalog #"+tests[i]+" not found");
  }
  System.out.println();
  System.out.println("Testing Recursive Linear Search");
  System.out.println("=====================");
  for (int i = 0; i < tests.length; i++)
  {

    if (recursiveLinearSearch(tests[i],0) != -1)
      System.out.println("Catalog #"+tests[i]+" has "+recursiveLinearSearch(tests[i],0) + " in stock");
    else
      System.out.println("Catalog #"+tests[i]+" not found");
  }
  System.out.println();
  System.out.println("Testing Non-Recursive Binary Search");
  System.out.println("===================================");
  for (int i = 0; i < tests.length; i++)
  {

    if (binarySearch(tests[i]) != -1)
      System.out.println("Catalog #"+tests[i]+" has "+binarySearch(tests[i]) + " in stock");
    else
      System.out.println("Catalog #"+tests[i]+" not found");
  }
  System.out.println();
  System.out.println("Testing Recursive Binary Search");
  System.out.println("===============================");
  for (int i = 0; i < tests.length; i++)
  {

    if (recursiveBinarySearch(tests[i], 0, store.length - 1) != -1)
      System.out.println("Catalog #"+tests[i]+" has "+recursiveBinarySearch(tests[i], 0, store.length - 1) + " in stock");
    else
      System.out.println("Catalog #"+tests[i]+" not found");
  }
}

public void draw()
{
  //empty!
}








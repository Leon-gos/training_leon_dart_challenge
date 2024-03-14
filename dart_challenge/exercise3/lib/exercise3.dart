List<int> intersectList(List<int> a, List<int> b) {

  Set<int> setA = Set.from(a);
  Set<int> setB = Set.from(b);

  List<int> result = [];

  for(int i in setA) {
    if(setB.contains(i)){
      result.add(i);
    }
  }

  return result;
}

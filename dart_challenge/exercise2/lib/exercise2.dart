List<int> findDivisors(int num) {
  List<int> result = [];

  for(int i=1; i<=num/2; i++) {
    if(num%i == 0) {
      result.add(i);
    }
  }
  result.add(num);

  return result;
}

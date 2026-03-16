void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  print(numbers.remove(20)); // 20 not found return false
  print(numbers.removeAt(3)); // 4 returned and removed from list
  print(numbers); // [1,2,3,5]
}

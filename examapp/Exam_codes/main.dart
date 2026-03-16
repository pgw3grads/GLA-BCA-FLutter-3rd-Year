import 'Bank.dart';

void main() {
  Bank b = Bank();
  b.x; // allowed
  b._balance; // not-allowed
}

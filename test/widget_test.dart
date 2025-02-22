int countDigits(double number) {
  return number.abs().toString().replaceAll(RegExp(r'[^0-9]'), '').length;
}

main() {
  double num = 278554;

  int tenMultiple = 10;
  int count = 0;
  double manipluatedNum = num;

  while (manipluatedNum.ceil() != manipluatedNum.floor()) {
    manipluatedNum = num * tenMultiple;
    count = count + 1;
    tenMultiple = tenMultiple * 10;
  }

  print(countDigits(12.345));
  print("$count decimal place(s) present in the $num (given number).");
}
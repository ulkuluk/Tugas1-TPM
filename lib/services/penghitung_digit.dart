class penghitungDigit {
  int hitungDigit(double angka) {
    return angka.abs().toInt().toString().length;
  }

  int hitungDigitDesimal(double angka) {
    int tenMultiple = 10;
    int count = 0;
    double manipluatedNum = angka;

    while (manipluatedNum.ceil() != manipluatedNum.floor()) {
      manipluatedNum = angka * tenMultiple;
      count = count + 1;
      tenMultiple = tenMultiple * 10;
    }
    return count;
  }
}

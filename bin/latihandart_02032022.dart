import 'dart:io';

void pola1(int n1) {}

void pola2(int n2) {
  int del = 0, n = 1, m = n2, _m = n2;
  if (n2 > 9) {
    _m = 9;
  }
  m = _m;

  for (int i = 0; i < n2; i++) {
    for (int j = 1; j <= n2; j++) {
      if (n == 10) {
        n = 1;
      }
      if (j > n2 - del) {
        stdout.write(" ");
      } else {
        stdout.write(n);
      }
      n++;
    }

    for (int j = 1; j <= n2; j++) {
      if (m == 0) {
        m = 9;
      }
      if (j <= del) {
        stdout.write(" ");
      } else {
        stdout.write(m);
      }
      m--;
    }
    print(" ");
    n = 1;
    m = _m;
    del++;
  }
}

void main(List<String> arguments) {
  // stdout.write("n1 : ");
  //int n1 = int.parse(stdin.readLineSync()!);

  // stdout.write("n2 : ");
  //int n2 = int.parse(stdin.readLineSync()!);

  //pola1(5);
  pola2(8);
}

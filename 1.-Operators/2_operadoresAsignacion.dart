void main() {
  int a = 20;
  int b = 3;
  int c = 2;
  int d = 1;
  int e = 4;
  int f = 5;
  double g =
      6; //es tipo double porque si fuera int la division 6/2=3.0 y el tipo int no acepta el 3.0 Si queremos usar las variables con int deberiamos hacer la division entera ~/
  double h = 2;
  int i = 9;
  int j = 3;

  a = a + b;
  print(a); // la suma de a y b da 23.
  /* Lo anterior puede escribirse:
     a += b;
     da tambien 23 
  */
  c -= d;
  print(c); // resta 2 menos 1 y ese resultado se graba en c=1.

  e *= f;
  print(e); //multiplica 4 por 5 y asigna ese valor a e=20.

  g /= h;
  print(g); // divide 6 entre 2, g=3.0

  i ~/= j;
  print(i); // divide 9 entre 3 y da i=3

  a %= b;
  print(a); // hace la division de a entre b y toma el residuo.
}

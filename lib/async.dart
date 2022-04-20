void main() async {
//  await getOrder(10).then((String status){
//    print("sukses");
//    print(status);
//  }).catchError((error){
//   print("error");
//    print(error);
//  });
  
  try{
    String status = await getOrder(3);
    print("sukses");
    print(status);
  } catch(error){
    print("error");
    print(error);
  } finally {
    pertama();
    kedua();
  }
  
  
}

void pertama() {
  print("data 1");
}

void kedua() {
  print("data 2");
}

Future<String> getOrder(int beli){
  int stok = 5;

  return Future.delayed(Duration(seconds: 2), () {
    if (stok > beli) {
      return "Berhasil membeli barang sebanyak $beli";
    } else {
      throw "Tidak Berhasil membeli barang karena stok kurang";
    }
  });
}

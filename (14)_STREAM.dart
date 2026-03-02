void main() { 
  //print('Stream value: ${emitNumbers()}');
  emitNumbers().listen((value){
    print('Stream value: $value');
  });
}

Stream<int> emitNumbers(){
  return Stream.periodic(const Duration(seconds: 1), (value){
    return value;
  }).take(5); //Ponemos el take para limitar la cantidad de veces
}
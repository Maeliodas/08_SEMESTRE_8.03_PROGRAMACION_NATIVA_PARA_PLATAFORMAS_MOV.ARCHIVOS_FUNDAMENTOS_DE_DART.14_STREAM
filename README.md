El decimo cuarto codigo, el uso de Stream, el cual es el siguiente
```dart
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
```

Como se aprecia tenemos un stream que se ejecuta cada segundo y llama a auna funcion callback 

void main() async {

  //await --> wait for data has to return before print
  var x = await getData();
  print(x.getName);
  print(x.getValue);
}

Future<SomeModel> getData() async{
  return Future.delayed(const Duration(milliseconds: 5000), () async{
    SomeModel model = SomeModel();
    print("entering...");
    model.setValue = 5;
    model.setName = await getValue();
    print("value returned...");
    return model;
  });

}

Future<String> getValue() async{
  return Future.delayed(const Duration(milliseconds: 8000), () {
    print("entered...");
    return "some value";
  });
}

class SomeModel {


  String? geekName ;
  int? geekValue ;


  String? get getName {
    return geekName;
  }

  set setName(String name) {
    geekName = name;
  }

  int? get getValue {
    return geekValue;
  }


  set setValue(int value) {
    geekValue = value;
  }
}

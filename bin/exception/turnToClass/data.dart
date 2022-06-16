import 'dart:ffi';

class Data {
  String? name;
  int? age;
  double? salary;
  bool? isMale;
  String? mobile;
  List<String>? sons;
  Department? department;

  Data.fromJason(Map<String, dynamic> map) {
    name = map['name'];
    age = map['age'];
    salary = map['salary'];
    isMale = map['isMale'] == 1 ? true : false;
    mobile = map['mopile'].toString();
    sons = map['sons'];
    department = Department.fromJason(map['department']);
  }

  toJason() {
    return {
      "name": name,
      "age": age,
      "salary": salary,
      "isMale": isMale == true ? 1 : 0,
      "mobile": mobile,
      "sons": sons,
      "department": department?.toJason()
    };
  }
}

class Department {
  String? name;
  String? city;
  String? company;
  Locatoin? location;

  Department.fromJason(Map<String, dynamic> map) {
    name = map['name'];
    city = map['city'];
    company = map['company'];
    location = Locatoin.fromJason(map['locaton']);
  }

  toJason() {
    return {
      "name": name,
      "city": city,
      "company": company,
      "location": location?.toJason()
    };
  }
}

class Locatoin {
  double? lat;
  double? long;

  Locatoin.fromJason(Map<String, dynamic> map) {
    lat = map['lat'];
    long = map['long'];
  }

  toJason() {
    return {"lat": lat, "long": long};
  }
}

void main(List<String> argument) {
  Map<String, dynamic> data = {
    "name": "hashem",
    "age": 21,
    "salary": 0.0,
    "isMale": 1,
    "mobile": 0000000,
    "sons": [""],
    "department": {
      "name": "depName",
      "city": "gaza",
      "company": "comName",
      "locaton": {"lat": 22.3, "long": 22.1}
    }
  };
  Data d = Data.fromJason(data);
  print(d.department!.location!.long);
}

// class : user to gather related items (variable and functions) with each othes

//null : no thing
// when we use "?" we means that this variable can be "Null"
// late : this varible will be initialized later

// String : نص
// int : رقم صحيح
// double : رعم عشري
//boolean : true/ false

class Person {
  String? name;
  String? gender;
  int? age;
  double hight;
  bool? isMilatiryServCompleted; // true / false

  Function? eat;
  Function? work;

// constructor
  Person(
      {this.name, // name = "mohamed"
      this.age,
      this.gender,
      required this.hight,
      this.isMilatiryServCompleted});
}

Person p1 = Person(
    name: "Mohamed",
    age: 28,
    gender: "male",
    hight: 180,
    isMilatiryServCompleted: true);

Person p2 = Person(
  name: "Eman",
  age: 22,
  gender: "Female",
  hight: 160.5,
);

class Robot {
  late String brandName;
  late int? brandNumber;
  Function? work;
}



//// condition
///  if ()
/// 
/// 




/// stateless widget vs statefull widget


// statefull widget : used when there is an interaction between user and interface leads to change data in the screen.

// stateless widget: when no interaction needed between user and interface so no data need to be changed


// Responsive design: The app can work in any device size without making error
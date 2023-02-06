import 'dart:convert';
void main(){
  

  
List<Student> students = [
    Student(name: "John", rollno: "12", age: "26", marks: [23, 45, 35]),
    Student(name: "Krishna", rollno: "13", age: "26", marks: [23, 45, 35]),
    Student(name: "Rahul", rollno: "14", age: "26", marks: [23, 45, 35])
];
     
var studentsmap = students.map((e){
    return {
            "name": e.name, 
            "rollno": e.rollno, 
        };
  }).toList(); //convert to map
print(studentsmap); 
  
students[0].age = "30";

// Check is exist or not. If exist then update specific item
  for(int i=0; i<studentsmap.length; i++){
    if(studentsmap[i]['rollno']=='12'){
      
      studentsmap[i]['age'] = "30"; 
      print(studentsmap[i]);
 
    }
  }
  
  var count = 0; 
  for(int i=0; i== students.length; i++){
    count++;
    if(studentsmap.contains(students[i])){
      studentsmap.remove(students[i]); 
      print(  studentsmap.remove(students[i]) );
    }else{
      print("not match"); 
    }
  }
  
  
  
  
//  var data = [
//   {'id': 100, 'quantity': 20},
//    {'id': 100, 'quantity': 20},
//    {'id': 100, 'quantity': 20},
//    {'id': 100, 'quantity': 20},
//   {'id': 101, 'quantity': 25},
//   {'id': 101, 'quantity': 30},
//   {'id': 105, 'quantity': 50}
// ];
  
//   String name = "mam"; 
//   bool isPalinedrome =name==name.split("").reversed.join('');
//   print(isPalinedrome);
  
//     List data1 = [{"date": 2023-01-19, "student_academic_id": 12, "shift_id": 1, "attendance_status_id": 8}, 
//                {"date": 2023-01-19, "student_academic_id": 12, "shift_id": 1, "attendance_status_id": 8}, 
//                {"date": 2023-01-19, "student_academic_id": 14, "shift_id": 1, "attendance_status_id": 4}, 
//                {"date": 2023-01-19, "student_academic_id": 15, "shift_id": 1, "attendance_status_id": 8}];

//   var data2 = data1.map((e){
//     return{
//       print(e['student_academic_id'])
//     }; 
//   }).toList(); 
  
//   print(json.encode(data2)); 
  
//   var data1 = [{"date": 2023-01-19, "student_academic_id": 12, "shift_id": 1, "attendance_status_id": 8}, 
//                {"date": 2023-01-19, "student_academic_id": 12, "shift_id": 1, "attendance_status_id": 8}, 
//                {"date": 2023-01-19, "student_academic_id": 14, "shift_id": 1, "attendance_status_id": 4}, 
//                {"date": 2023-01-19, "student_academic_id": 15, "shift_id": 1, "attendance_status_id": 8}];
  
// // print(data.where((e) => e['id'] == 101).length); // 2
// var count=0;
//   for(int i=0; i<data1.length; i++){
//     if(data1[i]['attendance_status_id']==8){
//       print(data1[i]);
//     print(count++);
//     }
//   }
  
  
 
//    print(data1.where((e) => e['attendance_status_id'] == 8).length);
  
  
}


  class Student{
   String rollno, name, age;
   List<int> marks;

   Student({
     required this.rollno,
     required this.name, 
     required this.age,
     required this.marks
   });
}


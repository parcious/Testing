import 'package:flutter/material.dart';
import 'package:testing_app/home_page.dart';

void main() {
  runApp(MyApp());
}

class Person {
  final String name;
  final int age;
  final String EmpId;
  final String address;
  final String pincode;
  final String imageUrl; // Add the image URL field

  Person({
    required this.name,
    required this.age,
    required this.EmpId,
    required this.address,
    required this.pincode,
    required this.imageUrl, // Initialize the image URL
  });
}

class MyApp extends StatelessWidget {
  final List<Person> people = [
    Person(
        name: 'Parcious',
        age: 30,
        EmpId: '123-456-7890',
        address: '123 Main St',
        pincode: '12345',
        imageUrl: 'assets/images_01.jpeg'),
    Person(
        name: 'loven',
        age: 25,
        EmpId: '987-654-3210',
        address: '456 Elm St',
        pincode: '54321',
        imageUrl: 'assets/image_02.jpg'),
    Person(
        name: 'rachel',
        age: 25,
        EmpId: '987-654-3210',
        address: '456 Elm St',
        pincode: '54321',
        imageUrl: 'assets/images_04.jpeg'),
    Person(
        name: 'Tom',
        age: 25,
        EmpId: '987-654-3210',
        address: '456 Elm St',
        pincode: '54321',
        imageUrl: 'assets/images_01.jpeg'),
    Person(
        name: 'Robert',
        age: 25,
        EmpId: '987-654-3210',
        address: '456 Elm St',
        pincode: '54321',
        imageUrl: 'assets/image_02.jpg'),
    Person(
        name: 'Junior',
        age: 25,
        EmpId: '987-654-3210',
        address: '456 Elm St',
        pincode: '54321',
        imageUrl: 'assets/images_01.jpeg'),
    Person(
        name: 'jerry',
        age: 25,
        EmpId: '987-654-3210',
        address: '456 Elm St',
        pincode: '54321',
        imageUrl: 'assets/images_01.jpeg'),
    Person(
        name: 'phineas',
        age: 25,
        EmpId: '987-654-3210',
        address: '456 Elm St',
        pincode: '54321',
        imageUrl: 'assets/images_01.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('List of People'),
        ),
        body: ListView.builder(
          itemCount: people.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              child: Card(
                elevation: 8,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: ListTile(
                    title: Text('Name: ${people[index].name}'),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Age: ${people[index].age.toString()}'),
                        Text('EmpId: ${people[index].EmpId}'),
                        Text('Address: ${people[index].address}'),
                        Text('Pincode: ${people[index].pincode}'),
                      ],
                    ),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                        people[index].imageUrl,
                      ),
                    )),
              ),
            );
          },
        ),
      ),
    );
  }
}

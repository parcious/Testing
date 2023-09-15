import 'package:flutter_test/flutter_test.dart';
import 'package:testing_app/main.dart';

void main() {
  group('Person Class', () {
    test('Person object should be created correctly', () {
      final person = Person(
        name: 'John Doe',
        age: 30,
        EmpId: '123-456-7890',
        address: '123 Main St',
        pincode: '12345',
        imageUrl: 'assets/images_01.jpeg'
      );

      expect(person.name, 'John Doe');
      expect(person.age, 30);
      expect(person.EmpId, '123-456-7890');
      expect(person.address, '123 Main St');
      expect(person.pincode, '12345');
      expect(person.imageUrl, 'assets/images_01.jpeg');
      
    });
    
  });
}

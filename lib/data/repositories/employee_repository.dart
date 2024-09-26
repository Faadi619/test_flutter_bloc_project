import 'package:test_flutter_bloc_project/domain/entities/employee.dart';

class EmployeeRepository {
  Future<List<Employee>> getEmployees() async {
    // Simulated delay to mimic an API call
    await Future.delayed(Duration(seconds: 2));

    // Dummy employee data
    return [
      Employee(name: 'John Doe', position: 'Manager', profileImageUrl: 'https://via.placeholder.com/150'),
      Employee(name: 'Jane Smith', position: 'Developer', profileImageUrl: 'https://via.placeholder.com/150'),
      Employee(name: 'Alex Johnson', position: 'Designer', profileImageUrl: 'https://via.placeholder.com/150'),
    ];
  }
}

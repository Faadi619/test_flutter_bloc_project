import 'package:test_flutter_bloc_project/domain/entities/employee.dart';
import 'package:test_flutter_bloc_project/data/repositories/employee_repository.dart';

class GetEmployee {
  final EmployeeRepository repository;

  GetEmployee(this.repository);

  Future<List<Employee>> call() async {
    return await repository.getEmployees();
  }
}

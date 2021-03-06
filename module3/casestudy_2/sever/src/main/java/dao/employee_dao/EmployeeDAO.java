package dao.employee_dao;

import model.employee.Employee;

import java.util.List;

public interface EmployeeDAO {
    List<Employee> findAllEmployee();
    String createEmployee(Employee employee);
    Employee findEmployeeById(String id);
    String deleteEmployee(String id);
    String editEmployee(Employee employee);
    List<Employee> findEmployeeByName(String employeeName);
}

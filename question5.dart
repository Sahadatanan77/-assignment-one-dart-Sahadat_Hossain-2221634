// Question 5: Advanced Features & Mixins (Difficulty: 5/5) ⭐⭐⭐⭐⭐

mixin Payable {
  double calculateSalary(double baseSalary, double bonus) {
    return baseSalary+bonus; 
  }
  
  void processPayment(double amount) {
    print("Processing payment of \$${amount.toStringAsFixed(2)}...");
    print("Payment successful");
  }
}

mixin Reportable {
  String generateReport(String employeeName, String department) {
        return "Monthly report for $employeeName in $department department";  
  }
}

abstract class Employee {
  String name;
  String id;
  String department;
  
  Employee(this.name, this.id, this.department);
  
  String getJobTitle();
  double getBaseSalary();
  
  void displayInfo() {
    print("$name (ID: $id, Department: $department)");
    print("Job Title: ${getJobTitle()}");
    print("Base Salary: ${getBaseSalary()}");
  }
}

// 4. Concrete Classes:
//    - Manager extends Employee with Payable and Reportable
//      - Additional property: int teamSize
//      - Override required methods
class Manager extends Employee with Payable, Reportable {
  int teamSize;
  
  Manager(String name, String id, String department, this.teamSize) : super(name, id, department);
  
  @override
  String getJobTitle() => "Manager" ;

  @override
  double getBaseSalary()=> 8000.0; 
  
  @override
  void displayInfo() {
    print("\n Manager Information:");
    super.displayInfo();
    print("Team Size: $teamSize");
    }
}

//    - Developer extends Employee with Payable
//      - Additional property: String programmingLanguage
//      - Override required methods
class Developer extends Employee with Payable {
  String programmingLanguage;
  
  Developer(String name, String id, String department, this.programmingLanguage) : super(name, id, department);
  
  @override
  String getJobTitle()=> "Senior Developer";
  
  @override
  double getBaseSalary() => 6000.0;

  @override
  void displayInfo() {
     print("\n Developer Information:");
    super.displayInfo();
    print("Programming Language: $programmingLanguage");
  }
}

void main() {
  // 5. Create employees and demonstrate:
  //    - Salary calculation with bonus
  //    - Payment processing
  //    - Report generation (for managers)
  //    - Display all employee information
  
  Manager manager = Manager("Alice Johnson", "M101", "Sales", 10);
  Developer dev = Developer("Bob Smith", "D202", "IT", "Dart");

  double managerSalary = manager.calculateSalary(manager.getBaseSalary(), 15000);
  double developerSalary = dev.calculateSalary(dev.getBaseSalary(), 8000);
  manager.displayInfo();
  print("Total Salary (with bonus): \$${managerSalary.toStringAsFixed(2)}");
  manager.processPayment(managerSalary);
  print("\n" + manager.generateReport(manager.name, manager.department));

  dev.displayInfo();
  print("Total Salary (with bonus): \$${developerSalary.toStringAsFixed(2)}");
  dev.processPayment(developerSalary);
  
}
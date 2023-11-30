# Клас Company представляє компанію та управляє департаментами
class Company:
    # Метод для прийому відвідувачів (використовується патерн Відвідувач)
    method accept(visitor: Visitor) -> void

    # Метод для додавання нового департаменту до компанії
    method addDepartment(department: Department) -> void

    # Метод для отримання списку всіх департаментів компанії
    method getDepartments() -> List<Department>

# Клас Department представляє департамент у компанії
class Department:
    # Метод для прийому відвідувачів
    method accept(visitor: Visitor) -> void

    # Метод для додавання співробітника до департаменту
    method addEmployee(employee: Employee) -> void

    # Метод для отримання списку співробітників департаменту
    method getEmployees() -> List<Employee>

# Клас Employee представляє співробітника в департаменті
class Employee:
    # Метод для прийому відвідувачів
    method accept(visitor: Visitor) -> void

    # Метод для отримання позиції співробітника
    method getPosition() -> string

    # Метод для отримання розміру зарплати співробітника
    method getSalary() -> decimal

# Базовий клас Visitor, який визначає інтерфейс для відвідувачів
class Visitor:
    # Методи для відвідування різних компонентів структури (компанія, департамент, співробітник)
    method visitCompany(company: Company) -> void
    method visitDepartment(department: Department) -> void
    method visitEmployee(employee: Employee) -> void

# Клас PayrollReportVisitor, який розширює Visitor для створення зарплатного звіту
class PayrollReportVisitor extends Visitor:
    # Методи для обробки відвідувань компонентів для формування зарплатного звіту
    method visitCompany(company: Company) -> void
    method visitDepartment(department: Department) -> void
    method visitEmployee(employee: Employee) -> void

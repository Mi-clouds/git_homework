from person import Person
import random


class Employee(Person):
    def __init__(self, fname, lname, gender, birthdate, sector, company):
        Person.__init__(self, fname, lname, gender, birthdate)
        self.sector = sector
        self.company = company
        self.hours = 0
        self.employee_number = random.randint(1, 500)

    def add_work_hours(self, hours):
        self.hours += hours

    def get_employee_num(self):
        return self.employee_number

    def get_total_hours(self):
        return self.hours

    @property  # defining email like a method but can access it like an attribute
    def get_email_address(self):
        return '{}.{}@{}.co.uk'.format(self.fname, self.lname, self.company)

    def __str__(self):
        return "Employee: ('{}', '{}')".format(self.fname, self.lname)

    def __repr__(self):
        return "Employee: ('{}', '{}')".format(self.fname, self.lname)

    def __getattr__(self, fname):
        return fname + " is here!"


if __name__ == "__main__":
    worker_1 = Employee("John", "Doe", "Male", "03/01/1985", "marketing", "Loud")
    print(worker_1.make_email)
    print(worker_1.get_total_hours())
    worker_1.add_work_hours(8)
    worker_1.add_work_hours(4)
    print(worker_1.get_total_hours())


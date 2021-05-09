class Person:
    number_created = 0

    def __init__(self, fname, lname, gender, birthdate):
        self._fname = fname
        self._lname = lname
        self._gender = gender
        self._birthdate = birthdate
        Person.number_created += 1

    def get_full_name(self):
        return self._fname + " " + self._lname

    def set_lastname(self, new_name):
        self._lname = new_name

    # could update the name using the hasattr
    # def update_fullname(self):
    #     if hasattr(self, "new_name"):
    #         full_name = self.fname, self.lname
    #         return full_name
    #     else:
    #         return self.full_name()


if __name__ == "__main__":
    p1 = Person("Nina", "Jolly", "Female", "04/05/1989")
    print(p1.get_full_name())
    p1.set_lastname("Smith")
    print(p1.get_full_name())
    #print(p1.update_fullname())

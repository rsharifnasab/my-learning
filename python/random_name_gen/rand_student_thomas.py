import random


class ListFile:
    filename = None

    def __init__(self, filename):
        self.filename = filename

    def pick_random_line(self):
        file = open(self.filename, "r")
        lines = file.readlines()
        file.close()
        return lines[random.randint(0, len(lines))].replace("\n", "")


class Student:
    # name and lastname of the student
    name = None
    last_name = None
    # string of academic numbers
    melli = None
    # data about student scores
    scores = None

    def __init__(self, name, last_name):
        self.name = name
        self.last_name = last_name
        # "0" + 9 digits code
        self.melli = "0" + "".join([random.choice("0123456789") for _ in range(9)])
        # 9 to 11 digits code
        self.id = "".join([random.choice("0123456789") for _ in range(random.randint(9, 11))])
        self.go_to_exams()

    def __str__(self):
        # display student info
        return self.last_name + " " + self.name + " - " + str(
            round(sum(self.scores) / len(self.scores), 2)) + " - " + self.melli + " - " + self.id

    def go_to_exams(self):
        # generate scores for the student
        self.scores = []
        for _ in range(10):
            self.scores.append(random.randint(8, 20))


name_file = ListFile("names.txt")
lname_file = ListFile("lnames.txt")
# create and display 10 students
students = []
print("Name - Average score - Melli code - Student code")
for _ in range(10):
    students.append(Student(name_file.pick_random_line(), lname_file.pick_random_line()))
    print(students[-1])

/*
School Database by Bakhrom Usmanov
You’ve just taken a job to build out a database for a school district! To get started, you’ll need to build out your model and decide how you are going to store information. You need to store three different things:

Students
Teachers
Schools
Each student has a name and the ID of their favorite teacher. Each teacher has an ID, name, email address, and hair color. Each school has a name, a list of teachers, and a way to find a teacher given their ID.

But you’ll need to be careful! Some of this data might be nil. After all, what’s the hair color of a bald teacher?
*/

struct Student{
  let name: String
  let favoriteTeacherID: Int

  init(name: String, favoriteTeacherID: Int){
    self.name = name
    self.favoriteTeacherID = favoriteTeacherID
  }
}

struct Teacher{
  let name: String
  let id: Int
  let emailAddress: String?
  let hairColor: String?

  init(name: String, id: Int, emailAddress: String?, hairColor: String?){
    self.name = name
    self.id = id
    self.emailAddress = emailAddress
    self.hairColor = hairColor
  }
}

struct School{
  let name: String
  let teachers: [Teacher]

  init(name: String, teachers: [Teacher]){
    self.name = name
    self.teachers = teachers
  }

  func getTeacher(withId id: Int) -> Teacher?{
    for teacher in teachers where teacher.id == id{
      return teacher
    }
    return nil
  }

  func printFavoriteTeacherInfo(for student: Student){
    guard let teacher = getTeacher(withId: student.favoriteTeacherID) else{
      print("There is no teacher with id \(student.favoriteTeacherID) in school")
      return
    }

    print("Favourite teacher of \(student.name) is \(teacher.name) with ID: \(teacher.id) with email: \(teacher.emailAddress ?? "Unknown") and with hairs color: \(teacher.hairColor ?? "Unknown").\n")
  }
}

// Create teachers
let teacher1 = Teacher(name: "Mr. Smith", id: 1, emailAddress: "smith@school.com", hairColor: "Brown")
let teacher2 = Teacher(name: "Ms. Davis", id: 2, emailAddress: nil, hairColor: "Black")
let teacher3 = Teacher(name: "Mr. Lee", id: 3, emailAddress: "lee@school.com", hairColor: nil)
let teacher4 = Teacher(name: "Mrs. Brown", id: 4, emailAddress: nil, hairColor: nil)

// Create students
let student1 = Student(name: "Alice", favoriteTeacherID: 1)
let student2 = Student(name: "Bob", favoriteTeacherID: 2)
let student3 = Student(name: "Charlie", favoriteTeacherID: 3)
let student4 = Student(name: "Diana", favoriteTeacherID: 4)
let student5 = Student(name: "Eve", favoriteTeacherID: 5)

// Create school 
let school = School(name: "Greenwood High", teachers: [teacher1, teacher2, teacher3, teacher4])

// Print favorite teacher information for each student
school.printFavoriteTeacherInfo(for: student1)
school.printFavoriteTeacherInfo(for: student2)
school.printFavoriteTeacherInfo(for: student3)
school.printFavoriteTeacherInfo(for: student4)
school.printFavoriteTeacherInfo(for: student5)


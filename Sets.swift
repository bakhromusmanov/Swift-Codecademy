/*
School Roster by Bakhrom Usmanov

You have been hired by a school to help them sort their student roster.

After a database failure, the school has lost its entire student roster. Fortunately, the school was able to get lists of the students who are enrolled in each class.

It’s your job to help sort this data and provide the school with valuable information using sets.
*/



var spanish101: Set = ["Angela", "Declan", "Aldany", "Alex", "Sonny", "Alif", "Skyla"]
var german101: Set = ["Angela", "Alex", "Declan", "Kenny", "Cynara", "Adam"]
var advancedCalculus: Set = ["Cynara", "Gabby", "Angela", "Samantha", "Ana", "Aldany", "Galina", "Jasmine"]
var artHistory: Set = ["Samantha", "Vanessa", "Aldrian", "Cynara", "Kenny", "Declan", "Skyla"]
var englishLiterature: Set = ["Gabby", "Jasmine", "Alex", "Alif", "Aldrian", "Adam", "Angela"]
var computerScience: Set = ["Galina", "Kenny", "Sonny", "Alex", "Skyla"]

//variable storing all students
var allStudents: Set<String> = []

//using union to store unique students
allStudents = spanish101.union(german101).union(advancedCalculus).union(artHistory).union(englishLiterature).union(computerScience)

//number of students
print("Number of all students: \(allStudents.count) \n")

//iterate through set
print("List of students: ")
for student in allStudents{
  print("Student: \(student)")
}

//students in language classes
var noLanguage = allStudents.subtracting(german101.union(spanish101))
print("\nStudents aren’t taking any language classes: \(noLanguage) \n")

//students one of the language classes
var spanishOrGerman = spanish101.symmetricDifference(german101)
print("Students taking either spanish101 or german101, but not both \(spanishOrGerman) \n")

//students taking all three classes
var languageAwardWinners = spanish101.intersection(german101).intersection(englishLiterature)
print("Students who taking all three of the following classes: Spanish, German, English Literature \n")

//Classes with 7 or more students
var sevenPlus = 0
let classSet = [spanish101, german101, advancedCalculus, artHistory, englishLiterature, computerScience]

for course in classSet{
  if course.count >= 7{
    sevenPlus += 1
  }
}

print("The number of classes that have 7 or more students is \(sevenPlus)\n")

//remove Student from all classes
spanish101.remove("Skyla")
artHistory.remove("Skyla")
computerScience.remove("Skyla")
print("Skyla was removed from courses she was enrolled:")
print(spanish101)
print(artHistory)
print("\(computerScience)\n")

//students going to field trip
var fieldTrip = computerScience.union(advancedCalculus)
print("Students who wanted to go on trip are \(fieldTrip)\n")

//students that have test in day of trip
fieldTrip = fieldTrip.subtracting(german101)
print("Students going on trip are \(fieldTrip)\n")



/*
Structured Gym Regimen by Bakhrom Usmanov
When exercising it’s really helpful to have a goal in mind and a plan to achieve that goal. While everyone’s goals are different, we can use structures to devise a plan and keep us on track!

We’ll first create a structure for our exercises. We’ll use this structure to keep track of:

its name.
what muscle groups it targets.
how many repetitions (reps) we should do in one go.
how many rounds of repetitions we should do (sets).
How many total reps we’ll be doing.
Another structure we’ll need to keep track of all these exercises is for our regimen! This structure will:

- track the day of the week.
- store the exercises we should do for a given day.
- include a method to remind us of a given day’s workout regimen.
/*

struct Exercise{
  var name: String
  var muscleGroups: [String] 
  var reps: Int 
  var sets: Int 
  var totalReps: Int

init(name: String, muscleGroups: [String], reps: Int, sets: Int){
  self.name = name
  self.muscleGroups = muscleGroups
  self.reps = reps
  self.sets = sets
  self.totalReps = sets*reps
}
}

var pushUp = Exercise(name: "Push up", muscleGroups: ["Triceps", "Chest", "Shoulders"], reps: 10, sets: 3)

var sitUp = Exercise(name: "Sit ups", muscleGroups: ["Legs", "Calves"], reps: 12, sets: 4)

struct Regimen{
  var dayOfWeek: String
  var exercises: [Exercise]

init(dayOfWeek: String, exercises: [Exercise]){
  self.dayOfWeek = dayOfWeek
  self.exercises = exercises
}

func printExercisePlan(){
  print("Today is \(self.dayOfWeek) and the plan is to:")

  for exercise in self.exercises{
    print("Do \(exercise.sets) of \(exercise.reps) \(exercise.name)s")

    print("That's a total of \(exercise.totalReps) \(exercise.name).")
  }
}

}

var mondayRegimen = Regimen(dayOfWeek: "Monday", exercises: [pushUp, sitUp])

print(mondayRegimen.printExercisePlan())

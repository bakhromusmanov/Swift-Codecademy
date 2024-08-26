/*
Green Thumb by Bakhrom Usmanov
Janet Kilburn once said, “There are no gardening mistakes, only experiments!”. In this final project, we’ll get to experiment with planting a vegetable in our very own virtual, iOS garden!
We’ll utilize our knowledge of protocols, generics, and object-oriented concepts like structs and inheritance to build a program that provides us with planting, harvesting, watering, and general gardening tips.🌱
*/

//12 months cases
enum Month {
  case january, february, march, april, may, june, july, august, september, october, november, december
}

//requirements for planting vegetables
protocol Plantable{
  var plantMonth: Month {get}
  var plantingInstructions: String {get}
}

//requirements for watering vegetables
protocol Waterable {
  var inchesOfWater: Int {get}
  var wateringFrequence: String {get}
  var wateringInstructions: String {get}
}

//requirements for harvesting vegetables
protocol Harvestable {
  var harvestMonth: Month {get}
  var harvestingInstructions: String {get}
}

//harvesting, planting, and watering are all a part of gardening
protocol Gardenable: Plantable, Waterable, Harvestable {
  func printGardeningTips()
}

extension Gardenable {
  func printGardeningTips(){
    print("Follow these Gardening 101 tips for a bountiful harvest. 1) Make sure you always water your plant the exact amount that it needs. 2) Make sure you know what zone that you're planting in to ensure that the plants you're planting are in their optimal environment.")
  }
}

//create first plant struct Kale
struct Kale: Gardenable{
  //conform to Plantable
  var plantMonth = Month.september
  var plantingInstructions = "Kale should be planted 6 to 8 weeks before the first frost in in-ground gardens, raised beds, or containers."

  //conform to Waterable
  var inchesOfWater = 2
  var wateringFrequence = "weekly"
  var wateringInstructions = "Kale needs to be watered 2 inches of water weekly."

  //conform to Harvestable
  var harvestMonth = Month.november
  var harvestingInstructions = "Kale should be harvested in November."
}
  //generic func to print tips for any vegetable
  func printTips(for plants: [Gardenable]){
    for plant in plants{
      plant.printGardeningTips()
    }
}


// vegetable Tomato
struct Tomato: Gardenable {
    var plantMonth = Month.march
    var plantingInstructions = "Tomatoes should be planted after the last frost in well-drained soil."
    var inchesOfWater = 1
    var wateringFrequence = "weekly"
    var wateringInstructions = "Tomatoes need 1 inch of water weekly."
    var harvestMonth = Month.september
    var harvestingInstructions = "Tomatoes should be harvested in September when they are fully ripe."
}

// vegetable Carrot
struct Carrot: Gardenable {
    var plantMonth = Month.april
    var plantingInstructions = "Carrots should be planted in early spring in loose, well-drained soil."
    var inchesOfWater = 1
    var wateringFrequence = "bi-weekly"
    var wateringInstructions = "Carrots need 1 inch of water every two weeks."
    var harvestMonth = Month.july
    var harvestingInstructions = "Carrots should be harvested in July when they have reached a suitable size."
}

// vegetable Lettuce
struct Lettuce: Gardenable {
    var plantMonth = Month.march
    var plantingInstructions = "Lettuce should be planted in early spring in well-drained soil."
    var inchesOfWater = 2
    var wateringFrequence = "twice a week"
    var wateringInstructions = "Lettuce needs 0.5 inches of water twice a week."
    var harvestMonth = Month.june
    var harvestingInstructions = "Lettuce should be harvested in June when the leaves are crisp and tender."
}

// vegetable Cucumber
struct Cucumber: Gardenable {
    var plantMonth = Month.may
    var plantingInstructions = "Cucumbers should be planted after the last frost in well-drained soil."
    var inchesOfWater = 1
    var wateringFrequence = "weekly"
    var wateringInstructions = "Cucumbers need 1 inch of water weekly."
    var harvestMonth = Month.august
    var harvestingInstructions = "Cucumbers should be harvested in August when they are firm and green."
}

// vegetable Bell Pepper
struct BellPepper: Gardenable {
    var plantMonth = Month.may
    var plantingInstructions = "Bell peppers should be planted after the last frost in rich, well-drained soil."
    var inchesOfWater = 1
    var wateringFrequence = "weekly"
    var wateringInstructions = "Bell peppers need 1 inch of water weekly."
    var harvestMonth = Month.september
    var harvestingInstructions = "Bell peppers should be harvested in September when they are firm and fully colored."
}

// vegetable Spinach
struct Spinach: Gardenable {
    var plantMonth = Month.september
    var plantingInstructions = "Spinach should be planted in early fall in well-drained soil."
    var inchesOfWater = 1
    var wateringFrequence = "weekly"
    var wateringInstructions = "Spinach needs 1 inch of water weekly."
    var harvestMonth = Month.november
    var harvestingInstructions = "Spinach should be harvested in November before the first frost."
}

// Add all the instances to the vegetables array
var vegetables: [Gardenable] = [
    Kale(),
    Tomato(),
    Carrot(),
    Lettuce(),
    Cucumber(),
    BellPepper(),
    Spinach()
]

// Print tips for all vegetables
printTips(for: vegetables)


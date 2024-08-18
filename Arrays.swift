/*
Make a Mixtape 101 by Bakhrom Usmanov

Write a program in Mixtape.swift that holds the ultimate playlist of music in a Swift array.
*/

var name = "Echoes of Us"
var theme = "A nostalgic journey through love, capturing moments and emotions that words alone can’t express."

print(".-------------------------------------.")
print("| Mixtape name: '\(name)' 90 min |")
print("|           __  ______    __          |")
print("|           __  ______  __            |")
print("|           (  )|).....|(  )          |")
print("|           (__)|)_____|(__)          |")
print("|           ________________          |")
print("|__________/_._o________o_._\\_________| \n")
print("Mixtape theme: \(theme) \n")

//Add songs to mixtape
var mixtape: [String] = []
mixtape.append("The Cure - Just Like Heaven")
mixtape.append("Peter Gabriel - In Your Eyes")
mixtape.append("U2 - With or Without You")
mixtape.append("Bruce Springsteen - Dancing in the Dark")
mixtape.append("Tears for Fears - Everybody Wants to Rule the World")
mixtape.append("Fleetwood Mac - Everywhere")
mixtape.append("Simple Minds - Don't You (Forget About Me)")
mixtape.append("Prince - Purple Rain")
mixtape.append("Madonna - Crazy for You")
mixtape.append("David Bowie - Heroes")
mixtape.append("The Smiths - There Is a Light That Never Goes Out")
mixtape.append("Eurythmics - Sweet Dreams (Are Made of This)")

//mixtape Count
print("Number of songs in the mixtape: \(mixtape.count) \n")

//Remove some songs from mixtape
mixtape.remove(at: 3)
mixtape.remove(at: 7)

//Insert some songs in order
mixtape.insert("A-ha - Take On Me", at: 8)
mixtape.insert("Queen - Somebody to Love", at: 5)

//Print each song in a loop
for i in 0..<mixtape.count{
  print("\(i+1). \(mixtape[i])")
}

let sideA = Array(mixtape[0..<mixtape.count/2])
let sideB = Array(mixtape[mixtape.count/2..<mixtape.count])

print("\n Side A: \n")
for i in 0..<sideA.count{
  print("\(i+1). \(sideA[i])")
}

print("\n Side B: \n")
for i in 0..<sideB.count{
  print("\(i+mixtape.count/2 + 1). \(sideB[i])")
}

import Cocoa

let filename = "paris.jpg"
let star = "⭐️"
let result = "⭐️ You win! ⭐️"
let quote = "Then he tapped a sign saying \"Believe\" and walked away."

let movie = """
A day in
the life of an
Apple engineer
"""

print(star.count)
print(result.uppercased())
print(filename.hasSuffix(".jpg"))
print(movie.hasPrefix("A day"))
print(120.isMultiple(of: 3))

let celcious = 36.5
var fahrenheit = celcious * 9 / 5 + 32
print(celcious, fahrenheit)

let employee = [
  "name": "Taylor",
  "age": "25",
  "location": "Washington"
]

print(employee["nam", default: "Unknown"])

let olympics = [
  2012: "London",
  2016: "Rio de janeiro",
  2021: "Tokyo"
]

print(olympics)
print(olympics[2021, default: "Unknown"])

var heights = [String: Int]()
heights["Yao"] = 221
heights["lev"] = 223
heights["Sor"] = 234
print(heights.keys.contains("lev"))

print(heights["Yao", default: 222])
print(heights.count)
heights.removeAll()
print(heights.count)

var actors = Set<String>()
actors.insert("Samuel")
actors.insert("Tim")
actors.insert("Sor")
print(actors)

var actress = Set(["Juli", "Anna", "Nicole", "Victoria"])
print(actress)
print(actress.count)
print(actress.contains("Juli"))
print(actress.sorted())

enum Weekday {
  case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = .tuesday
print(day)

var name: String = "Taylor"
var age: Int = 25
var weight: Double = 45.4
var light: Bool = true
var cities: [String] = ["London", "Berlin"]
var countries: Set<String> = Set(["USA", "UK", "Taiwan"])

let username: String
username = "sork"
print(username)

let scores: Int = Int("0") ?? 0

var alphabet = ["a","b","c","a","b"]
print(alphabet.count)
var uniqueAlphabet = Set(alphabet)
print(uniqueAlphabet.count)

var voteAge = 18

if voteAge >= 18 {
  print("You're eligible to vote")
}

var legalAge = voteAge >= 18 ? "Yes" : "No"
print(legalAge)

var aaa = "ab"
var bbb = "aa"

print(aaa < bbb)

enum Weather {
  case wind, sun, rain, snow, unknown
}

var todaysWeather = Weather.sun

switch todaysWeather {
case .wind: print("windy"); fallthrough
case .sun: print("sunny")
fallthrough
case .rain: print("rainy")
case .snow: print("snowy")
default: print("default")
}

var platforms = ["ios", "macos", "tvos", "watchos"]

for platform in platforms {
  print(platform)
}

var lyrics = "Haters gonna "
for _ in 1...5 {
  lyrics += "hate "
}

print(lyrics)

var countDown = 10

while countDown > 0 {
  print(countDown)
  countDown -= 1
}

print("Boom!")

var rolled = 0

while rolled != 20 {
  rolled = Int.random(in: 1...20)
  print("I rolled a \(rolled)")
}

var filenames = ["a.jpg", "b.txt", "c.jpg"]

for filename in filenames {
  if !filename.hasSuffix(".jpg") {
    continue
  }
  print("found image \(filename)")
}

var num1 = 4
var num2 = 14
var numArr = [Int]()

for i in 1...100_000 {
  if i.isMultiple(of: num1) && i.isMultiple(of: num2) {
    numArr.append(i)

    if numArr.count == 10 {
      break
    }
  }
}
print(numArr)

for i in 1...100 {
  var result = ""

  if i.isMultiple(of: 3) {
    result = "Fizz"
  }
  if i.isMultiple(of: 5) {
    result += "Buzz"
  }

  print(result.isEmpty ? i : result)
}



import Cocoa
import Foundation

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

func printTimesTable(number: Int, end: Int) {
    for i in 1...end {
        print("\(number) x \(i) = \(number * i)")
    }
}

printTimesTable(number: 5, end: 9)

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

print(rollDice())

func areLettersIdentical(str1: String, str2: String) -> Bool {
    str1.sorted() == str2.sorted()
}

print(areLettersIdentical(str1: "abc", str2: "bca"))

func phthagoras(a: Double, b: Double) -> Double {
    sqrt(a*a + b*b)
}

print(phthagoras(a: 3, b: 4))

func getUser() -> [String] {
    return ["Taylor", "Swift"]
}

print(getUser())

func getUser1() -> [String: String] {
    return ["firstName": "Taylor", "lastName": "Swift"]
}
var userDic = getUser1()
print(userDic["firstName", default: "?"], userDic["lastName", default: "?"])

func getUser3() -> (firstName: String, lastName: String) {
    return ("Taylor", "Swift")
}

func getUser4() -> (String, String) {
    return ("Taylor", "Swift")
}

let (firstName, lastName) = getUser3()
print(firstName, lastName)

print(getUser4().0, getUser4().1)

let (oneName, _) = getUser4()
print(oneName)

func isUppercase(_ string: String) -> Bool {
    return string == string.uppercased()
}
print(isUppercase("UPPER"))

func printTimesTable(for number: Int) {
    for i in 1...12 {
        print("\(number) x \(i) = \(number * i)")
    }
}

printTimesTable(for: 3)

var characters = ["Lana", "Pam", "Ray"]
print(characters.count)
characters.removeAll(keepingCapacity: true)
print(characters.count)
print(characters.capacity)

enum PasswordError: Error {
    case short, obvious
}

func passwordCheck(_ password: String) throws -> String {
    let passwordCount = password.count
    
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if passwordCount < 5 {
        throw PasswordError.short
    }
    
    if passwordCount < 7 {
        return "ok"
    } else if passwordCount < 9 {
        return "good"
    } else {
        return "great"
    }
}

do {
    let result = try passwordCheck("3241234324")
    print("Password rating: \(result)")
} catch PasswordError.obvious {
    print("The password is obvious.")
} catch PasswordError.short {
    print("The password is short.")
} catch {
    print(error.localizedDescription)
}

print(try! passwordCheck("r32f2rt42t24twe"))

enum ParameterRangeError: Error {
    case outOfBounds, noRoot
}

func getSqrt(_ baseNumber: Int) throws -> Int {
    if baseNumber < 1 || 10_000 < baseNumber {
        throw ParameterRangeError.outOfBounds
    }
    
    var sqrtNumber: Int = 0
    for i in 2...100 {
        if i * i == baseNumber {
            sqrtNumber = i
            break
        }
    }
    
    if sqrtNumber <= 0 {
        throw ParameterRangeError.noRoot
    }
    
    return sqrtNumber
}

do {
    let baseNumber = 100
    let result = try getSqrt(baseNumber)
    print("Sqrt of \(baseNumber) is \(result)")
} catch ParameterRangeError.outOfBounds {
    print("out of bound")
} catch ParameterRangeError.noRoot {
    print("no root")
}

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

func captainFirstSorted(name1:String, name2:String) -> Bool {
    if name1 == "Suzanne" {
        return true
    }
    if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
}

//let captainFirstArr = team.sorted(by: captainFirstSorted)

//let captainFirstArr = team.sorted(by: { (name1: String, name2: String) -> Bool in
//    if name1 == "Suzanne" {
//        return true
//    }
//    if name2 == "Suzanne" {
//        return false
//    }
//    return name1 < name2
//})

let captainFirstArr = team.sorted{
    if $0 == "Suzanne" {
        return true
    }
    if $1 == "Suzanne" {
        return false
    }
    return $0 < $1
}

print(captainFirstArr)

print(team.sorted{ $0 > $1 })

let tOnly = team.filter{ $0.hasPrefix("T") }
print(tOnly)

let upperTeam = team.map{ $0.uppercased() }
print(upperTeam)

func rollDice(size: Int, using generator: () -> Int) -> [Int] {
    var diceResult = [Int]()
    
    for _ in 1...size {
        diceResult.append(generator())
    }
    
    return diceResult
}

//var diceResult = rollDice(size: 10) {
//    Int.random(in: 1...20)
//}

func generator() -> Int {
    return Int.random(in: 1...20)
}

var diceResult = rollDice(size: 10, using: generator)
print(diceResult)

func printThreeTimes(firstPrinter: () -> Void, secondPrinter: () -> Void, thirdPrinter: () -> Void) {
    firstPrinter()
    secondPrinter()
    thirdPrinter()
}

printThreeTimes {
    print("first printer")
} secondPrinter: {
    print("second printer")
} thirdPrinter: {
    print("third printer")
}

let luckyNumbers = [7,4,38,21,16,15,12,33,31,49]

let luckyStrings = luckyNumbers.filter{ !$0.isMultiple(of: 2) }.sorted{ $0 < $1 }.map{
    "\($0) is a lucky number"
}

for string in luckyStrings {
    print(string)
}

struct Employee {
    let name: String = "Pam"
    var vacationRemaining: Int
    
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("\(name)'s remaining vacation days \(vacationRemaining)")
        } else {
            print("There aren't enough days remaining.")
        }
    }
}

var pam = Employee.init(vacationRemaining: 15)
//var pam = Employee(vacationRemaining: 15)
pam.takeVacation(days: 5)

struct Employee2 {
    var vacationAllocated: Int
    var vacationTaken: Int
    
//    var vacationRemaining: Int {
//        vacationAllocated - vacationTaken
//    }
    
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var emp2 = Employee2(vacationAllocated: 30, vacationTaken: 5)
emp2.vacationRemaining += 5
print(emp2.vacationRemaining)

struct NumberPrinter {
    var number: Int = 0 {
        didSet {
            print("Current value: \(number)")
        }
    }
}

var numPrinter = NumberPrinter()
numPrinter.number = 1
numPrinter.number += 1

struct GamePlayer {
    var playerArr = [String]() {
        willSet {
            print("New player: \(newValue)")
            print("Current players: \(playerArr)")
        }
        didSet {
            print("Old players: \(oldValue) ")
            print("Current players: \(playerArr)")
        }
    }
}

var players = GamePlayer()
players.playerArr.append("p1")
players.playerArr.append("p2")
players.playerArr.append("p3")

struct Player{
    var name: String
    var age: Int
    
    init(name: String) {
        self.name = name
        self.age = Int.random(in: 1...30)
    }
}

var p1 = Player(name: "p1")
print(p1.age)

struct BankAccount{
    private(set) var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}
var myAccount = BankAccount()
myAccount.deposit(amount: 10000)
print(myAccount.funds)
myAccount.withdraw(amount: 5000)
print(myAccount.funds)
print(myAccount.withdraw(amount: 10000))


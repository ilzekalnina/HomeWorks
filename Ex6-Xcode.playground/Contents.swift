import UIKit

/*
Exercise 1
Declare myTeam as Girls.
Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
*/


let myTeam = "Girls"
//var resultsOfGames : [String: String] = [:]
//version 1
var resultsOfGames = [
    "Brooklyn Nets": "99:89",
    "Dallas Mavericks": "87:93",
    "Washington Wizards": "117:112"
    ]
for result in resultsOfGames {
print("\(myTeam) against \(result.key) scored \(result.value)")
}


//version 2 - šī ir pareizā, jo vajag abus rezultātus katrai komandai
//var resultsOfGames2 : [String: [String]] = [:]
var resultsOfGames2 = [
    "Brooklyn Nets": ["99:89","109:99"],
    "Dallas Mavericks": ["87:93","104:97"],
    "Washington Wizards": ["117:112","107:122"]
]

for result in resultsOfGames2 {
    for score in result.value {
        print("\(myTeam) against \(result.key) scored \(score)")
    }

}



/*
Exercise 2
Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
Create a func to calculateCash sum of your cash inside your wallet.
Run the func.
*/

var arrayOfInt: [Int] = [5, 10, 20, 50, 100, 200, 500]

func calculateCash(money m: [Int]) -> Int {
    var sum = 0
    for i in m {
        sum += i
    }
    return sum
}

var result = calculateCash(money: arrayOfInt)
print(result)


/*
Exercise 3
Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
Run the func.
*/

func isEvenNumber(number n: Int) -> Bool {
    if n % 2 == 0 {
        return true
    } else {
        return false
    }
}

var res = isEvenNumber(number: 8)
print(res)

/*
Exercise 4
Create a func createArray to calculate some number from start: to end: than return Int array.
Declare array and put createArray(from: 1, to: 100)
print(array)
*/

func createArray(from a: Int, to b: Int) -> [Int] {
    var arrayOfNumbers: [Int] = []
    var number = a
    while number <= b {
        arrayOfNumbers.append(number)
        number += 1
    }
    return arrayOfNumbers
}

var arrayOfNumbers = createArray(from: 1, to: 100)
print(arrayOfNumbers)



/*
Exercise 5
Create for loop.
Use array result from Exercise 4.
Use isEvenNumber from Exercise 3.
Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
It should be 1/2 of createArray and started from [1,3,5.....
*///happy coding :)
var index = 0
for i in arrayOfNumbers {
    if isEvenNumber(number: i) {
        arrayOfNumbers.remove(at: index)
    } else {
        index += 1
    }
}
print(arrayOfNumbers)

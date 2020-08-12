import UIKit

/*
Exercise 1
The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate) is 11%. Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
*/
let rate = 11
var profit: Double = 0
let period = 5
var deposit: Double = 500000
for _ in 1...period {
    profit += deposit * Double(rate) / 100
    deposit += profit
}
print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")


/*
Exercise 2
Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */
var rem = 0

let arrayOfIntegers = [1, 2, 2, 3, 6, 8, 9, 12]
var evenNumber: [Int] = []
/*
for i in 0...7 {    // if I put here "i in arrayOfIntegers" it gives FatalError?
    rem = arrayOfIntegers[i] % 2
    if rem == 0 {
        evenNumber.append(arrayOfIntegers[i])
    } else {
        rem = 0
    }
}
print("My even numbers are: \(evenNumber)")
*/
for item in arrayOfIntegers {
    rem = item % 2
    if rem == 0 {
        evenNumber.append(item)
    } else {
        rem = 0
    }
}
print("My even numbers are: \(evenNumber)")

/*
Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
*/

/*pasniedzejam ir šis, citur strādā, bet playground neatbalsta šo funkciju
for counter in 1...10 {
    let randomNumber = Int.random(in: 1...10)
    if randomNumber == 5 {
        print("Number 5 will be after \(counter) shuffles")
        break
    }
}
*/

/*
var number = 0
for counter in 1...100 {
    number = Int.random(in:1...10)
    if number == 5 {
    print("Number 5 will be after \(counter) shuffles")
    } else {
        break
    }
}

*/

//Below is the way I thought, but it gives error unresolved identifier"arc4random_uniform(UInt32(n))
/*
func random(_ n:Int) -> Int
{
    return Int(arc4random_uniform(UInt32(n)))
}

var number = 0
for counter in 1...100 {
    number = random(100)
    if number == 5 {
        print("Number 5 will be after \(counter) shuffles")
    } else {
        break
    }
}
*/

/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 *///happy coding :)
 
 let postHight = 10
 let climbDay = 2
 let climbNight = -1
 var hight = 0
 var numberOfDays = 0
 while hight < postHight {
     hight += climbDay + climbNight
     numberOfDays += 1
 }
 print("Bug will spend \(numberOfDays)days to reach top of the post")

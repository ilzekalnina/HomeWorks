import UIKit

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print () */
 
 let firstNumber: Float = 3.14
 let secondNumber: Float = 42.0
 var sumDouble = Double(firstNumber) + Double(secondNumber)
 print(sumDouble)
 

 
/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>". */
 
 let numberOne = 21
 let numberTwo = 7
 let dividingRes: Int = numberOne / numberTwo
 let remainderN: Int = numberOne % numberTwo
 print("When dividing \(numberOne) by \(numberTwo), the result is \(dividingRes), the remainder is \(remainderN)")
 
 
 
 
 
 /*
  Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */
 
 var price = 1000
 var qty = 7
 var totalSum:Int
 
 if qty < 5 && qty >= 0 {
     totalSum = qty * price
     print ("new: \(qty) MacBook Pro with the price of: \(price)EUR, will cost you: \(totalSum)EUR")
 } else if qty >= 5 && qty < 10 {
     price = 900
     totalSum = qty * price
     print ("new: \(qty) MacBook Pro with the price of: \(price)EUR, will cost you: \(totalSum)EUR")
 } else if qty >= 10 {
     price = 850
     totalSum = qty * price
     print ("new: \(qty) MacBook Pro with the price of: \(price)EUR, will cost you: \(totalSum)EUR")
 }
 
 
 
 /*
  Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */
 
 
 let userInputAge = "33a"
 var convert = Int(userInputAge)
 
 print(convert ?? "Fatal error: Unexpectedly found nil while unwrapping an Optional value")
 
 if convert != nil {
     print("Age is \(convert!)")
 } else {
     print("There has been entered an invalid age number: \(userInputAge)")
 }
 
 
 
 
 
 /*
 Ex5:
 Calculate the number of years, months, days from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
 */
 
 let myYear = 1981.0
 let myMonth = 4.0
 let myDate = 26.0
 let yearNow = 2020.0
 let monthNow = 7.0
 let dateNow = 27.0
 let daysInYear = 365.25
 let monthsPerYear = 12.0
 var totalYearsFromBirth = 0.0
 var totalMonthsFromBirth = 0.0
 var totalDaysFromBirth = 0.0
 var daysPerMonth = daysInYear / monthsPerYear

 
//counting total years
if myMonth < monthNow {
        totalYearsFromBirth = yearNow - myYear
    } else if myMonth > monthNow {
        totalYearsFromBirth = yearNow - myYear - 1
    } else {
    //if it is the same month now as birthday month, then depending on date weather it is already complete year or still not complete (11month)
        if myDate<=dateNow {
            totalYearsFromBirth = yearNow - myYear
        } else {
            totalYearsFromBirth = yearNow - myYear - 1
        }
        
    }

//counting total months

if myMonth < monthNow {
    if myDate <= dateNow {
        totalMonthsFromBirth = monthsPerYear * totalYearsFromBirth + (monthNow - myMonth)
    } else {
        totalMonthsFromBirth = monthsPerYear * totalYearsFromBirth + (monthNow - myMonth - 1)
    }
} else if myMonth == monthNow {
    if myDate <= dateNow {
        totalMonthsFromBirth = monthsPerYear * totalYearsFromBirth
    } else {
        totalMonthsFromBirth = monthsPerYear * totalYearsFromBirth + (monthsPerYear - 1) //because it's not complete year, but 11 month
    }
} else {
    //myMonth > monthNow
    if myDate <= dateNow {
        totalMonthsFromBirth = monthsPerYear * totalYearsFromBirth + monthsPerYear - (myMonth - monthNow)
    } else {
        totalMonthsFromBirth = monthsPerYear * totalYearsFromBirth + monthsPerYear - (myMonth - monthNow - 1)
    }
}

//counting total days
if myDate <= dateNow {
    totalDaysFromBirth = daysPerMonth * totalMonthsFromBirth + (dateNow - myDate)
} else {
    totalDaysFromBirth = daysPerMonth * totalMonthsFromBirth + (daysPerMonth - myDate) + dateNow
}

 
print("Total years from birth: \(Int(totalYearsFromBirth))")
print("Total months from birth: \(Int(totalMonthsFromBirth))")
print("Total days from birth: \(totalDaysFromBirth)")
 

 
 
 
 
 /*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */
 let monthOfBirth = 4
 
 switch monthOfBirth {
     case 1...3:
        print("I was born in the first quarter")
    case 4...6:
        print("I was born in the second quarter")
    case 7...9:
        print("I was born in the third quarter")
    case 10...12:
        print("I was born in the fourth quarter")
    default:
        break
 }
 

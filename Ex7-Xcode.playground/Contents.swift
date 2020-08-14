import UIKit
/*
Exercise 1
1.Create new Class Orange(Fruit). Inside the Class declare:
     color = ""
     teste = ""
     weight = 0.0
 2.Make Class example from Orange Class and named it as someOrange.
 3.Give specific value for:
     color = "Orange"
     taste = "Sweet"
     weight = 0.66
 4.print("My \(someOrange.weight) kg orange has \(someOrange.color) color and \(someOrange.taste) taste")
*/

//myHomework
class Orange {
    var color = ""
    var taste = ""
    var weight = 0.0
    
    init() {}
    init(color: String, taste: String, weight: Double){
        self.color = color
        self.taste = taste
        self.weight = weight
    }
    
}

let someOrange = Orange(color: "Orange", taste: "Sweet", weight: 0.66)

print("My \(someOrange.weight) kg orange has \(someOrange.color) color and \(someOrange.taste) taste")

//Arcady

class Orange2 {
    var color = ""
    var taste = ""
    var weight = 0.0
}
let someOrange2 = Orange2()
someOrange2.color = "Orange"
someOrange2.taste = "Sweet"
someOrange2.weight = 0.66

print("My \(someOrange2.weight) kg orange has \(someOrange2.color) color and \(someOrange2.taste) taste")


/*
Exercise 2
1.Create new Parent(Superclass) Class Figure. Inside the Class declare:
         height: Float
         width: Float
         radius: Float
         square: Float
         perimeter: Float
 2. init(height: Float, width: Float) and 2 methods:
         func squareOfFigure() -> Float { return square }
         func perimeterOfFigure() -> Float { return perimeter }
 3.Create new Child(Subclass) Rectangle of Paret Class Figure
 3.Inside Rectangle override func squareOfFigure() -> Float to calculate and return square and override func perimeterOfFigure() -> Float to calculate and return perimeter !
 4.Inside Rectangle make a func description() where we can print("Rectangle area is: \(squareOfFigure()), and perimeter Of Figure is: \(perimeterOfFigure())")
 5.Make Class example from Rectangle Class and named it as myRectangle and give a value as you want for height and width.
 6.Finally call myRectangle.description()
*/


//myHomework
class Figure {
    var height: Float
    var width: Float
    var radius: Float = 0
    var square: Float = 0
    var perimeter: Float = 0
    
    init(height: Float, width: Float) {
        self.height = height
        self.width = width
    }
    
    func squareOfFigure() -> Float {
        let square = height * width
        return square
    }
    
    func perimeterOfFigure() -> Float {
        let perimeter = 2 * height + 2 * width
        return perimeter
    }
    
}

class Rectangle: Figure {
    override func squareOfFigure() -> Float {
        let square = height * width
        return square
    }
    
    override func perimeterOfFigure() -> Float {
        let perimeter = 2 * height + 2 * width
        return perimeter
    }
    
    func description(){
        print("Rectangle area is: \(squareOfFigure()), and perimeter Of Figure is: \(perimeterOfFigure())")
    }
}

let myRectangle = Rectangle(height: 3, width: 7)
myRectangle.description()


//Arcady

class Figure2 {
    var height: Float = 0
    var width: Float = 0
    var radius: Float = 0
    var square: Float!
    var perimeter: Float! // optional and we are forcing because we are sure that we are gonna use them
    
    init(radius: Float) {
        self.radius = radius
    }
    init(height: Float, width: Float){
        self.height = height
        self.width = width
    }

    // this is just a template, so after we are overriding with func specific for figure
    func squareOfFigure() -> Float {
        return square
    }
    
    func perimeterOfFigure() -> Float {
        return perimeter
    }
    
}

class Rectangle2: Figure2 {
    override func squareOfFigure() -> Float {
        square = height * width // no need for let square, because we are using the one is declared in Figure
        return square
    }
    
    override func perimeterOfFigure() -> Float {
        perimeter = (height + width) * 2
        return perimeter
    }
    
    func description(){
        print("Rectangle area is: \(squareOfFigure()), and perimeter Of Figure is: \(perimeterOfFigure())")
    }

}


class Circle: Figure2 {
    override func squareOfFigure() -> Float {
        square = Float.pi * radius * radius
        return square
    }
    
    override func perimeterOfFigure() -> Float {
        perimeter = Float.pi * 2 * radius
        return perimeter
    }
    
    func description() {
        print("Circle area is: \(squareOfFigure()), and perimeter Of Figure is: \(perimeterOfFigure())")
    }
}

let myRectangle2 = Rectangle2(height: 6, width: 9)
myRectangle2.description()

let myCircle = Circle(radius: 5)
myCircle.description()

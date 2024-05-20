import UIKit
import Foundation

extension String {
    
    func isPalindrome () -> Bool {
        let cleanedString = self.lowercased().filter{$0.isLetter}
        return cleanedString == String(cleanedString.reversed())
    }
    
}

let word1 = "Radar"
let word2 = "Hello"
let word3 = "A man a plan a canal Panama"

print ("\(word1) is palindrome ? : \(word1.isPalindrome())")
print ("\(word2) is palindrome ? : \(word2.isPalindrome())")
print ("\(word3) is palindrome ? : \(word3.isPalindrome())")


func isPrime (_ number : Int) -> Bool {
    
    if number <= 1 {
        return false
    }
    if number <= 3 {
        return true
    }
    var i = 2
    while i*i <= number {
        if number % i == 0 {
            return false
        }
        i += 1
    }
    return true
}

let number1 = 17
let number2 = 15

print("\(number1) is prime ? : \(isPrime(number1))")
print("\(number2) is prime ? : \(isPrime(number2))")

func oppositeBool(_ boolValue : Bool) -> Bool {
    
    return !boolValue
}

let initialValue = true
let oppositeValue = oppositeBool(initialValue)
print("Initial Value: \(initialValue)") // true
print("Opposite Value: \(oppositeValue)") // false


extension Date {
    func daysBetween(_ date : Date) -> Int {
        
        let calendar = Calendar.current
        let startDate = calendar.startOfDay(for: self)
        let endDate = calendar.startOfDay(for: date)
        let components = calendar.dateComponents([.day], from: startDate, to: endDate)
        return components.day ?? 0
    }
}

//Example
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "dd-MM-yyyy"

if let startDate = dateFormatter.date(from:"01-01-2024"),
   let endDate = dateFormatter.date(from:"31-05-2024") {
    
    let days = startDate.daysBetween(endDate)
    
    
    print("Days between \(startDate) and \(endDate): \(days)")
} else {
    print("Invalid date format")
}
    

extension UIViewController {
    func setBackgroundColor(_ color : UIColor){
        self.view.backgroundColor = color
    }
}

extension UILabel {
    func setText (_ text :String){
        self.text = text
    }
}

extension UIImageView {
    func setImageColor(_ color: UIColor) {
        self.image = self.image?.withRenderingMode(.alwaysTemplate)
        self.tintColor = color
    }
}

extension UIButton {
    func setBackgroundImage(_ image: UIImage?, for state: UIControl.State) {
        self.setBackgroundImage(image, for: state)
    }
}


let viewController = UIViewController()
viewController.setBackgroundColor(.blue)


let myLabel = UILabel()
myLabel.setText("Hello, World!")



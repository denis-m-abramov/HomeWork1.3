import Foundation

/*:
 ### Задание 3
 
 3.1 Определите квартал в котором вы родились, используя switch.
 */

let monthOfBirth = 8  //месяц рождения

switch monthOfBirth {
case 1...3:
    print ("I was born in the 1th quarter")
case 4...6:
    print ("I was born in the 2th quarter")
case 7...9:
    print ("I was born in the 3th quarter")
case 10...12:
    print ("I was born in the 4th quarter")
default:
    print ("Error! There is no such month")
}

if monthOfBirth > 0  && monthOfBirth <= 3 {
    print ("Я родился в 1-м квартале")
} else if monthOfBirth > 3  && monthOfBirth <= 6 {
    print ("Я родился в 2-м квартале")
} else if monthOfBirth > 6  && monthOfBirth <= 9 {
    print ("Я родился в 3-м квартале")
} else if monthOfBirth > 9  && monthOfBirth <= 12 {
    print ("Я родился в 4-м квартале")
}



//: [Ранее: Задание 2](@previous)  |  задание 3 из 6  |  [Далее: Задание 4](@next)

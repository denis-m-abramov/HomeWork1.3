import Foundation

/*:
 ### Задание 5
 5.1 С помощью блоков `case` вы определяете возможные значения, которые может принять выражение. Однако Swift позволяет в пределах одного блока case указать не только на значение рассматриваемого параметра, но и на зависимость от какого-либо условия. Данный функционал реализуется с помощью ключевого слова `where` в блоке `case`.
 
 В этом задании вам необходимо сделать простой валидатор российского номера.
 Если длина номера больше 12, то вывести: сократите номер на N символов
 Если длина номера меньше 12, то вывести: дополните номер на N символов
 Если длина 12 и номер начинается с +7, то вывести: "Номер российский"
 
 (Подсказка: с помощью case проверить длину входного номера, с помощью where - то что он начинается с "+7", в случае, если номер не российский: вывести предупреждение.
 
 
 5.2. Реализуйте ту же логику посредством if else
 
 */
//:The task 5.1

//let codeNumber = +7         //код номера
//let lengthNumber = 12      //длина номера
//
//switch lengthNumber {
//case (1...11):
//    print("Дополните номер на N символов")
//case (13...):
//    print("Сократите номер на N символов")
//case 12 where codeNumber == +7:
//    print("Номер российский")
//default:
//    print("Предупреждение!")
//}

//если бы было побольше времени, то попытался разобрать другой вариант, где необходимо ввести длину номера не типом числа, а типом строки, но как передать в кейс не понимаю на данный момент

let codeNumber = +7         //код номера
let lengthNumber = 12       //длина номера

switch lengthNumber {
case ..<lengthNumber:
    print("Дополните номер на N символов")
case (lengthNumber + 1)...:
    print("Сократите номер на N символов")
case lengthNumber where codeNumber == +7:
    print("Номер российский")
default:
    print("Предупреждение!")
}


//Альтернативный вариант:

let phoneNumber = "+79605002323"

let russianPhoneNumberLength = 12
let russianPhoneNumberPrefix = "+7"

switch phoneNumber.count {
case russianPhoneNumberLength where phoneNumber.starts(with: russianPhoneNumberPrefix):
        print("Номер российский")
    case ..<russianPhoneNumberLength:
        print("Дополните строку на \(russianPhoneNumberLength - phoneNumber.count) символа(ов)")
    case (russianPhoneNumberLength + 1)...:
        print("Сократите строку на \(phoneNumber.count - russianPhoneNumberLength) символа(ов)")
    default:
        print("Предупреждение!")
}
//:The task 5.2

if lengthNumber >= 1 && lengthNumber <= 11 {
    print("Дополните номер на N символов")
} else if lengthNumber >= 13 {
    print("Сократите номер на N символов")
} else if lengthNumber == 12 && codeNumber == +7 {
    print("Номер российский")
} else {
    print("Предупреждение!")
}



//Альтернативный вариант:

if phoneNumber.count == russianPhoneNumberLength && phoneNumber.starts(with: russianPhoneNumberPrefix) {
    print("Номер российский")
} else if phoneNumber.count > russianPhoneNumberLength {
    print("Сократите строку на \(phoneNumber.count - russianPhoneNumberLength) символа(ов)")
} else if phoneNumber.count < russianPhoneNumberLength {
    print("Дополните строку на \(russianPhoneNumberLength - phoneNumber.count) символа(ов)")
} else {
    print("Предупреждение!")
}
//: [Ранее: Задание 4](@previous)  |  задание 5 из 6  | [Далее: Задание 6](@next)

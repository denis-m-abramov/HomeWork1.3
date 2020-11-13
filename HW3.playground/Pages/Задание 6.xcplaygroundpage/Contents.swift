import Foundation

/*:
 ### Задание 6
 6.1 Создайте перечисление `CalculationType`, содержащее четыре математических действия — *сложение*, *вычитание*, *умножение* и *деление* (если не знаете английские наименования — [translate.google.com](http://translate.google.com))
 */
enum CalculationType: String {
    case resultAddition = "сложения"
    case resultSubtraction = "вычитания"
    case resultMultiplication = "умножения"
    case resultDivision = "деления"
}
/*: 6.2 Создайте три константы: число один, число два и тип математической операции(CalculationType).

 В зависимости от значения переменной типа `CalculationType` выполните соответствующую математическую операцию с константами и выведите(print) результат. Для перебора всех возможных результатов используйте конструкцию `switch`. Пример вывода программы: "Результат сложения 6 и 8 равен 14" */
//let numberOne = 10
//let numberTwo = 5
//let calculationType: CalculationType = .division
//
//let resultAddition =  numberOne + numberTwo
//let resultSubtraction =  numberOne - numberTwo
//let resultMultiplication =  numberOne * numberTwo
//let resultDivision =  numberOne / numberTwo
//
//switch calculationType {
//case .addition:
//    print("Результат сложения \(numberOne) и \(numberTwo) равен \(resultAddition)")
//case .subtraction:
//    print("Результат вычитания \(numberTwo) из \(numberOne) равен \(resultSubtraction)")
//case .multiplication:
//    print("Результат умножения \(numberOne) на \(numberTwo) равен \(resultMultiplication)")
//case .division:
//    print("Результат деления \(numberOne) на \(numberTwo) равен \(resultDivision)")
//}

//Альтернативный вариант

let numberOne: Double = 10
let numberTwo: Double = 0

let calculationType: CalculationType = .resultDivision

var result = numberOne

switch calculationType {
case .resultAddition:
    result += numberTwo
case .resultSubtraction:
    result -= numberTwo
case .resultMultiplication:
    result *= numberTwo
case .resultDivision:
    numberTwo != 0 ? result /= numberTwo : print("На 0 делить нельзя!")
}

print("Результат \(calculationType.rawValue) \(numberOne) и \(numberTwo) равен \(result)")


/*: 6.3 Создайте перечисление `CurrencyUnit` со следующими членами: `rouble`, `dollar`, `euro`*/
enum CurrencyUnit {
    case rouble
    case dollar
    case euro
}
 
/*: 6.4 Внутри перечисления `CurrencyUnit` создайте еще одно перечисление `DollarCountries`, в котором содержится перчень стран, национальной валютой которых является доллар (USA, Canada, Australia) */
//enum CurrencyUnit1 {
//    enum DollarCountries: String {
//        case usa = "США"
//        case canada = "Канада"
//        case australia = "Австралия"
//    }
//    case rouble
//    case dollar(nation: DollarCountries)
//    case euro
//}
//
/*: 6.5 Добавьте в кейс `dollar` ассоциативное значение DollarCountries */

enum CurrencyUnit1 {
    enum DollarCountries: String {
        case usa = "США"
        case canada = "Канада"
        case australia = "Австралия"
    }
    case rouble
    case dollar(nation: DollarCountries)
    case euro
}

/*: 6.6 Создайте константу типа CurrencyUnit, задайте ей значение доллара Канады*/
let dollarCanada: CurrencyUnit1 = .dollar(nation: .canada)

//: [Ранее: Задание 5](@previous)  |  задание 6 из 6  |


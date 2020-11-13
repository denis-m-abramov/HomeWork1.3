import UIKit

//:  [Сылка на тесты](https://docs.google.com/forms/d/e/1FAIpQLSccthwi9BKLxJgJRHOO6NdM_cC5QoHGAR4pVf05mnr8N2ssJQ/viewform)

//: ## Home work 3

/*:
 ### Задание 1
 1.1 Представьте, что вы владелец розничного магазина и вам необходимо закупить товар, стоимость которого варьируется от его количества. Если количество закупаемого товара меньше 10 позиций, то цена равна 1000 рублей за штуку. От 10 до 20 единиц товара будет стоить вам 800 рублей за штуку. И вы заплатите 600 рублей за единцу при единовременно покупке от 20 единиц. Создайте условие для расчета цены за еденицу товара в зависмости от его количества и подсичитайте общую сумму используя конструкцию `if-else`. Постарайтесь написать короткое и читаемое решение
 */

let quantityOfGoods: Int = 10   //количество закупаемого товара
var priceForOne = ""           //цена за штуку товара

if quantityOfGoods >= 1 && quantityOfGoods < 10 {
    priceForOne = "1000"
} else if quantityOfGoods < 20 {
    //else if quantityOfGoods >= 10 && quantityOfGoods < 20
    priceForOne = "800"
} else if quantityOfGoods >= 20 {
    priceForOne = "600"
} else {
    print("Error!")
}
print("При покупке товара в количестве \(quantityOfGoods) штук цена за единицу товара будет равна \(priceForOne) рублей")

//как убрать вывод последнего print при выводе error?

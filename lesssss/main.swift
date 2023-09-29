//
//  main.swift
//  lesssss
//
//  Created by Руслан Алиджанов on 23.09.2023.
//

import Foundation

import Foundation
// Задание 1 Написать функцию, которая определяет, четное число или нет.
func chetOrNechet(number: Int){
    if number % 2 == 0 {
        print("Четное число")
    } else {
        print("Нечетное число")
    }
}

chetOrNechet(number: 22)

//Написать функцию, которая определяет, делится ли число без остатка на 3.
func oddOrNot_3(number: Int){
    if number % 3 == 0{
        print("Делится без остатка")
    }else {
        print("делится с остатком")
    }
}

oddOrNot_3(number: 2)
// Задание 3. Создать возрастающий массив из 100 чисел.

//var array1 = [0...100]
//for x in array1{
//    array1.append(x)
//}
//print(array1)

var massive = [Int]()
for i in 0...100{
    massive.append(i)
}
print(massive)


// Задание 4 Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
massive.removeAll { $0 % 2 == 0 && $0 % 3 != 0 }
print(massive)

// Задание 5 Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов.
//Числа Фибоначчи определяются соотношениями Fn=Fn-1 + Fn-2


func fibonacci(_ n: Int) -> Int {
    
    if n <= 1 {
        return n
    }
    
    var twoBefore = 0
    var oneBefore = 1
    var result = 0
    
    for _ in 2...n {
        result = twoBefore + oneBefore
        twoBefore = oneBefore
        oneBefore = result
    }
    return result
}

let result = fibonacci(10)
print(result)

// Задание 6 Написать функцию которая находит факториал числа N

func factorial1(_ num: Int)-> Int{
    //let summa = num * factorial1(num - 1)
    if num<1 {
        return 1
    }else{
        return num * factorial1(num - 1)
    }
}

print(factorial1(10))

//7. Задача: Простой калькулятор. Вводим два числа и операцию (сложение, вычитание, умножение, деление), после чего выводим результат.

func calculator(firstNum num1: Int, secondNum num2: Int, operation: Character){
    if operation == "/"{
        print(num1/num2)
    }
    if operation == "*"{
        print(num1*num2)
    }
    if operation == "+"{
        print(num1+num2)
    }
    if operation == "-"{
        print(num1-num2)
    }
   
}
calculator(firstNum: 24, secondNum: 2, operation: "+")

    // Задание 8 Напишите функцию которая пределяет длинну строки.
func stringLength(stroka str: String){
    print("длина строки \(str.count)")
    
}
 stringLength(stroka: "How are you?")
// Задание 9 Напишите функцию которая определит максимальное числа из трех.

func maxThree(firstNum num1: Int,secondNum num2: Int,thirdNum num3: Int ){
    if num1>num2&num3{
        print(num1)
    }
    if num2>num3&num1 {
        print(num2)
    }
    if num3>num1&num2{
        print(num3)
    }
}

maxThree(firstNum: 123, secondNum: 664, thirdNum: 23)

// Задание 10 Напишите функцию которая сделает реверс строки которую введет пользователь

func reverse(input: String)-> String{
    let reverseWord = String(input.reversed())
    return reverseWord
}

print(reverse(input: "Privet kak dela?"))

// Задание 13 Напишите функцию которая выведит каждое слово строки на новой строке.

//func newString(verb: String)-> String{
//}

func wordsInNewLine(_ inputString: String) {
    let words = inputString.components(separatedBy: .whitespacesAndNewlines)
    for word in words {
        print(word)
    }
}
let inputString1 = "Hello world How are you ?"
wordsInNewLine(inputString1)

// Задание 14 Напишите функцию которая выведит каждое слово через определенный интервал времени.

func printWordsWithDelay(_ vvodStr: String, interval: TimeInterval) {
    let words = vvodStr.components(separatedBy: .whitespacesAndNewlines)
    var currentIndex = 0
    
    let timer = Timer.scheduledTimer(withTimeInterval: interval, repeats: true) { timer in
        if currentIndex < words.count {
            print(words[currentIndex])
            currentIndex += 1
        } else {
            timer.invalidate()
        }
    }
    timer.fire()
    RunLoop.current.run()
}
let inputString = "Не уходи смиренно в сумрак вечной тьмы"
printWordsWithDelay(inputString, interval: 1.0) // Вывод слов каждую секунду

// Задание 15 Напишите функцию которая выведет количество слов в введенной строке

func countWords(_ inputString: String) -> Int {
    let words = inputString.components(separatedBy: .whitespacesAndNewlines)
    return words.count
}
let inputString3 = "Пример функции подсчета слов в Swift"
let wordCount = countWords(inputString3)
print("Количество слов в строке: \(wordCount)")

print(countWords("ddsdsd dsdsdggd dsdsdsd fdfdhhg dfhhhdf"))



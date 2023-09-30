//
//  main.swift
//  lesssss
//
//  Created by Руслан Алиджанов on 23.09.2023.
//

import Foundation

// Задание 1 Дан массив чисел. Напишите функцию, которая возвращает отсортированный массив в порядке возрастания без использования стандартной функции sort().
func sortirovka(_ array: inout [Int]) {
    for index in 1..<array.count {
        let currentElement = array[index]
        var position = index

        while position > 0 && array[position - 1] > currentElement {
            array[position] = array[position - 1]
            position -= 1
        }

        array[position] = currentElement
    }
}
var numbers = [5, 2, 9, 1, 5, 6]
sortirovka(&numbers)
print("Отсортированный массив: \(numbers)")


// Задание 2 Напишите функцию, которая принимает строку и возвращает true, если строка является палиндромом, и false в противном случае.

func isPalindrome(_ input: String) -> Bool {
    let strippedString = input.replacingOccurrences(of: "\\W", with: "", options: .regularExpression, range: nil)
    return strippedString.lowercased() == String(strippedString.reversed()).lowercased()
}
let inputString = "маска как сам"
let result = isPalindrome(inputString)
print(result)

// Задание 3 Дан массив целых чисел. Напишите функцию, которая возвращает сумму всех элементов массива.

func sumArray(array1: [Int])-> Int{
    return array1.reduce(0, +)
}
 
print(sumArray(array1: [1,2,4,5,42,534,3]))

// Задание 4 конвертация температуры: fahrenheit = (celsius * 9.0/5.0) + 32.0
//Напишите функцию, которая принимает значение температуры в градусах Цельсия и возвращает его эквивалент в градусах Фаренгейта.

func farenheit(celsium: Double)-> Double{
    let calculate = (celsium*9.0/5.0) + 32.0
    return calculate
}
print(farenheit(celsium: 36.0))

// задание 5 Создайте массив, который содержит имя, телефон и электронную почту. Затем напишите функцию для поиска записи по имени.
//func dictionaryUsers(){
//    let arrayUsersDate = []
//}
    

    func findContact(byName name: String) -> [String]? {
        let contacts = [
            ["Алексей", "+7-123-456-7890", "alexey@example.com"],
            ["Руслан", "+7-999-431-3455", "ruslan@example.com"],
            ["Нурлан", "+7-993-922-9504", "nurlan.a@example.com"],
            ["Саша", "+7-903-342-0245", "sasha@example.com"]
        ]
        let lowercasedName = name.lowercased()
        for contact in contacts {
            if contact[0].lowercased().contains(lowercasedName) {
                return contact
            }
        }
        return nil
    }
    // Пример использования функции поиска
    if let foundContact = findContact(byName: "Алексей") {
        print("Найден контакт: \(foundContact[0]), Телефон: \(foundContact[1]), Почта: \(foundContact[2])")
    } else {
        print("Контакт не найден")
    }

// Задание 6 Напишите функцию, которая принимает массив и возвращает новый массив, где первый элемент становится последним, а последний — первым. Остальные элементы остаются на своих местах.

func zamena(_ array: [Any]) -> [Any] {
    var newArray = array
    if newArray.count >= 2 {
        let firstElement = newArray.removeFirst()
        newArray.insert(firstElement, at: newArray.count)
    }
    return newArray
}
let originMass = [1,3,4,7,3]
let modifiedArray = zamena(originMass)
print(modifiedArray)

// Задание 7 Напишите функцию, которая принимает строку и делает первую букву каждого слова заглавной.
func upperCase(input: String) -> String {
    let words = input.components(separatedBy: " ")
    var result = ""
    
    for word in words {
        if !result.isEmpty {
            result += " "
        }
        let firstLetter = String(word.first!).uppercased()
        let restOfWord = String(word.dropFirst())
        result += firstLetter + restOfWord
    }
    
    return result
}
print(upperCase(input: "шла саша по шоссе и сосала сушку"))

// Задание 8 Напишите функцию, которая принимает день недели в форме строки и возвращает соответствующий день недели в числовом формате.

func dayOfWeekConvers(day: String) -> Int? {
    let daysOfWeek: [String: Int] =
       ["понедельник": 1,
        "вторник": 2,
        "среда": 3,
        "четверг": 4,
        "пятница": 5,
        "суббота": 6,
        "воскресенье": 7]
    let Day = day
    return daysOfWeek[Day]
}
if let dayNumber = dayOfWeekConvers(day: "пятница") {
    print("Номер дня недели: \(dayNumber)")
} else {
    print("Неверный день недели")
}

// Задание 9 Напишите функцию, которая принимает строку и возвращает true, если все символы в строк уникальные, и false в противном случае.
func sort(input: String)-> Bool{
    return Set(input).count == input.count
}

print(sort(input: "fdfd bvbv"))

// Задание 10 Напишите функцию, которая принимает два массива и возвращает один массив, состоящий из элементов обоих массивов.
func massive1(mass1: [String], mass2: [String]) -> [String]{
    let sumArray: [String] = mass1+mass2
    return sumArray
}
print(massive1(mass1: ["dsdsd"], mass2: ["dsfgfd"]))

// Задание 11 Напишите функцию, которая принимает строку и возвращает количество гласных в ней.
func countSogl(vvod: String) -> Int {
    let sogls: [Character] = ["a", "e", "i", "o", "u", "а", "е", "ё", "и", "о", "у", "ы", "э", "ю", "я"]
    let vvodStr = vvod
    var soglCount = 0
    
    for character in vvodStr {
        if sogls.contains(character) {
            soglCount += 1
        }
    }
    
    return soglCount
}

print(countSogl(vvod: "хорошо"))

// Задание 13 Напишите функцию, которая принимает число N и возвращает сумму всех чисел от 1 до N.
func sumToN(chislo: Int) -> Int{
        var sum = 0
        
        for number in 1...chislo{
            sum += number
        }
        return sum
    }

    print(sumToN(chislo: 5))

// Задание 14 Напишите функцию, которая принимает строку и возвращает самое длинное слово в этой строке.
func dlinSlovo(in predlozhenie: String) -> String {
    let words = predlozhenie.components(separatedBy: .whitespacesAndNewlines)
    var longestWord = ""
    
    for word in words {
        if word.count > longestWord.count {
            longestWord = word
        }
    }
    
    return longestWord
}


// 16 Напишите функцию, которая принимает два массива чисел и возвращает новый массив, содержащий элементы из обоих массивов, но без повторяющихся элементов
func massWithoutDubl(_ array1: [Int], _ array2: [Int]) -> [Int] {
    var bothArray: [Int] = []
    
    // Добавляем уникальные элементы из первого массива
    for element in array1 {
        if !bothArray.contains(element) {
            bothArray.append(element)
        }
    }
    
    // Добавляем уникальные элементы из второго массива
    for element in array2 {
        if !bothArray.contains(element) {
            bothArray.append(element)
        }
    }
    
    return bothArray
}

//17. Количество слов заданной длины:
//Напишите функцию, которая принимает строку и число N, а затем возвращает количество слов в строке, длина которых равна N.

func countWords(length N: Int, in inputString: String) -> Int {
    let words = inputString.components(separatedBy: .whitespacesAndNewlines)
    var count = 0
    
    for slovo in words {
        let cleanedWord = slovo.trimmingCharacters(in: .punctuationCharacters)
        if cleanedWord.count == N {
            count += 1
        }
    }
    
    return count
}
// 19 Простой шифратор и дешифратор слов с использованием замены букв

func encode(_ inputString: String) -> String {
    var encodedString = ""
    
    for char in inputString {
        if let unicodeScalar = char.unicodeScalars.first {
            let unicodeValue = unicodeScalar.value
            var encodedChar = char
            
            // Проверяем, является ли символ буквой
            if unicodeValue >= 97 && unicodeValue <= 122 { // a-z
                // Заменяем буквы от a до z на их "зеркальные" буквы
                let offset = 122 - unicodeValue
                encodedChar = Character(UnicodeScalar(122 - offset)!)
            }
            
            encodedString.append(encodedChar)
        }
    }
    
    return encodedString
}

func decode(_ encodedString: String) -> String {
    // Декодирование - это тот же процесс, что и кодирование
    return encode(encodedString)
}

// Пример использования функций
let originalMessage = "hello world"
let encodedMessage = encode(originalMessage)
print("Зашифрованное сообщение: \(encodedMessage)")

let decodedMessage = decode(encodedMessage)
print("Расшифрованное сообщение: \(decodedMessage)")





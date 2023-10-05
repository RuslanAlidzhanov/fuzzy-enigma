//
//  main.swift
//  lesssss
//
//  Created by Руслан Алиджанов on 23.09.2023.
//

import Foundation

print("Hello, World!")

// Задание 1
var eventsDictionary: [String: [String]] = [:]

func addEvent(date: String, event: String) {
    if let existingEvents = eventsDictionary[date] {
        eventsDictionary[date] = existingEvents + [event]
    } else {
        eventsDictionary[date] = [event]
    }
}

func showEvents(for date: String) {
    if let events = eventsDictionary[date] {
        print("События на \(date):")
        for event in events {
            print("- \(event)")
        }
    } else {
        print("На \(date) нет запланированных событий.")
    }
}

func main() {
    while true {
        print("Выберите опцию:")
        print("1. Добавить мероприятие")
        print("2. Показать мероприятия на определенную дату")
        print("3. Выйти из приложения")
        
        if let choice = readLine(), let option = Int(choice) {
            switch option {
            case 1:
                print("Введите дату (в формате ДД-ММ-ГГГГ):")
                if let date = readLine() {
                    print("Введите событие:")
                    if let event = readLine() {
                        addEvent(date: date, event: event)
                        print("Событие добавлено.")
                    }
                }
            case 2:
                print("Введите дату (в формате ДД-ММ-ГГГГ):")
                if let date = readLine() {
                    showEvents(for: date)
                }
            case 3:
                print("Приложение завершено.")
                return
            default:
                print("Неверный выбор. Пожалуйста, попробуйте еще раз.")
            }
        } else {
            print("Неверный ввод. Пожалуйста, введите число от 1 до 3.")
        }
    }
}
print(main())

// Задание 2

var settingsDictionary: [String: String] = [:]

func setSetting(key: String, value: String) {
    settingsDictionary[key] = value
    print("Настройка с ключом '\(key)' установлена на значение '\(value)'.")
}

func getSetting(key: String) -> String? {
    return settingsDictionary[key]
}

func zapusk() {
    while true {
        print("Выберите опцию:")
        print("1. Установить настройку")
        print("2. Извлечь настройку")
        print("3. Выйти из приложения")
        
        if let choice = readLine(), let option = Int(choice) {
            switch option {
            case 1:
                print("Введите ключ настройки:")
                if let key = readLine() {
                    print("Введите значение настройки:")
                    if let value = readLine() {
                        setSetting(key: key, value: value)
                    }
                }
            case 2:
                print("Введите ключ настройки для извлечения:")
                if let key = readLine() {
                    if let value = getSetting(key: key) {
                        print("Значение настройки для ключа '\(key)': \(value)")
                    } else {
                        print("Настройка с ключом '\(key)' не найдена.")
                    }
                }
            case 3:
                print("Приложение завершено.")
                return
            default:
                print("Неверный выбор. Пожалуйста, попробуйте еще раз.")
            }
        } else {
            print("Неверный ввод. Пожалуйста, введите число от 1 до 3.")
        }
    }
}
zapusk()

// Задание 3 Переводчик

func translateWord(_ word: String, dictionary: [String: String]) -> String? {
    return dictionary[word]
}

let englishToRussianDictionary = [
    "world": "мир",
    "road": "дорога",
    "table": "стол",
]

let wordToTranslate = "apple"
if let translation = translateWord(wordToTranslate, dictionary: englishToRussianDictionary) {
    print("Перевод слова '\(wordToTranslate)' на русский: \(translation)")
} else {
    print("Перевод для слова '\(wordToTranslate)' не найден.")
}



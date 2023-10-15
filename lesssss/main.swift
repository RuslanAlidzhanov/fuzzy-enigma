//
//  main.swift
//  lesssss
//
//  Created by Руслан Алиджанов on 23.09.2023.
//

import Foundation

//1 -  Задание: Времена года и их температура
//Описание: Создайте приложение, которое отображает среднюю температуру для различных времен года.

enum Seasons{
    case spring
    case autumn
    case summer
    case winter
    
    var averageTemperature: Double {
        
        switch self{
        case .autumn:
            return 15.0
        case .summer:
            return 25.0
        case .winter:
            return 0.0
        case .spring:
            return 15.0
        }
    }
    
}
let season = Seasons.spring
print(season.averageTemperature)
print("температура \(season) будет \(season.averageTemperature)")
// Задание 2 Транспорт и скорость

enum Transport{
    case car
    case plane
    case bike
    case train
    
    var maxSpeed: Int {
        
        switch self{
        case .bike:
            return 40
        case .car:
            return 220
        case .plane:
            return 900
        case .train:
            return 300
        }
        
    }
   
}
let selectTransport = Transport.bike
let sdd = selectTransport.maxSpeed
print("Максимальная скорость \(selectTransport) составляет \(sdd)")

// Задание 3

enum PaymentStatus {
    case notPaid
    case processing
    case paid(date: String)
    case error(message: String)
}

var paymentStatus: PaymentStatus = .paid(date: "12.12.2023")

switch paymentStatus {
case .notPaid:
    print("Платеж неоплачен.")
case .processing:
    print("Платеж находится в обработке.")
case .paid(let String):
    print("Платеж оплачен \(String)")
case .error(let message):
    print("Ошибка при обработке платежа: \(message)")
}
// Задание4 

enum cameraMode{
 case auto
 case portrait
 case landscape
 case night
    
    var recomendation: String{
        switch self{
        case .auto:
           return "Auto mode recomended for usual photo"
        case .landscape:
            return "Landscape mode need for wide scene"
        case.night:
            return "Night mode for photo in night"
        case .portrait:
            return "For photographs of people"
        }
        
    }
}
var mode = cameraMode.auto
var mode1 = mode.recomendation
print("mode: \(mode) \ndescription: \(mode1)")

// Задание5
enum animalsZoo{
 case savage
 case insect
 case herbivore
    
    var animalsFood: String{
        switch self{
        case .savage:
           return "meat"
        case .herbivore:
            return "Herbs, berries, green"
        case .insect :
            return "Fruits, sugar, similar to themselvs"
       
        }
        
    }
}
var animal = animalsZoo.herbivore
var animalFoodDesc = animal.animalsFood
print("AnimalName: \(animal) \nWhat is food: \(animalFoodDesc)")

// Задание 6

enum RoomType{
    case singleRoom
    case doubleRoom
    case Luxe
    
    var freeRooms: String{
        switch self {
        case .singleRoom:
            return "47 free rooms. Cost 120$/night"
        case .doubleRoom:
            return "20 free rooms Cost 150$/night"
        case .Luxe:
            return "12 free rooms Cost 450$/night"
            
        }
    }
 
}
let sum1 = RoomType.Luxe
let sum2 = sum1.freeRooms
// Задание 7


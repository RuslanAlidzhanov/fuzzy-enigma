import Foundation

// Протокол для оружия
protocol WeaponProtocol {
    var name: String { get }
    var owner: Fighter? { get set }
}

// Класс оружия
class Weapon: WeaponProtocol {
    var name: String
    var owner: Fighter?
    
    init(name: String) {
        self.name = name
        self.owner = nil
    }
}

// Протокол для базового бойца
protocol FighterProtocol {
    var name: String { get }
    var type: String { get }
    var weapon: WeaponProtocol { get }
    var health: Int { get set }
    var strength: Int { get }
    
    func reduceDamage()
    func attack()
    func hp()
    func isDead() -> Bool
}

// Базовый класс бойца
class Fighter/*: FighterProtocol*/ {
    var name: String
    var type: String
    var weapon: WeaponProtocol
    var health: Int
    var strength: Int
    
    init(name: String, type: String, weapon: WeaponProtocol, health: Int, strength: Int) {
        self.name = name
        self.type = type
        self.weapon = weapon
        self.health = health
        self.strength = strength
        self.weapon.owner = self
    }
    
    func reduceDamage() {
        health -= strength
    }
    
    func attack() {
        print("\(name) атакует с \(weapon.name)!")
    }
    
    func hp() {
        print("\(name) имеет \(health) здоровья.")
    }
    
    func isDead() -> Bool {
        return health <= 0
    }
}

// Протокол для навыков воина
protocol WarriorProtocol {
    func shieldBash()
}

// Класс воина
class Warrior: Fighter, WarriorProtocol {
     init(name: String, weapon: WeaponProtocol, health: Int, strength: Int) {
        super.init(name: name, type: "Воин", weapon: weapon, health: health, strength: strength)
    }
    
    func shieldBash() {
        print("\(name) использует прием Shield Bash!")
    }
}

// Протокол для навыков мага
protocol MageProtocol {
    func castSpell()
}

// Класс мага
class Mage: Fighter, MageProtocol {
    init(name: String, weapon: WeaponProtocol, health: Int, strength: Int) {
        super.init(name: name, type: "Маг", weapon: weapon, health: health, strength: strength)
    }
    
    func castSpell() {
        print("\(name) произносит заклинание!")
    }
}

// Структура Person
struct Person: Hashable {
    var name: String
    var age: Int
}

// Протоколы
protocol PeopleProtocol {
    func introduce()
}

protocol DefenseProtocol {
    func defend()
}

protocol AttackProtocol {
    func attack()
}

// Реализация на основе протоколов
struct People: PeopleProtocol {
    var person: Person
    
    init(person: Person) {
        self.person = person
    }
    
    func introduce() {
        print("Меня зовут \(person.name) и мне \(person.age) лет.")
    }
}

//extension Fighter: AttackProtocol {
//    func attack() {
//        weapon.owner?.attack()
//    }
    



// Пример использования

let sword = Weapon(name: "Меч")
let warrior = Warrior(name: "Артур", weapon: sword, health: 100, strength: 20)
warrior.attack() // Выведет: "Артур атакует с помощью Меча!"
warrior.shieldBash() // Выведет: "Артур использует прием Shield Bash!"

let staff = Weapon(name: "Посох")
let mage = Mage(name: "Мерлин", weapon: staff, health: 80, strength: 15)
mage.attack() // Выведет: "Мерлин атакует с помощью Посоха!"
mage.castSpell() // Выведет: "Мерлин произносит заклинание!"

let person = Person(name: "Иван", age: 30)
let people = People(person: person)
people.introduce() // Выведет: "Меня зовут Иван и мне 30 лет."


func added<T: Numeric>(A: T, B: T) -> T{
    A+B
}


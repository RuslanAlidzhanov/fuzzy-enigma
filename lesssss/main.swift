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
    func superAttack()
}

// Класс воина
class Warrior: Fighter, WarriorProtocol {
     init(name: String, weapon: WeaponProtocol, health: Int, strength: Int) {
        super.init(name: name, type: "Воин", weapon: weapon, health: health, strength: strength)
    }
    
    func superAttack() {
        print("\(name) использует прием super attack")
    }
}

// Протокол для навыков мага
protocol MagProtocol {
    func castSpell()
}

// Класс мага
class Mage: Fighter, MagProtocol {
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

//struct People: PeopleProtocol {
//    var person: Person
//    
//    init(person: Person) {
//        self.person = person
//    }
//    
//    func introduce() {
//        print("Меня зовут \(person.name) и мне \(person.age) лет.")
//    }
//}

//extension Fighter: AttackProtocol {
//    func attack() {
//        weapon.owner?.attack()
//    }
    

func added<T: Numeric>(A: T, B: T) -> T{
    A+B
}


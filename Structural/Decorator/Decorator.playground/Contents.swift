/*
 装饰器模式(Decorator)

 装饰器模式用于通过将对象包装在装饰器类的对象中来在运行时扩展或更改对象的功能。
 这为使用继承来修改行为提供了灵活的替代方法。
 */

protocol Coffee {
    func getCost() -> Double
    func getIngredients() -> String
}

class SimpleCoffee: Coffee {
    func getCost() -> Double {
        return 1.0
    }
    
    func getIngredients() -> String {
        return "Coffee"
    }
}

class CoffeeDecorator: Coffee {
    
    private let decoratedCoffee: Coffee
    fileprivate let ingredientSeparator: String = ", "
    
    required init(decoratedCoffee: Coffee) {
        self.decoratedCoffee = decoratedCoffee
    }
    
    func getCost() -> Double {
        return decoratedCoffee.getCost()
    }
    
    func getIngredients() -> String {
        return decoratedCoffee.getIngredients()
    }
}

final class Milk: CoffeeDecorator {
    
    required init(decoratedCoffee: Coffee) {
        super.init(decoratedCoffee: decoratedCoffee)
    }
    
    override func getCost() -> Double {
        return super.getCost() + 0.5
    }
    
    override func getIngredients() -> String {
        return super.getIngredients() + ingredientSeparator + "Milk"
    }
}

final class WhipCoffee: CoffeeDecorator {
    
    required init(decoratedCoffee: Coffee) {
        super.init(decoratedCoffee: decoratedCoffee)
    }
    
    override func getCost() -> Double {
        return super.getCost() + 0.7
    }
    
    override func getIngredients() -> String {
        return super.getIngredients() + ingredientSeparator + "Whip"
    }
}

// 使用
var someCoffee: Coffee = SimpleCoffee()
print("成本：\(someCoffee.getCost())； 组成：\(someCoffee.getIngredients())")
someCoffee = Milk(decoratedCoffee: someCoffee)
print("成本：\(someCoffee.getCost())； 组成：\(someCoffee.getIngredients())")
someCoffee = WhipCoffee(decoratedCoffee: someCoffee)
print("成本：\(someCoffee.getCost())； 组成：\(someCoffee.getIngredients())")


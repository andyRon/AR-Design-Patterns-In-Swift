/*
 享元模式(Flyweight)
 
 享元模式用于通过尽可能多地与其他类似对象共享来最小化内存使用或计算开销。
 */

final class SpecialityCoffee: CustomStringConvertible {
    
    var origin: String
    var description: String {
        get {
            return origin
        }
    }
    
    init(origin: String) {
        self.origin = origin
    }
}

final class Menu {
    private var coffeeAvailable: [String: SpecialityCoffee] = [:]
    
    func lookup(origin: String) -> SpecialityCoffee? {
        if coffeeAvailable.index(forKey: origin) == nil {
            coffeeAvailable[origin] = SpecialityCoffee(origin: origin)
        }
        
        return coffeeAvailable[origin]
    }
}

final class CoffeeShop {
    private var orders: [Int: SpecialityCoffee] = [:]
    private var menu = Menu()
    
    func takeOrder(origin: String, table: Int) {
        orders[table] = menu.lookup(origin: origin)
    }
    
    func serve() {
        for (table, origin) in orders {
            print("Serving \(origin) to table \(table)")
        }
    }
}

// 使用
let coffeeShop = CoffeeShop()

coffeeShop.takeOrder(origin: "Yirgacheffe, Ethiopia", table: 1)
coffeeShop.takeOrder(origin: "Buziraguhindwa, Burundi", table: 3)

coffeeShop.serve()

/*:
 原型模式 (Prototype)
 
 原型模式用于通过复制现有对象的所有属性来实例化新对象，从而创建独立克隆。当新对象的构造效率低下时，这种做法特别有用。
 */

class ChungasRevengeDisplay {
    var name: String?
    let font: String
    
    init(font: String) {
        self.font = font
    }
    
    func clone() -> ChungasRevengeDisplay {
        return ChungasRevengeDisplay(font:self.font)
    }
}
/*:
 ### Usage
 */
let Prototype = ChungasRevengeDisplay(font:"GotanProject")

let Philippe = Prototype.clone()
Philippe.name = "Philippe"

let Christoph = Prototype.clone()
Christoph.name = "Christoph"

let Eduardo = Prototype.clone()
Eduardo.name = "Eduardo"
/*:
 >**Further Examples:** [Design Patterns in Swift](https://github.com/kingreza/Swift-Prototype)
 */

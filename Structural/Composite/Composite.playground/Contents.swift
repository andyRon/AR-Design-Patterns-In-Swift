/*
 组合模式(Composite)
 
 复合模式用于创建相关对象的分层递归树结构，其中可以以标准方式访问和利用结构的任何元素。
 */
/// Component
protocol Shape {
    func draw(fillColor: String)
}

final class Square: Shape {
    func draw(fillColor: String) {
        print("绘制正方形，填充颜色是\(fillColor)")
    }
}

final class Circle: Shape {
    func draw(fillColor: String) {
        print("绘制园形，填充颜色是\(fillColor)")
    }
}

/// Composite
final class Whiteboard: Shape {
    lazy var shapes = [Shape]()
    
    init(_ shapes: Shape...) {
        self.shapes = shapes
    }
    
    func draw(fillColor: String) {
        for shape in self.shapes {
            shape.draw(fillColor: fillColor)
        }
    }
}

var whiteboard = Whiteboard(Circle(), Square())
whiteboard.draw(fillColor: "Red")

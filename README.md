用Swift来实现设计模式
-----------------


## 设计模式的基本原则

1. **单一职责原则**(SRP, Single Responsibility Principle)  
	就一个类而言，应该仅有一个引起它变化的原因。

2. **开放-封闭原则**(OCP, Open Close Principle)  
	**对扩展开放，对修改关闭**。

3. **依赖倒转原则**(DIP, Dependence Inversion Principle)  
	针对接口编程，依赖于抽象而不依赖于具体。

4. **里氏代换原则**(LSP, Liskov Substitution Principle)  
	**任何基类可以出现的地方，子类一定可以出现**。LSP是继承复用的基石，只有当派生类可以替换掉基类，且软件单位的功能不受到影响时，基类才能真正被复用，而派生类也能够在基类的基础上增加新的行为。里氏代换原则是对开闭原则的补充。实现开闭原则的关键步骤就是抽象化，而基类与子类的继承关系就是抽象化的具体实现，所以里氏代换原则是对实现抽象化的具体步骤的规范。

5. **迪米特法则**(LoD, Law of Demeter, 又称最少知道原则)  
	一个实体应当尽量少地与其他实体之间发生相互作用，使得系统功能模块相对独立。如果两个类不必彼此直接通信，那么这两个类就不应当发生直接的相互作用。如果其中一个类需要调用另一个类的某一个方法的话，可以通过第三者转发这个调用。

6. **合成复用原则**(CARP, Composite Reuse Principle)  
	尽量使用合成/聚合，尽量不要使用类继承。



## 23种设计模式

### 创建型模式(Creational)

> In software engineering, creational design patterns are design patterns that deal with object creation mechanisms, trying to create objects in a manner suitable to the situation. The basic form of object creation could result in design problems or added complexity to the design. Creational design patterns solve this problem by somehow controlling this object creation.		----[wikipedia.org](http://en.wikipedia.org/wiki/Creational_pattern)

创建型模式提供了一种在创建对象的同时隐藏创建逻辑的方式，而不是使用new运算符直接实例化对象。这使得程序在判断针对某个给定实例需要创建哪些对象时更加灵活。

- [工厂模式](Creational/Factory/Factory.md) (Factory)
- [抽象工厂模式](Creational/Factory/Factory.md) (Abstract Factory)
- [单例模式](Creational/Singleton/Singleton.md) (Singleton)		🍎
- [建造者模式](Creational/Builder/Builder.md) (Builder)
- [原型模式](Creational/Prototype/Prototype.md) (Prototype)


### 结构型模式(Structural)

> In software engineering, structural design patterns are design patterns that ease the design by identifying a simple way to realize relationships between entities.  	----[wikipedia.org](http://en.wikipedia.org/wiki/Structural_pattern)

结构型模式关注类和对象的组合。继承的概念被用来组合接口和定义组合对象获得新功能的方式。


- [适配器模式](Structural/Adapter/Adapter.md) (Adapter)
- [桥接模式](Structural/Bridge/Bridge.md) (Bridge)
- [组合模式](Structural/Composite/Composite.md) (Composite)
- [装饰器模式](Structural/Decorator/Decorator.md) (Decorator)
- [外观模式](Structural/Facade/Facade.md) (Facade)
- [享元模式](Structural/Flyweight/Flyweight.md) (Flyweight)
- [代理模式](Structural/Proxy/Proxy.md) (Proxy)		🍎


### 行为型模式(Behavioral)

> In software engineering, behavioral design patterns are design patterns that identify common communication patterns between objects and realize these patterns. By doing so, these patterns increase flexibility in carrying out this communication.  	----[wikipedia.org](http://en.wikipedia.org/wiki/Behavioral_pattern)

行为型模式特别关注对象之间的通信。

行为模式涉及到算法和对象间职责的分配。行为模式不仅描述对象或类的模式，还描述它们之间的通信模式。这些模式刻划了在运行时难以跟踪的复杂的控制流。它们将你的注意 力从控制流转移到对象间的联系方式上来。

- [责任链模式](Behavioral/ChainofResponsibility/ChainofResponsibility.md) (Chain of Responsibility)
- [命令模式](Behavioral/Command/Command.md) (Command)			
- [解释器模式](Behavioral/Interpreter/Interpreter.md) (Interpreter)
- [迭代器模式](Behavioral/Iterator/Iterator.md) (Iterator)
- [中介者模式](Behavioral/Mediator/Mediator.md) (Mediator)
- [备忘录模式](Behavioral/Memento/Memento.md) (Memento)
- [观察者模式](Behavioral/Observer/Observer.md) (Observer)			🍎
- [状态模式](Behavioral/State/State.md) (State)
- [策略模式](Behavioral/Strategy/Strategy.md) (Strategy)
- [模板模式](Behavioral/Template/Template.md) (Template)
- [访问者模式](Behavioral/Visitor/Visitor.md) (Visitor)




### 23设计模式之间的关系

![设计模式之间的关系](the-relationship-between-design-patterns.jpg)


## 其它设计模式

MVVM and MVC, are actually *architectural patterns*, which span an entire app or subsystem architecture. 


- MVC
- [MVVM](MVVM/MVVM.md)



## 参考

- 主要参考：
[Design-Patterns-In-Swift](https://github.com/ochococo/Design-Patterns-In-Swift)
[Design Patterns by Tutorials](https://store.raywenderlich.com/products/design-patterns-by-tutorials) 

[DesignPatterns-Swift](https://github.com/lizelu/DesignPatterns-Swift)
[Trip-to-iOS-Design-Patterns](https://github.com/skyming/Trip-to-iOS-Design-Patterns): iOS 设计模式相关资料整理



- 其它参考

https://github.com/leichunfeng/DesignPatterns-Objective-C

https://www.appcoda.com/design-pattern-creational/


观察者模式  https://www.jianshu.com/p/c687110e552c

https://design-patterns.readthedocs.io/zh_CN/latest/index.html

http://www.runoob.com/design-pattern/design-pattern-tutorial.html
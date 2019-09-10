## Design Patterns by Tutorials

### 介绍

#### 设计模式缺点

##### If you overuse design patterns, your project can become overly complex.



##### Many design patterns are made redundant by modern programming languages.



##### Design patterns are a lazy substitute for learning object-oriented principles.



##### But, but...check out this thread on Twitter, which definitely shows that design patterns are worthless!



#### 设计模式的优点



##### 设计模式创造了一种共同语言

您可以简单地说明您认为最适合的设计模式，而不是详细描述特定解决方案。 这简化了开发人员之间的沟通。



##### 设计模式让新开发人员快速上手

使用设计模式的项目上的新开发人员比使用完全自定义逻辑的项目更容易。



##### 设计模式让你成为一个更好的人

好吧，这个可能仍然有争议。 但是一定程度的自我改善永远不会浪费！ 然而，这有一个道理，因为下一个维护你的项目的开发人员肯定会认为你是一个更好的人，因为你给他们留下了一个漂亮的，设计模式填充的项目，而不是意大利面条编码的混乱！



##### 发现代码之间的相似之处。

一旦了解并理解了不同的设计模式，就会开始注意到它们在代码中的使用。 这让您有所帮助，因为您至少对如何使用该代码非常熟悉。 例如，iOS和Mac编程大量使用了委托模式。 如果您移动到另一个也使用Delegation的平台并立即熟悉代码的组织方式，您可以轻松地发现这种模式。



### Class Diagram

类图就像工程蓝图; 它们通过图片，符号和注释提供系统的相关信息。

您可能听说过统一建模语言（UML），它是用于创建类图，建筑图和其他系统插图的标准语言。 有关UML的完整讨论超出了本书的范围，但您不需要在日常的iOS开发中理解很多UML。 相反，您将在本章中学习UML的一个子集，这对于创建类图和描述设计模式很有用。

类图包括classes, protocols, properties, methods and relationships.

`Dog`类：

![](/Users/andyron/myfield/github/AR-Design-Patterns-In-Swift/images/ARDPSwift-001.jpg)

继承：

![image-20190910113718244](/Users/andyron/myfield/github/AR-Design-Patterns-In-Swift/images/ARDPSwift-002.jpg)



读的时候不要都“某某继承至某某”

![](/Users/andyron/myfield/github/AR-Design-Patterns-In-Swift/images/ARDPSwift-003.jpg)

直接读为“牧羊犬是一个狗”。

属性关系，（UML，association）：

![](/Users/andyron/myfield/github/AR-Design-Patterns-In-Swift/images/ARDPSwift-004.jpg)

继承箭头始终指向超类，属性箭头始终指向属性类。

“Famer里有条狗”

![](/Users/andyron/myfield/github/AR-Design-Patterns-In-Swift/images/ARDPSwift-005.jpg)

可是使用一对多的关系，但尽量还是一对一的关系。

![](/Users/andyron/myfield/github/AR-Design-Patterns-In-Swift/images/ARDPSwift-006.jpg)



协议：

![](/Users/andyron/myfield/github/AR-Design-Patterns-In-Swift/images/ARDPSwift-007.jpg)

class implements(or conforms to) a protocol:

![image-20190910115055932](/Users/andyron/myfield/github/AR-Design-Patterns-In-Swift/images/ARDPSwift-008.jpg)

“users”  or "dependency"(UML)

![](/Users/andyron/myfield/github/AR-Design-Patterns-In-Swift/images/ARDPSwift-009.jpg)

UML故意模糊“依赖”是什么。 因此，无论何时使用依赖项箭头，通常都应该注释其用途。 例如，您可以使用依赖关系箭头指示以下内容：

- weak属性或代表。
- 作为参数传递给方法但不作为属性保存的对象。
- 松耦合或回调，例如从视图到控制器的IBAction。



![](/Users/andyron/myfield/github/AR-Design-Patterns-In-Swift/images/ARDPSwift-010.jpg)



属性和方法

![](/Users/andyron/myfield/github/AR-Design-Patterns-In-Swift/images/ARDPSwift-011.jpg)

上面的完整类图

![](images/ARDPSwift-012.jpg)
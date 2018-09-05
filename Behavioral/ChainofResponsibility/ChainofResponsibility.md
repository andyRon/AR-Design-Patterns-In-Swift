责任链模式  Chain of Responsibility
----------


为请求创建了一个接收者对象的链。这种模式给予请求的类型，对请求的发送者和接收者进行解耦。

### 意图
使多个对象都有机会处理请求，从而避免请求的发送者和接收者之间的耦合关系。将这 些对象连成一条链，并沿着这条链传递该请求，直到有一个对象处理它为止。
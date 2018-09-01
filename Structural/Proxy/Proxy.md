代理模式
-------
委托模式？

英文叫做Proxy或Surrogate

> The proxy pattern is used to provide a surrogate or placeholder object, which references an underlying object.
 Protection proxy is restricting access.
 Virtual proxy is used for loading object on demand.


代理模式完成委托方交给的任务,委托方有一些任务自己不想完成,但是还需要要实现,则将该任务存放到协议中,由代理完成.但是代理并不会主动的执行任务,需要委托方通知代理。


### 应用场景

当一个类的某些功能需要由别的类来实现，但是又不确定具体会是哪个类实现。


### iOS实例

tableview的 数据源delegate，通过和protocol的配合，完成委托诉求。列表row个数delegate，自定义的delegate


### 适用环境

根据代理模式的使用目的，常见的代理模式有以下几种类型：

- 远程(Remote)代理：为一个位于不同的地址空间的对象提供一个本地 的代理对象，这个不同的地址空间可以是在同一台主机中，也可是在 另一台主机中，远程代理又叫做大使(Ambassador)。
- 虚拟(Virtual)代理：如果需要创建一个资源消耗较大的对象，先创建一个消耗相对较小的对象来表示，真实对象只在需要时才会被真正创建。
- Copy-on-Write代理：它是虚拟代理的一种，把复制（克隆）操作延迟 到只有在客户端真正需要时才执行。一般来说，对象的深克隆是一个 开销较大的操作，Copy-on-Write代理可以让这个操作延迟，只有对象被用到的时候才被克隆。
- 保护(Protect or Access)代理：控制对一个对象的访问，可以给不同的用户提供不同级别的使用权限。
- 缓冲(Cache)代理：为某一个目标操作的结果提供临时的存储空间，以便多个客户端可以共享这些结果。
- 防火墙(Firewall)代理：保护目标不让恶意用户接近。
- 同步化(Synchronization)代理：使几个用户能够同时使用一个对象而没有冲突。
- 智能引用(Smart Reference)代理：当一个对象被引用时，提供一些额外的操作，如将此对象被调用的次数记录下来等。

 

### 参考
https://design-patterns.readthedocs.io/zh_CN/latest/structural_patterns/proxy.html
http://www.runoob.com/design-pattern/proxy-pattern.html

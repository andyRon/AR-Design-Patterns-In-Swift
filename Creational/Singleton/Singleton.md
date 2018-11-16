单例模式(Singleton)
-------

### 动机
对于系统中的某些类来说，只有一个实例很重要，例如，一个系统中可以存在多个打印任务，但是只能有一个正在工作的任务；一个系统只能有一个窗口管理器或文件系统；一个系统只能有一个计时工具或ID（序号）生成器。

如何保证一个类只有一个实例并且这个实例易于被访问呢？定义一个全局变量可以确保对象随时都可以被访问，但不能防止我们实例化多个对象。

一个更好的解决办法是让类自身负责保存它的唯一实例。这个类可以保证没有其他实例被创建，并且它可以提供一个访问该实例的方法。这就是单例模式的模式动机。

### 定义

单例模式：单例模式确保某一个类只有一个实例，而且自行实例化并向整个系统提供这个实例，这个类称为单例类，它提供全局访问的方法。

单例模式的要点有三个：
一是某个类只能有一个实例；
二是它必须自行创建这个实例；
三是它必须自行向整个系统提供这个实例。




### 实例
UIApplication, Bundle, NotificationCenter, FileManager, UserDefault, URLCache

类型属性
UIApplication.shared
Bundle.main
NotificationCenter.default
FileManager.default
URLCache.shared
UserDefaults.standard


### 参考：

https://design-patterns.readthedocs.io/zh_CN/latest/creational_patterns/singleton.html


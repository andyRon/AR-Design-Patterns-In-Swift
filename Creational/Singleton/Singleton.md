单例模式
-------

单例模式可以保证App在程序运行中，一个类只有唯一个实例，从而做到节约内存。
在整个App程序中，这一份资源是共享的。
提供一个固定的实例创建方法。



- 实例
UIApplication, NSBundle, NSNotificationCenter, NSFileManager, NSUserDefault, NSURLCache

类型属性
UIApplication.shared
Bundle.main
NotificationCenter.default
FileManager.default
URLCache.shared
UserDefaults.standard


/*
 单例模式(Singleton)
 
 单例模式确保只创建特定类的一个对象。对singleton类的对象的所有进一步引用都引用相同的底层实例。
 应用很少，不要过度使用这种模式！
 */

class DeathStarSuperlaser {
    
    public static let sharedInstance = DeathStarSuperlaser()
    
    private init() {
        
    }
}

let laser = DeathStarSuperlaser.sharedInstance



/*
 外观模式(Facade)
 
 外观模式用于定义更复杂子系统的简化接口。
 */

import Foundation

enum Eternal {
    
    static func set(_ object: Any, forKey defaultName: String) {
        let defaults: UserDefaults = UserDefaults.standard
        defaults.set(object, forKey: defaultName)
        defaults.synchronize()
    }
    
    static func object(forKey key: String) -> AnyObject! {
        let defaults: UserDefaults = UserDefaults.standard
        return defaults.object(forKey: key) as AnyObject
    }
}

// 使用
Eternal.set("Disconnect me. I’d rather be nothing", forKey:"Bishop")
Eternal.object(forKey: "Bishop")

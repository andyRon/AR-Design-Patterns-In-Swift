/*
 适配器模式(Adapter)

 适配器模式用于通过将“adaptee”包装为支持客户端所需接口的类来提供两个不兼容类型之间的链接。
 */

import Foundation

protocol OlderDeathStarSuperLaserAiming {
    var angleV: NSNumber {get}
    var angleH: NSNumber {get}
}

/// Adaptee
struct DeathStarSuperlaserTarget {
    let angleHorizontal: Double
    let angleVertical: Double
    
    init(angleHorizontal: Double, angleVertical: Double) {
        self.angleVertical = angleVertical
        self.angleHorizontal = angleHorizontal
    }
}

/// Adapter
struct OldDeathStarSuperlaserTarget: OlderDeathStarSuperLaserAiming {
    private let target: DeathStarSuperlaserTarget
    
    var angleV: NSNumber {
        return NSNumber(value: target.angleVertical)
    }
    
    var angleH: NSNumber {
        return NSNumber(value: target.angleHorizontal)
    }
    
    init(_ target: DeathStarSuperlaserTarget) {
        self.target = target
    }
}

// 使用
let target = DeathStarSuperlaserTarget(angleHorizontal: 24.0, angleVertical: 18.0)
let oldFormat = OldDeathStarSuperlaserTarget(target)

oldFormat.angleH
oldFormat.angleV

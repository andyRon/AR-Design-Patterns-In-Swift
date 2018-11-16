/*
 桥接模式(Bridge)

 桥接模式用于将类的抽象元素与实现细节分开，提供替换实现细节而无需修改抽象的方法。
 */

protocol Switch {
    var appliance: Appliance {get set}
    func turnOn()
}

protocol Appliance {
    func run()
}

class RemoteControl: Switch {
    var appliance: Appliance
    
    func turnOn() {
        self.appliance.run()
    }
    
    init(appliance: Appliance) {
        self.appliance = appliance
    }
}

class TV: Appliance {
    func run() {
        print("tv turned on")
    }
}
/// 吸尘器
class VacuumCleaner: Appliance {
    func run() {
        print("Vaccum cleaner turned on")
    }
}

var tvRemoteControl = RemoteControl(appliance: TV())
tvRemoteControl.turnOn()

var fancyVacuumCleanerRemoteControl = RemoteControl(appliance: VacuumCleaner())
fancyVacuumCleanerRemoteControl.turnOn()

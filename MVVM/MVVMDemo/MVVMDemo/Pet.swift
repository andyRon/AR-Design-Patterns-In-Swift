//
//  Pet.swift
//  MVVMDemo
//
//  Created by Andy Ron on 2018/10/11.
//  Copyright © 2018 Andy Ron. All rights reserved.
//

import Foundation
import UIKit

public class Pet {
    public enum Rarity {
        case common
        case uncommon
        case rare
        case veryRare
    }
    
    public let name: String
    public let birthday: Date
    public let rarity: Rarity
    public let image: UIImage
    
    public init (name: String, birthday: Date, rarity: Rarity, image: UIImage) {
        self.name = name
        self.birthday = birthday
        self.rarity = rarity
        self.image = image
    }
}

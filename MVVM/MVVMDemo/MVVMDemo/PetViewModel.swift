//
//  PetViewModel.swift
//  MVVMDemo
//
//  Created by Andy Ron on 2018/10/11.
//  Copyright © 2018 Andy Ron. All rights reserved.
//

import Foundation
import UIKit

public class PetViewModel {
    
    private let pet: Pet
    private let calendar: Calendar
    
    public init(pet: Pet) {
        self.pet = pet
        self.calendar = Calendar(identifier: .gregorian)
    }
    
    public var name: String {
        return pet.name
    }
    
    public var image: UIImage {
        return pet.image
    }
    
    public var ageText: String {
        let today = calendar.startOfDay(for: Date())
        let birthday = calendar.startOfDay(for: pet.birthday)
        let components = calendar.dateComponents([.year], from: birthday, to: today)
        let age = components.year!
        return "\(age) years old"
    }
    
    public var adoptionFeeText: String {
        switch pet.rarity {
        case .common:
            return "$50.00"
        case .uncommon:
            return "$75.00"
        case .rare:
            return "$150.00"
        case .veryRare:
            return "$500.00"
        }
    }
    
}

extension PetViewModel {
    public func configure(_ view: PetView) {
        view.nameLabel.text = name
        view.ageLabel.text = ageText
        view.imageView.image = image
        view.adoptionFeeLabel.text = adoptionFeeText
    }
}

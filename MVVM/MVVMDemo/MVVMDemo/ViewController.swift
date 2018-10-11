//
//  ViewController.swift
//  MVVMDemo
//
//  Created by Andy Ron on 2018/10/11.
//  Copyright © 2018 Andy Ron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let birthday = Date(timeIntervalSinceNow: (-2 * 86400 * 366))
        let image = UIImage(named: "stuart")!
        let stuart = Pet(name: "Stuart", birthday: birthday, rarity: .veryRare, image: image)
        
        let viewModel = PetViewModel(pet: stuart)
        
        let frame = CGRect(x: 50, y: 0, width: 300, height: 420)
        let view = PetView(frame: frame)
        
        viewModel.configure(view)
        
        self.view.addSubview(view)

    }


}


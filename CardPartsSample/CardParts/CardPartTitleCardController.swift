//
//  CardPartTitleCardController.swift
//  CardPartsSample
//
//  Created by Cyan on 2019/07/03.
//  Copyright © 2019 Cyan. All rights reserved.
//


import UIKit
import Foundation
import CardParts

class CardPartTitleCardController: CardPartsViewController {

    let firstCP = CardPartTitleDescriptionView(titlePosition: .top, secondaryPosition: .right)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstCP.leftTitleText = "散歩がてら寄りたいコンビニ５選"
        firstCP.rightTitleText = "Sampleスタッフ"
        
        setupCardParts([firstCP])
    }
}

class SecondCardPartTitleCardController: CardPartsViewController {
    let secondCP = CardPartTitleDescriptionView(titlePosition: .top, secondaryPosition: .center(amount: 0))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondCP.leftTitleText = "エンジニアあるある　〜お隣オフィスに突撃編〜"
        
        setupCardParts([secondCP])
    }
}

//
//  CardPartTextController.swift
//  CardPartsSample
//
//  Created by Cyan on 2019/07/03.
//  Copyright © 2019 Cyan. All rights reserved.
//


import UIKit
import CardParts

class CardPartTextController: CardPartsViewController {

    let cardPartTextView = CardPartTextView(type: .normal)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardPartTextView.text = "これはCardPartsのサンプルです。"
        
        setupCardParts([cardPartTextView])
    }

}

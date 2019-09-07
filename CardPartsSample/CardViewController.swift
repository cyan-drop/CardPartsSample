//
//  ViewController.swift
//  CardPartsSample
//
//  Created by Cyan on 2019/07/03.
//  Copyright © 2019 Cyan. All rights reserved.
//

import UIKit
import CardParts

class CardViewController: CardsViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let cards: [CardPartsViewController] = [
            CardPartTextController(), 
            ThemedCardViewController(title: "News!"),
            CardPartTitleCardController(),
            SecondCardPartTitleCardController(),
            CardPartPagedViewController(),
            CardPartTableViewController(),
            CardPartButtonController(),
            CardPartsReactiveController()
        ]
        
        loadCards(cards: cards)
        
    }


}


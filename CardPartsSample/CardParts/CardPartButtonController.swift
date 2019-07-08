//
//  CardPartButtonController.swift
//  CardPartsSample
//
//  Created by Cyan on 2019/07/03.
//  Copyright © 2019 Cyan. All rights reserved.
//

import Foundation
import CardParts

class CardPartButtonController: CardPartsViewController {
    
    let cardPartTextView = CardPartTextView(type: .normal)
    let cardPartButtonView = CardPartButtonView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardPartTextView.text = "アプリの評価をお願いします"
        
        cardPartButtonView.setTitle("すごくいいね!", for: .normal)
        cardPartButtonView.setTitleColor(UIColor.magenta, for: .normal)
        cardPartButtonView.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        setupCardParts([cardPartTextView, cardPartButtonView])
    }
    
    @objc func buttonTapped() {
        
        let alertController = UIAlertController(title: "ありがとうございます!", message: "引き続き記事をお楽しみください。", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
}

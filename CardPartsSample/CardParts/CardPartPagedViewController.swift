//
//  CardPartPagedViewController.swift
//  CardPartsSample
//
//  Created by Cyan on 2019/07/03.
//  Copyright © 2019 Cyan. All rights reserved.
//


import UIKit
import CardParts

class CardPartPagedViewController: CardPartsViewController {
    
    let cardPartTextView = CardPartTextView(type: .normal)
    
    
    let cardPartTextLogView = CardPartTextView(type: .normal)
    let articleTitle: [String] = ["タイトル１", "タイトル２", "タイトル３", "タイトル４"]
    let imageName: [String] = ["titleImage1", "titleImage2", "titleImage3", "titleImage4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardPartTextView.text = "最近の投稿"
        var stackViews: [CardPartStackView] = []
        
        for i in 0...3 {
            
            let sv = CardPartStackView()
            sv.axis = .vertical
            sv.spacing = 3
            stackViews.append(sv)
            
            let cardPartImage = CardPartImageView(image: UIImage(named: imageName[i]))
            cardPartImage.contentMode = .scaleAspectFit
            cardPartImage.addConstraint(NSLayoutConstraint(item: cardPartImage, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 300))
            sv.addArrangedSubview(cardPartImage)
            
            let articleTitleView = CardPartTextView(type: .title)
            articleTitleView.text = articleTitle[i]
            articleTitleView.textAlignment = .center
            
            sv.addArrangedSubview(articleTitleView)
        }
        
        let cardPartPagedView = CardPartPagedView(withPages: stackViews, andHeight: 400)
        
        setupCardParts([cardPartTextView, cardPartPagedView])
    }
}

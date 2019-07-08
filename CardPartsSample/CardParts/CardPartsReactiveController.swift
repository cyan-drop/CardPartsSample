//
//  CardPartsReactiveController.swift
//  CardPartsSample
//
//  Created by Cyan on 2019/07/03.
//  Copyright © 2019 Cyan. All rights reserved.
//


import UIKit
import CardParts
import RxSwift
import RxCocoa

class ReactiveCardViewModel {
    
    var text = BehaviorRelay(value: "")
    
    init() {
        startRandomText()
    }
    
    func startRandomText() {
        Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(self.randomText), userInfo: nil, repeats: true)
    }
    
    @objc func randomText() {
        switch arc4random() % 3 {
        case 0:
            text.accept("aaaさんが「最近いった美味しいお店」にコメントしました。")
        case 1:
            text.accept("「夏に行きたい避暑地特集」が投稿されました。")
        case 2:
            text.accept("スタッフによる一押しメニュー集計結果が出ました！")
        default:
            return
        }
    }
    
}

class CardPartsReactiveController : CardPartsViewController {
    
    var isHidden = BehaviorRelay(value: false)
    
    var viewModel = ReactiveCardViewModel()
    
    var titlePart = CardPartTitleView(type: .titleOnly)
    var textPart = CardPartTextView(type: .normal)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titlePart.title = "タイムライン"
        
        viewModel.text.asObservable().bind(to: textPart.rx.text).disposed(by: bag)
        
        setupCardParts([titlePart, textPart])
        
        invalidateLayout(onChanges: [viewModel.text])
    }
    
}

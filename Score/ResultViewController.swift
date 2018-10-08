//
//  ResultViewController.swift
//  Score
//
//  Created by Kazuki Ohashi on 2018/09/11.
//  Copyright © 2018年 Kazuki Ohashi. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import PageMenu

class ResultViewController: UIViewController {
    
    //viewの現れる順番でエラー起きる
    
    var playerArray: [FIRPlayer] = []
    var playerRef: DatabaseReference?
    var pageMenu: CAPSPageMenu?
    var battingOrder:Int = 0
    var result : String = ""
    var outCounts = 0
    //ストライク、ボール、ランナーの状況、
        //何を渡すか。打順、打者と投手のID、捕殺だれか、結果、想定される結果３パターン
    
    
    override func viewWillAppear(_ animated: Bool) {
        playerRef = Database.database().reference()
        
        
        
        //型はUIViewControllerでいいのか、resultChildViewControllerのクラスを作るなら配列の型変えないといけない
        let resultChildViewController1 = self.storyboard?.instantiateViewController(withIdentifier: "Result1") as! ResultChildViewController1
        let resultChildViewController2 = self.storyboard?.instantiateViewController(withIdentifier: "Result2")
        let resultChildViewController3 = self.storyboard?.instantiateViewController(withIdentifier: "Result3")
        let resultChildViewController4 = self.storyboard?.instantiateViewController(withIdentifier: "Result4")
        
        
        //oohashi: 先生、ここも変えたいです。
        resultChildViewController1.title = Situation.result.childOptionOne().resultTitle
        resultChildViewController2?.title = "結果2"
        resultChildViewController3?.title = "結果3"
        resultChildViewController4?.title = "その他"
        

        
        
        
        let resultChildViewControllerArray: [UIViewController] = [resultChildViewController1, resultChildViewController2!, resultChildViewController3!, resultChildViewController4!]
        
        let parameters: [CAPSPageMenuOption] = [
            .menuItemSeparatorWidth(4.0),
            .useMenuLikeSegmentedControl(true),
            .menuItemSeparatorPercentageHeight(0.0),
            .scrollMenuBackgroundColor(#colorLiteral(red: 0, green: 0.3764705882, blue: 0.01568627451, alpha: 1)),
            .selectionIndicatorColor(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
        ]

        pageMenu =  CAPSPageMenu(viewControllers: resultChildViewControllerArray, frame: view.bounds, pageMenuOptions: parameters)
        view.addSubview(pageMenu!.view)
        
//        resultChildViewController1.resultDecideButton.addTarget(self, action: #selector(handleDecideButtonOne(_:forEvent:)), for: .touchUpInside)



        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
//        let resultChildViewController = self.storyboard?.instantiateViewController(withIdentifier: "Result1") as! ResultChildViewController1
//        //oohashi: delegateメソッドのインスタンスはResultViewControllerだという宣言
//        resultChildViewController.delegate = AAA()
//        print(resultChildViewController.delegate)
        
    }
//    func setResult(resultEnumString: String, resultImage: UIImage) {
//        let resultChildViewController = self.storyboard?.instantiateViewController(withIdentifier: "Result1") as! ResultChildViewController1
//        resultChildViewController.resultTextView.font = UIFont(name:(resultChildViewController.resultTextView.font?.fontName)!,size: 30)
//        resultChildViewController.resultTextView.isEditable = false
//        resultChildViewController.resultTextView.text = Situation.result.childOptionOne().resultString
//        resultChildViewController.resultImageView.image = resultImage
//    }
//
//    @objc func handleDecideButtonOne(_ sender: UIButton, forEvent event: UIEvent){
//        self.dismiss(animated: true, completion: nil)
//    }
    
    

}

//class AAA: resultChild1Delegate{
//    func setResult(resultEnumString: String, resultImage: UIImage) {
//
//        let resultChildViewController = ResultViewController().storyboard?.instantiateViewController(withIdentifier: "Result1") as! ResultChildViewController1
//        resultChildViewController.resultTextView.font = UIFont(name:(resultChildViewController.resultTextView.font?.fontName)!,size: 30)
//        resultChildViewController.resultTextView.isEditable = false
//        resultChildViewController.resultTextView.text = Situation.result.childOptionOne().resultString
//        resultChildViewController.resultImageView.image = resultImage
//    }
//}

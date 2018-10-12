//
//  GameViewController.swift
//  Score
//
//  Created by Kazuki Ohashi on 2018/09/11.
//  Copyright © 2018年 Kazuki Ohashi. All rights reserved.
///////////////

import UIKit
import Firebase
import FirebaseDatabase

//oohashi: gameは入力専用でresultはデータやシチュエーション設定画面
class GameViewController: UIViewController {
    //imageView消すの忘れない
    //ピッチャー
    
    
    
    
    @IBOutlet weak var firstBaseView: UIView!
    @IBOutlet weak var secondBaseView: UIView!
    @IBOutlet weak var thirdBaseView: UIView!
    @IBOutlet weak var homeBaseView: UIView!
    
    var secondPlayerOrigin: CGPoint!
    @IBOutlet weak var secondPlayerButton: UIButton!
    //startpoint変数とendPoint変数削除
    
    //oohashi: プレイヤーいるかの確認用変数,試合終了時falseに
    var isSetPlayers = false
    let playerRef = Database.database().reference().child("players")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //UIView透過
        firstBaseView.backgroundColor = UIColor.clear
        secondBaseView.backgroundColor = UIColor.clear
        thirdBaseView.backgroundColor = UIColor.clear
        homeBaseView.backgroundColor = UIColor.clear
        
        //背景画像設定
        let backgroundImage = UIImageView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
        backgroundImage.image = UIImage(named: "iPhone 8 Copy 2.png")
        backgroundImage.layer.zPosition = -1
        self.view.addSubview(backgroundImage)
        
        //ドラッグ適用
        secondPlayerOrigin = secondPlayerButton.frame.origin
        addPanGesture(view: secondPlayerButton)
        view.bringSubview(toFront: secondPlayerButton)
        
        //初回画面起動時、選手設定、表裏
        
        playerRef.observe(.childAdded, with: {(snapshot: DataSnapshot) in
            let playerData = FIRPlayer(snapshot: snapshot)
            Situation.topBattersArray.append(playerData)
            self.isSetPlayers = true
            
        })
        setPlayers()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }

    
    //サンプルボタン
    @IBAction func sampleButton(_ sender: Any) {
        //ohashi: 配列の中のtopBattingOrderの結果の配列に”捕飛”を挿入
//        topBattersArray[Situation.topBattingOrder].results.insert("捕飛", at: 0)
//
//        //ohashi: データベース上に"results"という名前のtopBattersArray[Situation.topBattingOrder].resultsという配列データを送信する
//        let results = ["results": topBattersArray[Situation.topBattingOrder].results]
//        playerRef.child(topBattersArray[Situation.topBattingOrder].id!).updateChildValues(results)


        modalAppear()
    }
    //ホームボタン
    @IBAction func backToHomeButton(_ sender: Any) {
       dismiss(animated: true, completion: nil)
    }
    
    //投手ボタン(ピッチャーフライ)
    @IBAction func pitcherButton(_ sender: Any) {
        //オプショナル？
        Situation.result = ResultEnum.pitcherFly
        modalAppear()
    }
    
    //oohashi:初回起動時用選手設定メソッド
    func setPlayers(){
        let setPlayersViewController = self.storyboard?.instantiateViewController(withIdentifier: "SetPlayers") as! SetPlayersViewController
        setPlayersViewController.modalPresentationStyle = .custom
        setPlayersViewController.transitioningDelegate = self
        self.present(setPlayersViewController, animated: true, completion: nil)
    }
    
    
    func modalAppear(){
        let resultStoryBoard: UIStoryboard = UIStoryboard(name:"Result",bundle:nil)
        let resultViewController = resultStoryBoard.instantiateViewController(withIdentifier: "Result") as! ResultViewController
        resultViewController.modalPresentationStyle = .custom
        resultViewController.transitioningDelegate = self
        self.present(resultViewController, animated: true, completion: nil)
    }
    
    //ドラッグメソッド
    func addPanGesture(view: UIView){
        let pan = UIPanGestureRecognizer(target: self, action: #selector(self.handlePan))
        view.addGestureRecognizer(pan)
    }
    @objc func handlePan(sender: UIPanGestureRecognizer ){
        
        let rview = sender.view!
        let translation = sender.translation(in: self.view)
        
        switch sender.state{
        case .began, .changed:
            //プレイヤーが選手のimageからボールのimageに
            secondPlayerButton.setImage(#imageLiteral(resourceName: "baseball copy 2"), for: .normal)
            //位置取得
            secondPlayerButton.center = CGPoint(x: rview.center.x + translation.x, y: rview.center.y + translation.y)
            //ボールとベース重なったらベースが変化
            if rview.frame.intersects(firstBaseView.frame){
                firstBaseView.backgroundColor = .red
            }else {
                firstBaseView.backgroundColor = .clear
                
            }
            sender.setTranslation(CGPoint.zero, in: self.view)
        case .ended:
            //ドラッグを終了させたとき重なっていたら処理する
            if rview.frame.intersects(firstBaseView.frame){
                
                UIView.animate(withDuration: 0.3, animations: {
                    self.secondPlayerButton.alpha = 0.0
//ここにゴロ時の処理を記述。枠内にドラッグされたとき
//頼んだのむさん
                    
                    
                    
                    
                    
                    
                    
                })
            }else{
                UIView.animate(withDuration: 0.3, animations: {
                    self.secondPlayerButton.frame.origin = self.secondPlayerOrigin
                    self.secondPlayerButton.setImage(#imageLiteral(resourceName: "Combined Shape"), for: .normal)
                })
            }
        default:
            break
            
        }
        
        
    }
   
}

//ohashi:わかりにくいからスペースとった




















extension GameViewController: UIViewControllerTransitioningDelegate {
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        return CustomPresentationController(presentedViewController: presented, presenting: presenting)
    }
}

class CustomPresentationController: UIPresentationController {
    // 呼び出し元のView Controller の上に重ねるオーバレイView
    var overlayView = UIView()
    
    // 表示トランジション開始前に呼ばれる
    override func presentationTransitionWillBegin() {
        guard let containerView = containerView else {
            return
        }
        overlayView.frame = containerView.bounds
        overlayView.gestureRecognizers = [UITapGestureRecognizer(target: self, action: #selector(CustomPresentationController.overlayViewDidTouch(_:)))]
        overlayView.backgroundColor = .black
        overlayView.alpha = 0.0
        containerView.insertSubview(overlayView, at: 0)
        
        // トランジションを実行
        presentedViewController.transitionCoordinator?.animate(alongsideTransition: {[weak self] context in
            self?.overlayView.alpha = 0.7
            }, completion:nil)
    }
    
    // 非表示トランジション開始前に呼ばれる
    override func dismissalTransitionWillBegin() {
        presentedViewController.transitionCoordinator?.animate(alongsideTransition: {[weak self] context in
            self?.overlayView.alpha = 0.0
            }, completion:nil)
    }
    
    // 非表示トランジション開始後に呼ばれる
    override func dismissalTransitionDidEnd(_ completed: Bool) {
        if completed {
            overlayView.removeFromSuperview()
        }
    }
    
    let margin = (x: CGFloat(30), y: CGFloat(220.0))
    // 子のコンテナサイズを返す
    override func size(forChildContentContainer container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize {
        return CGSize(width: parentSize.width - margin.x, height: parentSize.height - margin.y)
    }
    
    // 呼び出し先のView Controllerのframeを返す
    override var frameOfPresentedViewInContainerView: CGRect {
        var presentedViewFrame = CGRect()
        let containerBounds = containerView!.bounds
        let childContentSize = size(forChildContentContainer: presentedViewController, withParentContainerSize: containerBounds.size)
        presentedViewFrame.size = childContentSize
        presentedViewFrame.origin.x = margin.x / 2.0
        presentedViewFrame.origin.y = margin.y / 2.0
        
        return presentedViewFrame
    }
    
    // レイアウト開始前に呼ばれる
    override func containerViewWillLayoutSubviews() {
        overlayView.frame = containerView!.bounds
        presentedView?.frame = frameOfPresentedViewInContainerView
        presentedView?.layer.cornerRadius = 10
        presentedView?.clipsToBounds = true
    }
    
    // レイアウト開始後に呼ばれる
    override func containerViewDidLayoutSubviews() {
    }
    
    // overlayViewをタップした時に呼ばれる
    @objc func overlayViewDidTouch(_ sender: UITapGestureRecognizer) {
        //ohashi:初回起動のモーダルでは画面外タッチしても消せない
        let gameViewController = GameViewController()
        if gameViewController.isSetPlayers{
        presentedViewController.dismiss(animated: true, completion: nil)
        }
    }
}



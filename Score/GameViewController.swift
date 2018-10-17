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
import SVProgressHUD

//oohashi: gameは入力専用でresultはデータやシチュエーション設定画面
class GameViewController: UIViewController {
    //imageView消すの忘れない
    //ピッチャー
    var firstBaseViewOrigin: CGPoint!
    
    
    @IBOutlet weak var firstBaseView: UIView!
    @IBOutlet weak var secondBaseView: UIView!
    @IBOutlet weak var thirdBaseView: UIView!
    @IBOutlet weak var homeBaseView: UIView!
    
    var pitcherPlayerOrigin: CGPoint!
    var catcherPlayerOrigin: CGPoint!
    var firstPlayerOrigin: CGPoint!
    var secondPlayerOrigin: CGPoint!
    var thirdPlayerOrigin: CGPoint!
    var shortPlayerOrigin: CGPoint!
    
    @IBOutlet weak var pitcherPlayerButton: UIButton!
    @IBOutlet weak var catcherPlayerButton: UIButton!
    @IBOutlet weak var firstPlayerButton: UIButton!
    @IBOutlet weak var secondPlayerButton: UIButton!
    @IBOutlet weak var thirdPlayerButton: UIButton!
    @IBOutlet weak var shortPlayerButton: UIButton!
    
    
    //oohashi: プレイヤーいるかの確認用変数,試合終了時falseに
    var isSetPlayers = false
    let playerRef = Database.database().reference().child("players")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        //背景画像設定
        let backgroundImage = UIImageView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
        backgroundImage.image = UIImage(named: "iPhone 8 Copy 2.png")
        backgroundImage.layer.zPosition = -1
        self.view.addSubview(backgroundImage)
        
        //ドラッグ適用
        pitcherPlayerOrigin = pitcherPlayerButton.frame.origin
        catcherPlayerOrigin = catcherPlayerButton.frame.origin
        firstPlayerOrigin = firstPlayerButton.frame.origin
        secondPlayerOrigin = secondPlayerButton.frame.origin
        thirdPlayerOrigin = thirdPlayerButton.frame.origin
        shortPlayerOrigin = shortPlayerButton.frame.origin
        pitcherAddPanGesture(view: pitcherPlayerButton)
        catcherAddPanGesture(view: catcherPlayerButton)
        firstAddPanGesture(view: firstPlayerButton)
        secondAddPanGesture(view: secondPlayerButton)
        thirdAddPanGesture(view: thirdPlayerButton)
        shortAddPanGesture(view: shortPlayerButton)
        view.bringSubview(toFront: pitcherPlayerButton)
        view.bringSubview(toFront: catcherPlayerButton)
        view.bringSubview(toFront: firstPlayerButton)
        view.bringSubview(toFront: secondPlayerButton)
        view.bringSubview(toFront: thirdPlayerButton)
        view.bringSubview(toFront: shortPlayerButton)
        
        //初回画面起動時、選手設定、表裏
        playerRef.observe(.childAdded, with: {(snapshot: DataSnapshot) in
            let playerData = FIRPlayer(snapshot: snapshot)
            Situation.topBattersArray.append(playerData)
            self.isSetPlayers = true
            
        })
        firstBaseViewOrigin = firstBaseView.frame.origin
        print("DEBUG_PRINT: \(firstBaseView.frame)")
    }
    //Ohashi:gameview表示前に画面遷移できないので、viewdidappearで画面遷移
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setPlayers()
    }
    
    //サンプルボタン
    @IBAction func sampleButton(_ sender: Any) {
        modalAppear()
    }
    //ホームボタン
    @IBAction func backToHomeButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    //oohashi:初回起動時用選手設定メソッド
    func setPlayers(){
        let setPlayersViewController = self.storyboard?.instantiateViewController(withIdentifier: "SetPlayers") as! SetPlayersViewController
        print(setPlayersViewController)
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
    
    
    
    //ohashi: 内野ゴロ用ドラッグメソッドたくさん***********
    //ohashi: ピッチャー用ドラッグメソッド
    func pitcherAddPanGesture(view: UIView){
        let pan = UIPanGestureRecognizer(target: self, action: #selector(self.pitcherHandlePan))
        view.addGestureRecognizer(pan)
    }
    @objc func pitcherHandlePan(sender: UIPanGestureRecognizer ){
        panMethod(sender: sender, playerButton: pitcherPlayerButton, playerOrigin: pitcherPlayerOrigin, throwToFirst: .catcherFly, throwToSecond: .catcherFly, throwToThird: .catcherFly, throwToHome: .catcherFly)
    }
    //ohashi:キャッチャー用ドラッグメソッド
    func catcherAddPanGesture(view: UIView){
        let pan = UIPanGestureRecognizer(target: self, action: #selector(self.catcherHandlePan))
        view.addGestureRecognizer(pan)
    }
    @objc func catcherHandlePan(sender: UIPanGestureRecognizer ){
        panMethod(sender: sender, playerButton: catcherPlayerButton, playerOrigin: catcherPlayerOrigin, throwToFirst: .catcherFly, throwToSecond: .catcherFly, throwToThird: .catcherFly, throwToHome: .catcherFly)
    }
    //ohashi:ファースト用ドラッグメソッド
    func firstAddPanGesture(view: UIView){
        let pan = UIPanGestureRecognizer(target: self, action: #selector(self.firstHandlePan))
        view.addGestureRecognizer(pan)
    }
    @objc func firstHandlePan(sender: UIPanGestureRecognizer ){
        panMethod(sender: sender, playerButton: firstPlayerButton, playerOrigin: firstPlayerOrigin, throwToFirst: .catcherFly, throwToSecond: .catcherFly, throwToThird: .catcherFly, throwToHome: .catcherFly)
    }
    //ohashi:セカンド用ドラッグメソッド
    func secondAddPanGesture(view: UIView){
        let pan = UIPanGestureRecognizer(target: self, action: #selector(self.secondHandlePan))
        view.addGestureRecognizer(pan)
    }
    @objc func secondHandlePan(sender: UIPanGestureRecognizer ){
        panMethod(sender: sender, playerButton: secondPlayerButton, playerOrigin: secondPlayerOrigin, throwToFirst: .catcherFly, throwToSecond: .catcherFly, throwToThird: .catcherFly, throwToHome: .catcherFly)
    }
    //ohashi:サード用ドラッグメソッド
    func thirdAddPanGesture(view: UIView){
        let pan = UIPanGestureRecognizer(target: self, action: #selector(self.thirdHandlePan))
        view.addGestureRecognizer(pan)
    }
    @objc func thirdHandlePan(sender: UIPanGestureRecognizer ){
        panMethod(sender: sender, playerButton: thirdPlayerButton, playerOrigin: thirdPlayerOrigin, throwToFirst: .catcherFly, throwToSecond: .catcherFly, throwToThird: .catcherFly, throwToHome: .catcherFly)
    }
    //ohashi:ショート用ドラッグメソッド
    func shortAddPanGesture(view: UIView){
        let pan = UIPanGestureRecognizer(target: self, action: #selector(self.shortHandlePan))
        view.addGestureRecognizer(pan)
    }
    @objc func shortHandlePan(sender: UIPanGestureRecognizer ){
        panMethod(sender: sender, playerButton: shortPlayerButton, playerOrigin: shortPlayerOrigin, throwToFirst: .catcherFly, throwToSecond: .catcherFly, throwToThird: .catcherFly, throwToHome: .catcherFly)
    }
    
    func panMethod(sender: UIPanGestureRecognizer, playerButton: UIButton, playerOrigin: CGPoint, throwToFirst: ResultEnum, throwToSecond: ResultEnum, throwToThird: ResultEnum, throwToHome: ResultEnum){
        let panView = sender.view!
        let translation = sender.translation(in: self.view)
        
        
        let baseView = UIView(frame: CGRect(x: 0, y: 290, width: 50, height: 50))
        switch sender.state{
        case .began, .changed:
            //プレイヤーが選手のimageからボールのimageに
            playerButton.setImage(#imageLiteral(resourceName: "baseball copy 2"), for: .normal)
            //位置取得
            playerButton.center = CGPoint(x: panView.center.x + translation.x, y: panView.center.y + translation.y)
            //ボールとベース重なったらベースが変化
            if panView.frame.intersects(baseView.frame){
                firstBaseView.backgroundColor = .red
            }else if panView.frame.intersects(secondBaseView.frame){
                secondBaseView.backgroundColor = .red
            }else if panView.frame.intersects(thirdBaseView.frame){
                thirdBaseView.backgroundColor = .red
            }else if panView.frame.intersects(homeBaseView.bounds){
                homeBaseView.backgroundColor = .red
            }else{
                firstBaseView.backgroundColor = .white
                secondBaseView.backgroundColor = .blue
                thirdBaseView.backgroundColor = .green
                homeBaseView.backgroundColor = .yellow
                print("DEBUG_PRINT: \(firstBaseView.frame)")
                
            }
            sender.setTranslation(CGPoint.zero, in: self.view)
        case .ended:
            //ドラッグを終了させたとき重なっていたら処理する
            if panView.frame.intersects(firstBaseView.frame){
                Situation.result = throwToFirst
                UIView.animate(withDuration: 0.3, animations: {
                    playerButton.alpha = 0.0
                })
            }else if panView.frame.intersects(secondBaseView.frame) {
                Situation.result = throwToSecond
                UIView.animate(withDuration: 0.3, animations: {
                    playerButton.alpha = 0.0
                    })
            }else if panView.frame.intersects(thirdBaseView.frame){
                Situation.result = throwToThird
                UIView.animate(withDuration: 0.3, animations: {
                    playerButton.alpha = 0.0
                })
            }else if panView.frame.intersects(homeBaseView.frame){
                Situation.result = throwToHome
                UIView.animate(withDuration: 0.3, animations: {
                    playerButton.alpha = 0.0
                })
            }else{
                UIView.animate(withDuration: 0.3, animations: {
                    playerButton.frame.origin = playerOrigin
                    playerButton.setImage(#imageLiteral(resourceName: "Combined Shape"), for: .normal)
                })
            }
        default:
            break
        }
        
    }
    
    //Ohashi:ドラッグメソッドここまで：************
    
    
    //Ohashi:ストライクとかカウント
    @IBAction func strikeButton(_ sender: Any) {
        if Situation.strikeCounts == 2{
            Situation.result = .missedStruckOut
            Situation.strikeCounts = 0
            SVProgressHUD.showSuccess(withStatus: "ストライク")
            modalAppear()
        }else{
            Situation.strikeCounts += 1
        }
    }
    @IBAction func ballButton(_ sender: Any) {
        if Situation.ballCounts == 3{
//            Situation.result = .fourBall
            Situation.ballCounts = 0
            modalAppear()
            
        }else {
            Situation.ballCounts += 1
        }
    }
    @IBAction func swingButton(_ sender: Any) {
        if Situation.strikeCounts == 2{
            Situation.result = .struckOutSwinging
            Situation.strikeCounts = 0
            modalAppear()
        }else{
            Situation.strikeCounts += 1
        }
    }
    
    @IBAction func faulButton(_ sender: Any) {
        if Situation.strikeCounts == 2{
            
        }else{
            Situation.strikeCounts += 1
        }
    }
    
    //Ohashi:フライメソッド
    @IBAction func pictherFlyButton(_ sender: Any) {
        Situation.result = .pitcherFly
        modalAppear()
    }
    
    @IBAction func catcherFlyButton(_ sender: Any) {
        Situation.result = .catcherFly
        modalAppear()
    }
    @IBAction func firstFlyButton(_ sender: Any) {
        Situation.result = .firstFly
        modalAppear()
    }
    @IBAction func secondFlyButton(_ sender: Any) {
        Situation.result = .secondFly
        modalAppear()
    }
    @IBAction func thirdFlyButton(_ sender: Any) {
        Situation.result = .thirdFly
        modalAppear()
        
        

    }
    
    @IBAction func shortFlyButton(_ sender: Any) {
        Situation.result = .shortFly
        modalAppear()
    }
    @IBAction func leftFlyButton(_ sender: Any) {
        Situation.result = .leftFly
        modalAppear()
    }
    @IBAction func centerFlyButton(_ sender: Any) {
        Situation.result = .centerFly
        modalAppear()
    }
    @IBAction func rightFlyButton(_ sender: Any) {
        Situation.result = .rightFly
        modalAppear()
    }
    
}







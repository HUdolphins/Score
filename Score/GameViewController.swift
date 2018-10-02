//
//  GameViewController.swift
//  Score
//
//  Created by Kazuki Ohashi on 2018/09/11.
//  Copyright © 2018年 Kazuki Ohashi. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class GameViewController: UIViewController {
    //imageView消すの忘れない
    
    var playerArray: [FIRPlayer] = []
    let playerRef = Database.database().reference()
    
    @IBOutlet weak var firstBaseView: UIView!
    @IBOutlet weak var secondBaseView: UIView!
    @IBOutlet weak var thirdBaseView: UIView!
    @IBOutlet weak var homeBaseView: UIView!
    
    var secondPlayerOrigin: CGPoint!
    @IBOutlet weak var secondPlayerButton: UIButton!
    //startpoint変数とendPoint変数削除

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
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sampleButton(_ sender: Any) {
        modalAppear(resultString: "")
    }
    //ホームボタン
    @IBAction func backToHomeButton(_ sender: Any) {
       dismiss(animated: true, completion: nil)
    }
    
    //投手ボタン(ピッチャーフライ)
    @IBAction func pitcherButton(_ sender: Any) {
        //ボールの場所
        Situation.ballPosition = 1
        
        
        let resultViewController = self.storyboard?.instantiateViewController(withIdentifier: "Result") as! ResultViewController
        self.present(resultViewController, animated: true, completion: nil)
    }
    
    
    func modalAppear(resultString: String){
        let resultViewController = storyboard?.instantiateViewController(withIdentifier: "Result") as! ResultViewController
        resultViewController.modalPresentationStyle = .custom
        resultViewController.transitioningDelegate = self
        present(resultViewController, animated: true, completion: nil)
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
            secondPlayerButton.setImage(#imageLiteral(resourceName: "baseball copy 2"), for: .normal)
            secondPlayerButton.center = CGPoint(x: rview.center.x + translation.x, y: rview.center.y + translation.y)
            if rview.frame.intersects(firstBaseView.frame){
                firstBaseView.backgroundColor = .red
            }else {
                firstBaseView.backgroundColor = .clear
                
            }
            sender.setTranslation(CGPoint.zero, in: self.view)
        case .ended:
            
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
        presentedViewController.dismiss(animated: true, completion: nil)
    }
}



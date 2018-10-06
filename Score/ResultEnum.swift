
import Foundation
import UIKit

enum ResultEnum: Int{
    case pitcherFly = 1
    case catcherFly
    case firstFly
    case secondFly
    case thirdFly
    case shortFly
    case leftFly
    case centerFly
    case rightFly
    case pitcherGoro
    case pitcherHit
    case struckOut
    
    
    
    //oohashi:とりあえず２１個画像作って最終的には全部画像作る
    func childOptionOne() -> (resultTitle: String,resultString: String, resultImage: UIImage){
        //タプルで返す値を複数に
        
        switch self {
        case .pitcherFly:
            if Situation.oneOutNoRunner {
                return ("投飛", "ピッチャーフライ\n２死走者なし", UIImage(named: "")!)
            }else if Situation.twoOutNoRunner{
                return ("投飛", "ピッチャーフライ\n３アウトチェンジ", UIImage(named: "")!)
            }
            else if Situation.noOutNoRunner{
                return ("投飛", "ピッチャーフライ\n1死走者なし", UIImage(named: "")! )
            }
            else if Situation.noOutRunnerOnFirst{
                return ("投飛", "ピッチャーフライ\n1死1塁", UIImage(named: "")!)
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("投飛", "ピッチャーフライ\n2死走者1塁", UIImage(named: "")!)
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("投飛", "ピッチャーフライ\n3アウトチェンジ", UIImage(named: "")!)
            }
            else if Situation.noOutRunnerOnSecond{
                return ("投飛", "ピッチャーフライ\n1死2塁", UIImage(named: "")!)
            }
            else if Situation.oneOutRunnerOnSecond{
                return ("投飛", "ピッチャーフライ\n2死2塁", UIImage(named: "")!)
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("投飛", "ピッチャーフライ\n3アウトチェンジ", UIImage(named: "")!)
            }
            else if Situation.noOutRunnerOnThird{
                return ("投飛", "ピッチャーフライ\n1死3塁", UIImage(named: "")!)
            }
            else if Situation.oneOutRunnerOnThird{
                return ("投飛", "ピッチャーフライ\n2死3塁", UIImage(named: "")!)
            }
            else if Situation.twoOutRunnerOnThird{
                return ("投飛", "ピッチャーフライ\n3アウトチェンジ", UIImage(named: "")!)
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("投飛", "ピッチャーフライ\n1死走者1,2塁", UIImage(named: "")!)
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("投飛", "ピッチャーフライ\n2死1,2塁", UIImage(named: "")!)
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("投飛", "ピッチャーフライ\n3アウトチェンジ", UIImage(named: "")!)
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("投飛", "ピッチャーフライ\n1死1,3塁", UIImage(named: "")!)
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("投飛", "ピッチャーフライ\n2死1,３塁", UIImage(named: "")!)
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("投飛", "ピッチャーフライ\n3アウトチェンジ", UIImage(named: "")!)
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("投飛", "ピッチャーフライ\n1死2,3塁", UIImage(named: "")!)
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("投飛", "ピッチャーフライ\n2死2,3塁", UIImage(named: "")!)
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("投飛", "ピッチャーフライ\n3アウトチェンジ", UIImage(named: "")!)
            }
            else if Situation.noOutFullBase{
                return ("投飛", "ピッチャーフライ\n1死満塁", UIImage(named: "")!)
            }
            else if Situation.oneOutFullBase{
                return ("投飛", "ピッチャーフライ\n2死満塁", UIImage(named: "")!)
            }
            else if Situation.twoOutFullBase{
                return ("投飛", "ピッチャーフライ\n3アウトチェンジ", UIImage(named: "")!)
            }
            
        case .catcherFly:
            if Situation.noOutNoRunner {
                return "<#parameter#>"
            }else if Situation.oneOutNoRunner{
                return "<#parameter#>"
            }
            else if Situation.twoOutNoRunner{
                return "<#parameter#>"
            }
            else if Situation.noOutRunnerOnFirst{
                return "<#parameter#>"
            }
            else if Situation.oneOutRunnerOnFirst{
                return "<#parameter#>"
            }
            else if Situation.twoOutRunnerOnFirst{
                return "<#parameter#>"
            }
            else if Situation.noOutRunnerOnSecond{
                return "<#parameter#>"
            }
            else if Situation.oneOutRunnerOnSecond{
                return "<#parameter#>"
            }
            else if Situation.twoOutRunnerOnSecond{
                return "<#parameter#>"
            }
            else if Situation.noOutRunnerOnThird{
                return "<#parameter#>"
            }
            else if Situation.oneOutRunnerOnThird{
                return "<#parameter#>"
            }
            else if Situation.twoOutRunnerOnThird{
                return "<#parameter#>"
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return "<#parameter#>"
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return "<#parameter#>"
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return "<#parameter#>"
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return "<#parameter#>"
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return "<#parameter#>"
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return "<#parameter#>"
            }
            else if Situation.noOutFullBase{
                return "<#parameter#>"
            }
            else if Situation.oneOutFullBase{
                return "<#parameter#>"
            }
            else if Situation.twoOutFullBase{
                return "<#parameter#>"
            }
        case .firstFly:
            if Situation.noOutNoRunner {
                return "<#parameter#>"
            }else if Situation.oneOutNoRunner{
                return "<#parameter#>"
            }
            else if Situation.twoOutNoRunner{
                return "<#parameter#>"
            }
            else if Situation.noOutRunnerOnFirst{
                return "<#parameter#>"
            }
            else if Situation.oneOutRunnerOnFirst{
                return "<#parameter#>"
            }
            else if Situation.twoOutRunnerOnFirst{
                return "<#parameter#>"
            }
            else if Situation.noOutRunnerOnSecond{
                return "<#parameter#>"
            }
            else if Situation.oneOutRunnerOnSecond{
                return "<#parameter#>"
            }
            else if Situation.twoOutRunnerOnSecond{
                return "<#parameter#>"
            }
            else if Situation.noOutRunnerOnThird{
                return "<#parameter#>"
            }
            else if Situation.oneOutRunnerOnThird{
                return "<#parameter#>"
            }
            else if Situation.twoOutRunnerOnThird{
                return "<#parameter#>"
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return "<#parameter#>"
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return "<#parameter#>"
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return "<#parameter#>"
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return "<#parameter#>"
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return "<#parameter#>"
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return "<#parameter#>"
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return "<#parameter#>"
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return "<#parameter#>"
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return "<#parameter#>"
            }
            else if Situation.noOutFullBase{
                return "<#parameter#>"
            }
            else if Situation.oneOutFullBase{
                return "<#parameter#>"
            }
            else if Situation.twoOutFullBase{
                return "<#parameter#>"
            }
        case .secondFly:
             return ("", "", UIImage(named: "")! )
        case .thirdFly:
             return ("", "", UIImage(named: "")! )
        case .shortFly:
             return ("", "", UIImage(named: "")! )
        case .leftFly:
            if Situation.noOutNoRunner {
                return ("左飛", "レフトフライ\n1死走者なし", UIImage(named: "")!)
            }else if Situation.oneOutNoRunner{
                return ("左飛", "レフトフライ\n2死走者なし", UIImage(named: "")! )
            }
            else if Situation.twoOutNoRunner{
                return ("左飛", "レフトフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutRunnerOnFirst{
                return ("左飛", "レフトフライ\n1死1塁", UIImage(named: "")! )
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("左飛", "レフトフライ\n2死1塁", UIImage(named: "")! )
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("左飛", "レフトフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutRunnerOnSecond{
                return ("左飛", "レフトフライ\n1死2塁", UIImage(named: "")! )
            }
            else if Situation.oneOutRunnerOnSecond{
                return ("左飛", "レフトフライ\n2死2塁", UIImage(named: "")! )
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("左飛", "レフトフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutRunnerOnThird{
                return ("犠飛", "タッチアップ\n1死走者なし\n1点", UIImage(named: "")! )
            }
            else if Situation.oneOutRunnerOnThird{
                return ("犠飛", "タッチアップ\n2死走者なし\n1点", UIImage(named: "")! )
            }
            else if Situation.twoOutRunnerOnThird{
                return ("左飛", "レフトフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("左飛", "レフトフライ\n1死1,2塁", UIImage(named: "")! )
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("左飛", "レフトフライ\n2死1,2塁", UIImage(named: "")! )
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("左飛", "レフトフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("犠飛", "タッチアップ\n1死1塁\n1点", UIImage(named: "")! )
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("犠飛", "タッチアップ\n2死1塁\n1点", UIImage(named: "")! )
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("左飛", "レフトフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("犠飛", "タッチアップ\n1死2塁\n1点", UIImage(named: "")! )
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("犠飛", "タッチアップ\n2死2塁\n1点", UIImage(named: "")! )
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("左飛", "レフトフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutFullBase{
                return ("犠飛", "タッチアップ\n1死1,2塁\n1点", UIImage(named: "")! )
            }
            else if Situation.oneOutFullBase{
                return ("犠飛", "タッチアップ\n2死1,2塁\n1点", UIImage(named: "")! )
            }
            else if Situation.twoOutFullBase{
                return ("左飛", "レフトフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
        case .centerFly:
            if Situation.noOutNoRunner {
                return "センターフライ\n一死走者なし", UIImage(named: "")! )
            }else if Situation.oneOutNoRunner{
                return "センターフライ\n2死走者なし", UIImage(named: "")! )
            }
            else if Situation.twoOutNoRunner{
                return "センターフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutRunnerOnFirst{
                return "センターフライ\n1死1塁", UIImage(named: "")! )
            }
            else if Situation.oneOutRunnerOnFirst{
                return "センターフライ\n2死1塁", UIImage(named: "")! )
            }
            else if Situation.twoOutRunnerOnFirst{
                return "センターフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutRunnerOnSecond{
                return "センターフライ\n1死2塁", UIImage(named: "")! )
            }
            else if Situation.oneOutRunnerOnSecond{
                return "センターフライ\n2死2塁", UIImage(named: "")! )
            }
            else if Situation.twoOutRunnerOnSecond{
                return "センターフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutRunnerOnThird{
                return "タッチアップ\n1死走者なし\n1点", UIImage(named: "")! )
            }
            else if Situation.oneOutRunnerOnThird{
                return "タッチアップ\n2死走者なし\n1点", UIImage(named: "")! )
            }
            else if Situation.twoOutRunnerOnThird{
                return "センターフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return "センターフライ\n1死1,2塁", UIImage(named: "")! )
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return "センターフライ\n2死1,2塁", UIImage(named: "")! )
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return "センターフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return "タッチアップ\n1死1塁\n1点", UIImage(named: "")! )
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return "タッチアップ\n2死1塁\n1点", UIImage(named: "")! )
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return "センターフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return "タッチアップ\n1死2塁\n1点", UIImage(named: "")! )
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return "タッチアップ\n2死2塁\n1点", UIImage(named: "")! )
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return "センターフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutFullBase{
                return "タッチアップ\n1死1,2塁", UIImage(named: "")! )
            }
            else if Situation.oneOutFullBase{
                return "タッチアップ\n2死1,2塁", UIImage(named: "")! )
            }
            else if Situation.twoOutFullBase{
                return "センターフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
        case .rightFly:
            if Situation.noOutNoRunner {
                return "ライトフライ\n1死走者なし", UIImage(named: "")! )
            }else if Situation.oneOutNoRunner{
                return "ライトフライ\n2死走者なし", UIImage(named: "")! )
            }
            else if Situation.twoOutNoRunner{
                return "ライトフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutRunnerOnFirst{
                return "ライトフライ\n1死1塁", UIImage(named: "")! )
            }
            else if Situation.oneOutRunnerOnFirst{
                return "ライトフライ\n2死1塁", UIImage(named: "")! )
            }
            else if Situation.twoOutRunnerOnFirst{
                return "ライトフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutRunnerOnSecond{
                return "ライトフライ\n1死2塁", UIImage(named: "")! )
            }
            else if Situation.oneOutRunnerOnSecond{
                return "ライトフライ\n2死2塁", UIImage(named: "")! )
            }
            else if Situation.twoOutRunnerOnSecond{
                return "ライトフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutRunnerOnThird{
                return "タッチアップ\n1死走者なし\n1点", UIImage(named: "")! )
            }
            else if Situation.oneOutRunnerOnThird{
                return "タッチアップ\n2死走者なし\n1点", UIImage(named: "")! )
            }
            else if Situation.twoOutRunnerOnThird{
                return "ライトフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return "ライトフライ\n1死1,2塁", UIImage(named: "")! )
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return "ライトフライ\n2死1,2塁", UIImage(named: "")! )
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return "ライトフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return "タッチアップ\n1死1塁\n1点", UIImage(named: "")! )
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return "タッチアップ\n2死1塁\n1点", UIImage(named: "")! )
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return "ライトフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                //oohashi:23塁のがいいか？
                return "タッチアップ\n1死2塁\n1点", UIImage(named: "")! )
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return "タッチアップ\n2死2塁\n1点", UIImage(named: "")! )
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return "ライトフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutFullBase{
                //13塁のがいいか
                return "タッチアップ\n1死1,2塁\n1点", UIImage(named: "")! )
            }
            else if Situation.oneOutFullBase{
                return "タッチアップ\n2死1,2塁\n1点", UIImage(named: "")! )
            }
            else if Situation.twoOutFullBase{
                return "ライトフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
        case .pitcherGoro:
            return ("", "", UIImage(named: "")! )
        case .pitcherHit:
             return ("", "", UIImage(named: "")! )
        case .struckOut:
            
             return ("", "", UIImage(named: "")! )
        default:
             return ("", "", UIImage(named: "")! )
        }
        //なんかエラーでるから仮置き
         return ("", "", UIImage(named: "")! )
    }
    
    func childOptionTwo() -> String{
        switch self {
            
        case .pitcherFly:
            if Situation.oneOutNoRunner{
                return "ピッチャーエラー/n１死走者１塁"
            }else if Situation.twoOutNoRunner{
                return "ピッチャーエラー/n２死走者１塁"
            }
        case .catcherFly:
            return ""
        case .firstFly:
            return ""
        case .secondFly:
            return ""
        case .thirdFly:
            return ""
        case .shortFly:
            return ""
        case .leftFly:
            return ""
        case .centerFly:
            return ""
        case .rightFly:
            return ""
        case .pitcherGoro:
            return ""
        case .pitcherHit:
            return ""
        case .struckOut:
            return ""
        }
        
        //なんかエラーでるから仮置き
        return ""
    }
    
    func childOptionThree() -> String{
        switch self{
            
        case .pitcherFly:
            if Situation.oneOutNoRunner{
                return "ピッチャーエラー/n１死走者２塁"
            }
            else if Situation.twoOutNoRunner{
                return ""
            }
        case .catcherFly:
            return ""
        case .firstFly:
            return ""
        case .secondFly:
            return ""
        case .thirdFly:
            return ""
        case .shortFly:
            return ""
        case .leftFly:
            return ""
        case .centerFly:
            return ""
        case .rightFly:
            return ""
        case .pitcherGoro:
            return ""
        case .pitcherHit:
            return ""
        case .struckOut:
            return "" 
        }
        
        //なんかエラーでるから仮置き
        return ""
    }
    
    //ボタンを押したときの関数3つ
    //oohashi: 得点入った時アニメーション処理
    func childButtonTapedOne(){
        switch self{
        case .pitcherFly:
            if Situation.oneOutNoRunner{
                Situation.outCounts = 2
            }
            else if Situation.twoOutNoRunner{
                Situation.outCounts = 0
                if Situation.topOrBottom == "Top"{
                    Situation.topOrBottom = "Bottom"
                }
                else{
                    Situation.inning += 1
                    Situation.topOrBottom = "Top"
                }
            }
            
        case .catcherFly:
            if Situation.noOutNoRunner {
                
            }else if Situation.oneOutNoRunner{
                
            }
            else if Situation.twoOutNoRunner{
                
            }
            else if Situation.noOutRunnerOnFirst{
                
            }
            else if Situation.oneOutRunnerOnFirst{
                
            }
            else if Situation.twoOutRunnerOnFirst{
                
            }
            else if Situation.noOutRunnerOnSecond{
                
            }
            else if Situation.oneOutRunnerOnSecond{
                
            }
            else if Situation.twoOutRunnerOnSecond{
                
            }
            else if Situation.noOutRunnerOnThird{
                
            }
            else if Situation.oneOutRunnerOnThird{
                
            }
            else if Situation.twoOutRunnerOnThird{
                
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                
            }
            else if Situation.noOutFullBase{
                
            }
            else if Situation.oneOutFullBase{
                
            }
            else if Situation.twoOutFullBase{
                
            }
        case .firstFly:
            return
        case .secondFly:
            return
        case .thirdFly:
            return
        case .shortFly:
            return
        case .leftFly:
            return
        case .centerFly:
            return
        case .rightFly:
            return
        case .pitcherGoro:
            return
        case .pitcherHit:
            return
        case .struckOut:
            return
        
        }
    }

}

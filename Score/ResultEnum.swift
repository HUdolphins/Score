
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
    case struckOutSwinging
    case missedStruckOut
    
    



//    case pitcherGoroThrowToHome
//    case pithergoroThrowToFirst
//    case pitcherGorothrowToSecond
//    case pitcherGoroThrowToThird
//    case catcherGoroThrowToHome
//    case catcherGoroThrowToFirst
//    case catcherGoroThrowToSecond
//    case catcherGoroThrowToThird
//    case firstGoroThrowToHome
//    case firstGoroThrowToFirst
//    case firstGoroThrowToSecond
//    case firstGoroThrowToThird
//    case secondGoroThrowToHome
//    case secondGoroThrowToFirst
//    case secondGoroThrowToSecond
//    case secondGoroThrowToThird
//    case thirdGoroThrowToHome
//    case thirdGoroThrowToFirst
//    case thirdGoroThrowToSecond
//    case thirdGoroThrowToThird
//    case shortGoroThrowToHome
//    case shortGoroThrowToFirst
//    case shortGoroThrowToSecond
//    case shortGoroThrowToThird
//    //oohashi:外野ゴロヒットとライナーヒットで場合分け
//    case pitcherOrCatcherHit //ohashi:ボタン一つで投手と捕手
//    case firstHit
//    case secondHit
//    case thirdHit
//    case shortHit
//    case leftSingleHit
//    case centerSingleHit
//    case rightSingleHit
//    case leftOverHit
//    case centerOverHit
//    case RightOverHit
//    case thirdBaseLineHit
//    case firstBaselineHit
//    case leftIntermediateHit  //左中間
//    case rightIntermediateHit //右中間
//    
//    case fourBall
//    case deadBall
//    
    
    
    
    //oohashi: ピッチャーフライの２個目ピッチャーライナー
    //ゴロヒットとライナーヒットで場合分け
    
    //oohashi:とりあえず２４個画像作って最終的には全部画像作る
    func childOptionOne() -> (resultTitle: String,resultString: String, resultImage: UIImage){
        //タプルで返す値を複数に
        
        switch self {
        case .pitcherFly:
            if Situation.oneOutNoRunner {
                return ("投飛", "ピッチャーフライ\n２死走者なし", UIImage(named: "2-0")!)
            }else if Situation.twoOutNoRunner{
                return ("投飛", "ピッチャーフライ\n３アウトチェンジ", UIImage(named: "3-0")!)
            }
            else if Situation.noOutNoRunner{
                return ("投飛", "ピッチャーフライ\n1死走者なし", UIImage(named: "1-0")! )
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
                return ("投飛", "ピッチャーフライ\n1死走者1,2塁", UIImage(named: "1-1,2")!)
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
            //画像名前仮置き
        case .catcherFly:
            if Situation.noOutNoRunner {
                return ("捕邪飛", "キャッチャーファウルフライ\n1死走者なし", UIImage(named: "1-0")! )
            }else if Situation.oneOutNoRunner{
                return ("捕邪飛", "キャッチャーファウルフライ\n2死走者なし", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutNoRunner{
                return ("捕邪飛", "キャッチャーファウルフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnerOnFirst{
                return ("捕邪飛", "キャッチャーファウルフライ\n1死1塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("捕邪飛", "キャッチャーファウルフライ\n2死1塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("捕邪飛", "キャッチャーファウルフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnerOnSecond{
                return ("捕邪飛", "キャッチャーファウルフライ\n1死2塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnerOnSecond{
                return ("捕邪飛", "キャッチャーファウルフライ\n2死2塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("捕邪飛", "キャッチャーファウルフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnerOnThird{
                return ("捕邪飛", "キャッチャーファウルフライ\n1死3塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnerOnThird{
                return ("捕邪飛", "キャッチャーファウルフライ\n2死3塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnerOnThird{
                return ("捕邪飛", "キャッチャーファウルフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("捕邪飛", "キャッチャーファウルフライ\n1死1,2塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("捕邪飛", "キャッチャーファウルフライ\n2死1,2塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("捕邪飛", "キャッチャーファウルフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("捕邪飛", "キャッチャーファウルフライ\n1死1,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("捕邪飛", "キャッチャーファウルフライ\n2死1,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("捕邪飛", "キャッチャーファウルフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutFullBase{
                return ("捕邪飛", "キャッチャーファウルフライ\n1死満塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutFullBase{
                return ("捕邪飛", "キャッチャーファウルフライ\n2死満塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutFullBase{
                return ("捕邪飛", "キャッチャーファウルフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
        case .firstFly:
            if Situation.noOutNoRunner {
                return ("一飛", "ファーストフライ\n1死走者なし", UIImage(named: "1-0")! )
            }else if Situation.oneOutNoRunner{
                return ("一飛", "ファーストフライ\n2死走者なし", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutNoRunner{
                return ("一飛", "ファーストフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnerOnFirst{
                return ("一飛", "ファーストフライ\n1死1塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("一飛", "ファーストフライ\n2死1塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("一飛", "ファーストフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnerOnSecond{
                return ("一飛", "ファーストフライ\n1死2塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnerOnSecond{
                return ("一飛", "ファーストフライ\n2死2塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("一飛", "ファーストフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnerOnThird{
                return ("一飛", "ファーストフライ\n1死3塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnerOnThird{
                return ("一飛", "ファーストフライ\n2死3塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnerOnThird{
                return ("一飛", "ファーストフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("一飛", "ファーストフライ\n1死1,2塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("一飛", "ファーストフライ\n2死1,2塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("一飛", "ファーストフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("一飛", "ファーストフライ\n1死1,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("一飛", "ファーストフライ\n2死1,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("一飛", "ファーストフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("一飛", "ファーストフライ\n1死2,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("一飛", "ファーストフライ\n2死2,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("一飛", "ファーストフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutFullBase{
                return ("一飛", "ファーストフライ\n1死満塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutFullBase{
                return ("一飛", "ファーストフライ\n2死満塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutFullBase{
                return ("一飛", "ファーストフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
        case .secondFly:
            if Situation.noOutNoRunner {
                return ("二飛", "セカンドフライ\n1死走者なし", UIImage(named: "1-0")! )
            }else if Situation.oneOutNoRunner{
                return ("二飛", "セカンドフライ\n2死走者なし", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutNoRunner{
                return ("二飛", "セカンドフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnerOnFirst{
                return ("二飛", "セカンドフライ\n1死1塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("二飛", "セカンドフライ\n2死1塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("二飛", "セカンドフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnerOnSecond{
                return ("二飛", "セカンドフライ\n1死2塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnerOnSecond{
                return ("二飛", "セカンドフライ\n2死2塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("二飛", "セカンドフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnerOnThird{
                return ("二飛", "セカンドフライ\n1死3塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnerOnThird{
                return ("二飛", "セカンドフライ\n2死3塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnerOnThird{
                return ("二飛", "セカンドフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("二飛", "セカンドフライ\n1死1,2塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("二飛", "セカンドフライ\n2死1,2塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("二飛", "セカンドフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("二飛", "セカンドフライ\n1死1,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("二飛", "セカンドフライ\n2死1,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("二飛", "セカンドフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("二飛", "セカンドフライ\n1死2,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("二飛", "セカンドフライ\n2死2,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("二飛", "セカンドフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutFullBase{
                return ("二飛", "セカンドフライ\n1死満塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutFullBase{
                return ("二飛", "セカンドフライ\n2死満塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutFullBase{
                return ("二飛", "セカンドフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
        case .thirdFly:
            
            if Situation.noOutNoRunner {
                return ("三飛", "サードフライ\n1死走者なし", UIImage(named: "1-0")! )
            }else if Situation.oneOutNoRunner{
                return ("三飛", "サードフライ\n2死走者なし", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutNoRunner{
                return ("三飛", "サードフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnerOnFirst{
                return ("三飛", "サードフライ\n1死1,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("三飛", "サードフライ\n2死1,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("三飛", "サードフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnerOnSecond{
                return ("三飛", "サードフライ\n1死2塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnerOnSecond{
                return ("三飛", "サードフライ\n2死2塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("三飛", "サードフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnerOnThird{
                return ("三飛", "サードフライ\n1死3塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnerOnThird{
                return ("三飛", "サードフライ\n2死3塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnerOnThird{
                return ("三飛", "サードフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("三飛", "サードフライ\n1死1,2塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("三飛", "サードフライ\n2死1,2塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("三飛", "サードフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("三飛", "サードフライ\n1死1,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("三飛", "サードフライ\n2死1,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("三飛", "サードフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("三飛", "サードフライ\n1死2,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("三飛", "サードフライ\n2死2,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("三飛", "サードフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutFullBase{
                return ("三飛", "サードフライ\n1死満塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutFullBase{
                return ("三飛", "サードフライ\n2死満塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutFullBase{
                return ("三飛", "サードフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
        case .shortFly:
            if Situation.noOutNoRunner {
                return ("遊飛", "ショートフライ\n一死なし", UIImage(named: "1-0")! )
            }else if Situation.oneOutNoRunner{
                return ("遊飛", "ショートフライ\n2死走者なし", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutNoRunner{
                return ("遊飛", "ショートフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnerOnFirst{
                return ("遊飛", "ショートフライ\n1死1塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("遊飛", "ショートフライ\n2死1塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("遊飛", "ショートフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnerOnSecond{
                return ("遊飛", "ショートフライ\n1死2塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnerOnSecond{
                return ("遊飛", "ショートフライ\n2死2塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("遊飛", "ショートフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnerOnThird{
                return ("遊飛", "ショートフライ\n1死3塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnerOnThird{
                return ("遊飛", "ショートフライ\n2死3塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnerOnThird{
                return ("遊飛", "ショートフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("遊飛", "ショートフライ\n1死1,2塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("遊飛", "ショートフライ\n2死1,2塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("遊飛", "ショートフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("遊飛", "ショートフライ\n1死1,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("遊飛", "ショートフライ\n2死1,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("遊飛", "ショートフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("遊飛", "ショートフライ\n1死2,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("遊飛", "ショートフライ\n2死2,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("遊飛", "ショートフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutFullBase{
                return ("遊飛", "ショートフライ\n1死満塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutFullBase{
                return ("遊飛", "ショートフライ\n2死満塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutFullBase{
                return ("遊飛", "ショートフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
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
                return ("左犠飛", "タッチアップ\n1死走者なし\n1点", UIImage(named: "")! )
            }
            else if Situation.oneOutRunnerOnThird{
                return ("左犠飛", "タッチアップ\n2死走者なし\n1点", UIImage(named: "")! )
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
                return ("左犠飛", "タッチアップ\n1死1塁\n1点", UIImage(named: "")! )
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("左犠飛", "タッチアップ\n2死1塁\n1点", UIImage(named: "")! )
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("左飛", "レフトフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("左犠飛", "タッチアップ\n1死2塁\n1点", UIImage(named: "")! )
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("左犠飛", "タッチアップ\n2死2塁\n1点", UIImage(named: "")! )
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("左飛", "レフトフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutFullBase{
                return ("左犠飛", "タッチアップ\n1死1,2塁\n1点", UIImage(named: "")! )
            }
            else if Situation.oneOutFullBase{
                return ("左犠飛", "タッチアップ\n2死1,2塁\n1点", UIImage(named: "")! )
            }
            else if Situation.twoOutFullBase{
                return ("左飛", "レフトフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
        case .centerFly:
            if Situation.noOutNoRunner {
                return ("中飛", "センターフライ\n一死走者なし", UIImage(named: "")! )
            }else if Situation.oneOutNoRunner{
                return ("中飛", "センターフライ\n2死走者なし", UIImage(named: "")! )
            }
            else if Situation.twoOutNoRunner{
                return ("中飛", "センターフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutRunnerOnFirst{
                return ("中飛", "センターフライ\n1死1塁", UIImage(named: "")! )
            }
            else if Situation.oneOutRunnerOnFirst{
                return("中飛", "センターフライ\n2死1塁", UIImage(named: "")! )
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("中飛", "センターフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutRunnerOnSecond{
                return ("中飛", "センターフライ\n1死2塁", UIImage(named: "")! )
            }
            else if Situation.oneOutRunnerOnSecond{
                return ("中飛", "センターフライ\n2死2塁", UIImage(named: "")! )
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("中飛", "センターフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutRunnerOnThird{
                return ("中犠飛", "タッチアップ\n1死走者なし\n1点", UIImage(named: "")! )
            }
            else if Situation.oneOutRunnerOnThird{
                return ("中犠飛", "タッチアップ\n2死走者なし\n1点", UIImage(named: "")! )
            }
            else if Situation.twoOutRunnerOnThird{
                return ("中飛", "センターフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("中飛", "センターフライ\n1死1,2塁", UIImage(named: "")! )
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("中飛", "センターフライ\n2死1,2塁", UIImage(named: "")! )
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("中飛", "センターフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("中犠飛", "タッチアップ\n1死1塁\n1点", UIImage(named: "")! )
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("中犠飛", "タッチアップ\n2死1塁\n1点", UIImage(named: "")! )
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("中飛", "センターフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("中犠飛", "タッチアップ\n1死2塁\n1点", UIImage(named: "")! )
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("中犠飛", "タッチアップ\n2死2塁\n1点", UIImage(named: "")! )
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("中飛", "センターフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutFullBase{
                return ("中犠飛", "タッチアップ\n1死1,2塁", UIImage(named: "")! )
            }
            else if Situation.oneOutFullBase{
                return ("中犠飛", "タッチアップ\n2死1,2塁", UIImage(named: "")! )
            }
            else if Situation.twoOutFullBase{
                return ("中飛", "センターフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
        case .rightFly:
            if Situation.noOutNoRunner {
                return ("右飛", "ライトフライ\n1死走者なし", UIImage(named: "")! )
            }else if Situation.oneOutNoRunner{
                return ("右飛", "ライトフライ\n2死走者なし", UIImage(named: "")! )
            }
            else if Situation.twoOutNoRunner{
                return ("右飛", "ライトフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutRunnerOnFirst{
                return ("右飛", "ライトフライ\n1死1塁", UIImage(named: "")! )
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("右飛", "ライトフライ\n2死1塁", UIImage(named: "")! )
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("右飛", "ライトフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutRunnerOnSecond{
                return ("右飛", "ライトフライ\n1死2塁", UIImage(named: "")! )
            }
            else if Situation.oneOutRunnerOnSecond{
                return ("右飛", "ライトフライ\n2死2塁", UIImage(named: "")! )
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("右飛", "ライトフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutRunnerOnThird{
                return ("右犠飛", "タッチアップ\n1死走者なし\n1点", UIImage(named: "")! )
            }
            else if Situation.oneOutRunnerOnThird{
                return ("右犠飛", "タッチアップ\n2死走者なし\n1点", UIImage(named: "")! )
            }
            else if Situation.twoOutRunnerOnThird{
                return ("右飛", "ライトフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("右飛", "ライトフライ\n1死1,2塁", UIImage(named: "")! )
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("右飛", "ライトフライ\n2死1,2塁", UIImage(named: "")! )
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("右飛", "ライトフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("右飛", "タッチアップ\n1死1塁\n1点", UIImage(named: "")! )
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("右犠飛", "タッチアップ\n2死1塁\n1点", UIImage(named: "")! )
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("右飛", "ライトフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                //oohashi:23塁のがいいか？
                return ("右犠飛", "タッチアップ\n1死2塁\n1点", UIImage(named: "")! )
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("右犠飛", "タッチアップ\n2死2塁\n1点", UIImage(named: "")! )
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("右飛", "ライトフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
            else if Situation.noOutFullBase{
                //13塁のがいいか
                return ("右犠飛", "タッチアップ\n1死1,2塁\n1点", UIImage(named: "")! )
            }
            else if Situation.oneOutFullBase{
                return ("右犠飛", "タッチアップ\n2死1,2塁\n1点", UIImage(named: "")! )
            }
            else if Situation.twoOutFullBase{
                return ("右飛", "ライトフライ\n3アウトチェンジ", UIImage(named: "")! )
            }
        case .pitcherGoro:
            return ("", "", UIImage(named: "")! )
        case .struckOutSwinging:
            
            if Situation.noOutNoRunner {
                return ("空振", "空振り三振\n1死走者なし", UIImage(named: "1-0")! )
            }else if Situation.oneOutNoRunner{
                return ("空振", "空振り三振\n2死走者なし", UIImage(named: "2-0")! )
            }
            else if Situation.twoOutNoRunner{
                return ("空振", "空振り三振\n3アウトチェンジ", UIImage(named: "3-0")! )
            }
            else if Situation.noOutRunnerOnFirst{
                return ("空振", "空振り三振\n1死1塁", UIImage(named: "1-1")! )
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("空振", "空振り三振\n2死1塁", UIImage(named: "2-1")! )
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("空振", "空振り三振\n3アウトチェンジ", UIImage(named: "3-1")! )
            }
            else if Situation.noOutRunnerOnSecond{
                return ("空振", "空振り三振\n1死2塁", UIImage(named: "1-2")! )
            }
            else if Situation.oneOutRunnerOnSecond{
                return ("空振", "空振り三振\n2死2塁", UIImage(named: "2-2")! )
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("空振", "空振り三振\n3アウトチェンジ", UIImage(named: "3-2")! )
            }
            else if Situation.noOutRunnerOnThird{
                return ("空振", "空振り三振\n1死3塁", UIImage(named: "1-3")! )
            }
            else if Situation.oneOutRunnerOnThird{
                return ("空振", "空振り三振n2死3塁", UIImage(named: "2-3")! )
            }
            else if Situation.twoOutRunnerOnThird{
                return ("空振", "空振り三振\n3アウトチェンジ", UIImage(named: "3-3")! )
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("空振", "空振り三振\n1死1,2塁", UIImage(named: "1-1,2")! )
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("空振", "空振り三振\n2死1,2塁", UIImage(named: "2-1,2")! )
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("空振", "空振り三振\n3アウトチェンジ", UIImage(named: "3-1,2")! )
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("空振", "空振り三振\n1死1,3塁", UIImage(named: "1-1,3")! )
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("空振", "空振り三振\n2死1,3塁", UIImage(named: "2-1,3")! )
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("空振", "空振り三振\n3アウトチェンジ", UIImage(named: "3-1,3")! )
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("空振", "空振り三振\n1死2,3塁", UIImage(named: "1-2,3")! )
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("空振", "空振り三振\n2死2,3塁", UIImage(named: "2-2,3")! )
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("空振", "空振り三振\n3アウトチェンジ", UIImage(named: "3-2,3")! )
            }
            else if Situation.noOutFullBase{
                return ("空振", "空振り三振\n1死満塁", UIImage(named: "1-1,2,3")! )
            }
            else if Situation.oneOutFullBase{
                return ("空振", "空振り三振\n2死満塁", UIImage(named: "2-1,2,3")! )
            }
            else if Situation.twoOutFullBase{
                return ("空振", "空振り三振\n3アウトチェンジ", UIImage(named: "3-1,2,3")! )
            }
        case .missedStruckOut:
            if Situation.noOutNoRunner {
                return ("見振", "見逃し三振\n1死走者なし", UIImage(named: "1-0")! )
            }else if Situation.oneOutNoRunner{
                return ("見振", "見逃し三振\n2死走者なし", UIImage(named: "2-0")! )
            }
            else if Situation.twoOutNoRunner{
                return ("見振", "見逃し三振\n3アウトチェンジ", UIImage(named: "3-0")! )
            }
            else if Situation.noOutRunnerOnFirst{
                return ("見振", "見逃し三振\n1死1塁", UIImage(named: "1-1")! )
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("見振", "見逃し三振\n2死1塁", UIImage(named: "2-1")! )
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("見振", "見逃し三振\n3アウトチェンジ", UIImage(named: "3-1")! )
            }
            else if Situation.noOutRunnerOnSecond{
                return ("見振", "見逃し三振\n1死2塁", UIImage(named: "1-2")! )
            }
            else if Situation.oneOutRunnerOnSecond{
                return ("見振", "見逃し三振\n2死2塁", UIImage(named: "2-2")! )
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("見振", "見逃し三振\n3アウトチェンジ", UIImage(named: "3-2")! )
            }
            else if Situation.noOutRunnerOnThird{
                return ("見振", "見逃し三振\n1死3塁", UIImage(named: "1-3")! )
            }
            else if Situation.oneOutRunnerOnThird{
                return ("見振", "見逃し三振\n2死3塁", UIImage(named: "2-3")! )
            }
            else if Situation.twoOutRunnerOnThird{
                return ("見振", "見逃し三振\n3アウトチェンジ", UIImage(named: "3-3")! )
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("見振", "見逃し三振\n1死1,2塁", UIImage(named: "1-1,2")! )
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("見振", "見逃し三振\n2死1,2塁", UIImage(named: "2-1,2")! )
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("見振", "見逃し三振\n3アウトチェンジ", UIImage(named: "3-1,2")! )
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("見振", "見逃し三振\n1死1,3塁", UIImage(named: "1-1,3")! )
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("見振", "見逃し三振\n2死1,3塁", UIImage(named: "2-1,3")! )
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("見振", "見逃し三振\n3アウトチェンジ", UIImage(named: "3-1,3")! )
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("見振", "見逃し三振\n1死2,3塁", UIImage(named: "1-2,3")! )
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("見振", "見逃し三振\n2死2,3塁", UIImage(named: "2-2,3")! )
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("見振", "見逃し三振\n3アウトチェンジ", UIImage(named: "3-2,3")! )
            }
            else if Situation.noOutFullBase{
                return ("見振", "見逃し三振\n1死満塁", UIImage(named: "1-1,2,3")! )
            }
            else if Situation.oneOutFullBase{
                return ("見振", "見逃し三振\n2死満塁", UIImage(named: "2-1,2,3")! )
            }
            else if Situation.twoOutFullBase{
                return ("見振", "見逃し三振\n3アウトチェンジ", UIImage(named: "3-1,2,3")! )
            }
            
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
        case .struckOutSwinging:
            return ""
        case .missedStruckOut:
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
        case .struckOutSwinging:
            return ""
        case .missedStruckOut:
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
        case .struckOutSwinging:
            return
        case .missedStruckOut:
            return
        }
    }

}

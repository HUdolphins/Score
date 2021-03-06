
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
    case pitcherOrCatcherHit //ohashi:ボタン一つで投手と捕手
    case firstHit
    case secondHit
    case thirdHit
    case shortHit
    case leftSingleHit
    case centerSingleHit
    case rightSingleHit
    case leftOverHit
    case centerOverHit
    case rightOverHit
    case thirdBaseLineHit
    case firstBaseLineHit
    case leftIntermediateHit  //左中間
    case rightIntermediateHit //右中間
//
    case fourBall
    case deadBall
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
                return ("投飛", "ピッチャーフライ\n1死1塁", UIImage(named: "1-1")!)
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("投飛", "ピッチャーフライ\n2死走者1塁", UIImage(named: "2-1")!)
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("投飛", "ピッチャーフライ\n3アウトチェンジ", UIImage(named: "3-1")!)
            }
            else if Situation.noOutRunnerOnSecond{
                return ("投飛", "ピッチャーフライ\n1死2塁", UIImage(named: "1-2")!)
            }
            else if Situation.oneOutRunnerOnSecond{
                return ("投飛", "ピッチャーフライ\n2死2塁", UIImage(named: "2-2")!)
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("投飛", "ピッチャーフライ\n3アウトチェンジ", UIImage(named: "3-2")!)
            }
            else if Situation.noOutRunnerOnThird{
                return ("投飛", "ピッチャーフライ\n1死3塁", UIImage(named: "1-3")!)
            }
            else if Situation.oneOutRunnerOnThird{
                return ("投飛", "ピッチャーフライ\n2死3塁", UIImage(named: "2-3")!)
            }
            else if Situation.twoOutRunnerOnThird{
                return ("投飛", "ピッチャーフライ\n3アウトチェンジ", UIImage(named: "3-3")!)
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("投飛", "ピッチャーフライ\n1死走者1,2塁", UIImage(named: "1-1,2")!)
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("投飛", "ピッチャーフライ\n2死1,2塁", UIImage(named: "2-1,2")!)
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("投飛", "ピッチャーフライ\n3アウトチェンジ", UIImage(named: "3-1,2")!)
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("投飛", "ピッチャーフライ\n1死1,3塁", UIImage(named: "1-1,3")!)
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("投飛", "ピッチャーフライ\n2死1,３塁", UIImage(named: "2-1,3")!)
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("投飛", "ピッチャーフライ\n3アウトチェンジ", UIImage(named: "3-1,3")!)
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("投飛", "ピッチャーフライ\n1死2,3塁", UIImage(named: "1-2,3")!)
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("投飛", "ピッチャーフライ\n2死2,3塁", UIImage(named: "2-2,3")!)
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("投飛", "ピッチャーフライ\n3アウトチェンジ", UIImage(named: "3-2,3")!)
            }
            else if Situation.noOutFullBase{
                return ("投飛", "ピッチャーフライ\n1死満塁", UIImage(named: "1-1,2,3")!)
            }
            else if Situation.oneOutFullBase{
                return ("投飛", "ピッチャーフライ\n2死満塁", UIImage(named: "2-1,2,3")!)
            }
            else if Situation.twoOutFullBase{
                return ("投飛", "ピッチャーフライ\n3アウトチェンジ", UIImage(named: "3-1,2,3")!)
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
                return ("左飛", "レフトフライ\n1死走者なし", UIImage(named: "1-0")!)
            }else if Situation.oneOutNoRunner{
                return ("左飛", "レフトフライ\n2死走者なし", UIImage(named: "2-0")! )
            }
            else if Situation.twoOutNoRunner{
                return ("左飛", "レフトフライ\n3アウトチェンジ", UIImage(named: "3-0")! )
            }
            else if Situation.noOutRunnerOnFirst{
                return ("左飛", "レフトフライ\n1死1塁", UIImage(named: "1-1")! )
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("左飛", "レフトフライ\n2死1塁", UIImage(named: "2-1")! )
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("左飛", "レフトフライ\n3アウトチェンジ", UIImage(named: "3-1")! )
            }
            else if Situation.noOutRunnerOnSecond{
                return ("左飛", "レフトフライ\n1死2塁", UIImage(named: "1-2")! )
            }
            else if Situation.oneOutRunnerOnSecond{
                return ("左飛", "レフトフライ\n2死2塁", UIImage(named: "2-2")! )
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("左飛", "レフトフライ\n3アウトチェンジ", UIImage(named: "3-2")! )
            }
            else if Situation.noOutRunnerOnThird{
                return ("左犠飛", "タッチアップ\n1死走者なし\n1点", UIImage(named: "1-4_1")! )
            }
            else if Situation.oneOutRunnerOnThird{
                return ("左犠飛", "タッチアップ\n2死走者なし\n1点", UIImage(named: "2-4_1")! )
            }
            else if Situation.twoOutRunnerOnThird{
                return ("左飛", "レフトフライ\n3アウトチェンジ", UIImage(named: "3-3")! )
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("左飛", "レフトフライ\n1死1,2塁", UIImage(named: "1-1,2")! )
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("左飛", "レフトフライ\n2死1,2塁", UIImage(named: "2-1,2")! )
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("左飛", "レフトフライ\n3アウトチェンジ", UIImage(named: "3-1,2")! )
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("左犠飛", "タッチアップ\n1死1塁\n1点", UIImage(named: "1-1,4_1")! )
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("左犠飛", "タッチアップ\n2死1塁\n1点", UIImage(named: "2-1,4_1")! )
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("左飛", "レフトフライ\n3アウトチェンジ", UIImage(named: "3-1,3")! )
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("左犠飛", "タッチアップ\n1死2塁\n1点", UIImage(named: "1-2,4_1")! )
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("左犠飛", "タッチアップ\n2死2塁\n1点", UIImage(named: "2-2,4_1")! )
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("左飛", "レフトフライ\n3アウトチェンジ", UIImage(named: "3-2,3")! )
            }
            else if Situation.noOutFullBase{
                return ("左犠飛", "タッチアップ\n1死1,2塁\n1点", UIImage(named: "1-1,2,4_1")! )
            }
            else if Situation.oneOutFullBase{
                return ("左犠飛", "タッチアップ\n2死1,2塁\n1点", UIImage(named: "2-1,2,4_1")! )
            }
            else if Situation.twoOutFullBase{
                return ("左飛", "レフトフライ\n3アウトチェンジ", UIImage(named: "3-1,2,3")! )
            }
        case .centerFly:
            if Situation.noOutNoRunner {
                return ("中飛", "センターフライ\n一死走者なし", UIImage(named: "1-0")! )
            }else if Situation.oneOutNoRunner{
                return ("中飛", "センターフライ\n2死走者なし", UIImage(named: "2-0")! )
            }
            else if Situation.twoOutNoRunner{
                return ("中飛", "センターフライ\n3アウトチェンジ", UIImage(named: "3-0")! )
            }
            else if Situation.noOutRunnerOnFirst{
                return ("中飛", "センターフライ\n1死1塁", UIImage(named: "1-1")! )
            }
            else if Situation.oneOutRunnerOnFirst{
                return("中飛", "センターフライ\n2死1塁", UIImage(named: "2-1")! )
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("中飛", "センターフライ\n3アウトチェンジ", UIImage(named: "3-1")! )
            }
            else if Situation.noOutRunnerOnSecond{
                return ("中飛", "センターフライ\n1死2塁", UIImage(named: "1-2")! )
            }
            else if Situation.oneOutRunnerOnSecond{
                return ("中飛", "センターフライ\n2死2塁", UIImage(named: "2-2")! )
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("中飛", "センターフライ\n3アウトチェンジ", UIImage(named: "3-2")! )
            }
            else if Situation.noOutRunnerOnThird{
                return ("中犠飛", "タッチアップ\n1死走者なし\n1点", UIImage(named: "1-4_1")! )
            }
            else if Situation.oneOutRunnerOnThird{
                return ("中犠飛", "タッチアップ\n2死走者なし\n1点", UIImage(named: "2-4_1")! )
            }
            else if Situation.twoOutRunnerOnThird{
                return ("中飛", "センターフライ\n3アウトチェンジ", UIImage(named: "3-3")! )
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("中飛", "センターフライ\n1死1,2塁", UIImage(named: "1-1,2")! )
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("中飛", "センターフライ\n2死1,2塁", UIImage(named: "2-1,2")! )
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("中飛", "センターフライ\n3アウトチェンジ", UIImage(named: "3-1,2")! )
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("中犠飛", "タッチアップ\n1死1塁\n1点", UIImage(named: "1-1,4_1")! )
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("中犠飛", "タッチアップ\n2死1塁\n1点", UIImage(named: "2-1,4_1")! )
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("中飛", "センターフライ\n3アウトチェンジ", UIImage(named: "3-1,3")! )
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("中犠飛", "タッチアップ\n1死2塁\n1点", UIImage(named: "1-2,4_1")! )
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("中犠飛", "タッチアップ\n2死2塁\n1点", UIImage(named: "2-2,4_1")! )
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("中飛", "センターフライ\n3アウトチェンジ", UIImage(named: "3-2,3")! )
            }
            else if Situation.noOutFullBase{
                return ("中犠飛", "タッチアップ\n1死1,2塁", UIImage(named: "1-1,2,4_1")! )
            }
            else if Situation.oneOutFullBase{
                return ("中犠飛", "タッチアップ\n2死1,2塁", UIImage(named: "2-1,2,4_1")! )
            }
            else if Situation.twoOutFullBase{
                return ("中飛", "センターフライ\n3アウトチェンジ", UIImage(named: "3-1,2,3")! )
            }
        case .rightFly:
            if Situation.noOutNoRunner {
                return ("右飛", "ライトフライ\n1死走者なし", UIImage(named: "1-0")! )
            }else if Situation.oneOutNoRunner{
                return ("右飛", "ライトフライ\n2死走者なし", UIImage(named: "2-0")! )
            }
            else if Situation.twoOutNoRunner{
                return ("右飛", "ライトフライ\n3アウトチェンジ", UIImage(named: "3-0")! )
            }
            else if Situation.noOutRunnerOnFirst{
                return ("右飛", "ライトフライ\n1死1塁", UIImage(named: "1-1")! )
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("右飛", "ライトフライ\n2死1塁", UIImage(named: "2-1")! )
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("右飛", "ライトフライ\n3アウトチェンジ", UIImage(named: "3-1")! )
            }
            else if Situation.noOutRunnerOnSecond{
                return ("右飛", "ライトフライ\n1死2塁", UIImage(named: "1-2")! )
            }
            else if Situation.oneOutRunnerOnSecond{
                return ("右飛", "ライトフライ\n2死2塁", UIImage(named: "2-2")! )
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("右飛", "ライトフライ\n3アウトチェンジ", UIImage(named: "3-2")! )
            }
            else if Situation.noOutRunnerOnThird{
                return ("右犠飛", "タッチアップ\n1死走者なし\n1点", UIImage(named: "1-4_1")! )
            }
            else if Situation.oneOutRunnerOnThird{
                return ("右犠飛", "タッチアップ\n2死走者なし\n1点", UIImage(named: "2-4_1")! )
            }
            else if Situation.twoOutRunnerOnThird{
                return ("右飛", "ライトフライ\n3アウトチェンジ", UIImage(named: "3-3")! )
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("右飛", "ライトフライ\n1死1,2塁", UIImage(named: "1-1,2")! )
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("右飛", "ライトフライ\n2死1,2塁", UIImage(named: "2-1,2")! )
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("右飛", "ライトフライ\n3アウトチェンジ", UIImage(named: "3-1,2")! )
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("右飛", "タッチアップ\n1死1塁\n1点", UIImage(named: "1-1,4_1")! )
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("右犠飛", "タッチアップ\n2死1塁\n1点", UIImage(named: "2-1,4_1")! )
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("右飛", "ライトフライ\n3アウトチェンジ", UIImage(named: "3-1,3")! )
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                //oohashi:23塁のがいいか？
                return ("右犠飛", "タッチアップ\n1死2塁\n1点", UIImage(named: "1-2,4_1")! )
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("右犠飛", "タッチアップ\n2死2塁\n1点", UIImage(named: "2-2,4_1")! )
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("右飛", "ライトフライ\n3アウトチェンジ", UIImage(named: "3-2,3")! )
            }
            else if Situation.noOutFullBase{
                //13塁のがいいか
                return ("右犠飛", "タッチアップ\n1死1,2塁\n1点", UIImage(named: "1-1,2,4_1")! )
            }
            else if Situation.oneOutFullBase{
                return ("右犠飛", "タッチアップ\n2死1,2塁\n1点", UIImage(named: "2-1,2,4_1")! )
            }
            else if Situation.twoOutFullBase{
                return ("右飛", "ライトフライ\n3アウトチェンジ", UIImage(named: "3-1,2,3")! )
            }
        case .pitcherGoro:
            if Situation.noOutNoRunner {
                return ("投ゴロ", "投ゴロ,1-3\n1死走者なし", UIImage(named: "1-0")! )
            }else if Situation.oneOutNoRunner{
                return ("投ゴロ", "投ゴロ,1-3\n2死走者なし", UIImage(named: "2-0")! )
            }
            else if Situation.twoOutNoRunner{
                return ("投ゴロ", "投ゴロ,1-3\n3アウトチェンジ", UIImage(named: "3-0")! )
            }
            else if Situation.noOutRunnerOnFirst{
                return ("投併殺", "ダブルプレー, 1-6-3\n2死走者なし", UIImage(named: "2-0")! )
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("投併殺", "ダブルプレー,1-6-3\n3アウトチェンジ", UIImage(named: "3-0")! )
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("投ゴロ", "投ゴロ,1-3\n3アウトチェンジ", UIImage(named: "3-1")! )
            }
            else if Situation.noOutRunnerOnSecond{
                return ("投ゴロ", "投ゴロ,1-3\n1死2塁", UIImage(named: "1-2")! )
            }
            else if Situation.oneOutRunnerOnSecond{
                return ("投ゴロ", "投ゴロ,1-3\n2死2塁", UIImage(named: "2-2")! )
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("投ゴロ", "投ゴロ,1-3\n3アウトチェンジ", UIImage(named: "3-2")! )
            }
            else if Situation.noOutRunnerOnThird{
                return ("投ゴロ", "投ゴロ,1-3\n1死3塁", UIImage(named: "1-3")! )
            }
            else if Situation.oneOutRunnerOnThird{
                return ("投ゴロ", "投ゴロ,1-3\n2死3塁", UIImage(named: "2-3")! )
            }
            else if Situation.twoOutRunnerOnThird{
                return ("投ゴロ", "投ゴロ,1-3\n3アウトチェンジ", UIImage(named: "3-3")! )
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("投併殺", "ダブルプレー,1-6-3\n2死3塁", UIImage(named: "<#resultImage#>")! )
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("投併殺", "ダブルプレー,1-6-3\n3アウトチェンジ", UIImage(named: "<#resultImage#>")! )
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("投ゴロ", "投ゴロ,1-3\n3アウトチェンジ", UIImage(named: "<#resultImage#>")! )
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("投ゴロ", "投ゴロ,1-3\n1死2,3塁", UIImage(named: "<#resultImage#>")! )
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("投併殺", "ダブルプレー,1-6-3\n3アウトチェンジ", UIImage(named: "<#resultImage#>")! )
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("投ゴロ", "投ゴロ,1-3\n3アウトチェンジ", UIImage(named: "<#resultImage#>")! )
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("投ゴロ", "投ゴロ,1-3\n1死2,3塁", UIImage(named: "<#resultImage#>")! )
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("投ゴロ", "投ゴロ,1-3\n2死2,3塁", UIImage(named: "<#resultImage#>")! )
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("投ゴロ", "投ゴロ,1-3\n3アウトチェンジ", UIImage(named: "<#resultImage#>")! )
            }
            else if Situation.noOutFullBase{
                return ("投併殺", "ホームゲッツー,1-2-3\n1死満塁", UIImage(named: "<#resultImage#>")! )
            }
            else if Situation.oneOutFullBase{
                return ("投併殺", "ホームゲッツー,1-2-3\n2死満塁", UIImage(named: "<#resultImage#>")! )
            }
            else if Situation.twoOutFullBase{
                return ("投ゴロ", "投ゴロ,1-3\n3アウトチェンジ", UIImage(named: "<#resultImage#>")! )
            }

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
        case .leftIntermediateHit:
            if Situation.noOutNoRunner {
                return ("左中二", "左中間ツーベース\n無死2塁", UIImage(named: "0-2")!)
            }else if Situation.oneOutNoRunner{
                return ("左中二", "左中間ツーベース\n1死2塁", UIImage(named: "1-2")!)
            }
            else if Situation.twoOutNoRunner{
                return ("左中二", "左中間ツーベース\n2死2塁", UIImage(named: "2-2")!)
            }
            else if Situation.noOutRunnerOnFirst{
                return ("左中二", "左中間ツーベース\n無死2,3塁", UIImage(named: "0-2,3")!)
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("左中二", "左中間ツーベース\n1死2,3塁", UIImage(named: "1-2,3")!)
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("左中二", "左中間ツーベース\n２死2死2,3塁", UIImage(named: "2-2,3")!)
            }
            else if Situation.noOutRunnerOnSecond{
                return ("左中二", "左中間ツーベース\n無死2塁", UIImage(named: "0-2,4_1")!)
            }
            else if Situation.oneOutRunnerOnSecond{
                return ("左中二", "左中間ツーベース\n1死2塁", UIImage(named: "1-2,4_1")!)
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("左中二", "左中間ツーベース\n2死2塁", UIImage(named: "2-2,4_1")!)
            }
            else if Situation.noOutRunnerOnThird{
                return ("左中二", "左中間ツーベース\n無死2塁", UIImage(named: "0-2,4_1")!)
            }
            else if Situation.oneOutRunnerOnThird{
                return ("左中二", "左中間ツーベース\n1死2塁", UIImage(named: "1-2,4_1")!)
            }
            else if Situation.twoOutRunnerOnThird{
                return ("左中二", "左中間ツーベース\n2死2塁", UIImage(named: "2-2,4_1")!)
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("左中二", "左中間ツーベース\n無死2,3塁", UIImage(named: "0-2,3,4_1")!)
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("左中二", "左中間ツーベース\n1死2,3塁", UIImage(named: "1-2,3,4_1")!)
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("左中二", "左中間ツーベース\n2死2,3塁", UIImage(named: "2-2,3,4_1")!)
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("左中二", "左中間ツーベース\n無死2,3塁", UIImage(named: "0-2,3,4_1")!)
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("左中二", "左中間ツーベース\n1死2,3塁", UIImage(named: "1-2,3,4_1")!)
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("左中二", "左中間ツーベース\n2死2,3塁", UIImage(named: "2-2,3,4_1")!)
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("左中二", "左中間ツーベース\n無死2塁", UIImage(named: "0-2,4_2")!)
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("左中二", "左中間ツーベース\n1死2塁", UIImage(named: "1-2,4_2")!)
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("左中二", "左中間ツーベース\n2死2塁", UIImage(named: "2-2,4_2")!)
            }
            else if Situation.noOutFullBase{
                return ("左中二", "左中間ツーベース\n無死2,3塁", UIImage(named: "0-2,3,4_2")!)
            }
            else if Situation.oneOutFullBase{
                return ("左中二", "左中間ツーベース\n1死2,3塁", UIImage(named: "1-2,3,4_2")!)
            }
            else if Situation.twoOutFullBase{
                return ("左中二", "左中間ツーベース\n2死2,3塁", UIImage(named: "2-2,3,4_2")!)
            }
        case .rightIntermediateHit:
            if Situation.noOutNoRunner {
                return ("右中二", "右中間ツーベース\n無死2塁", UIImage(named: "0-2")!)
            }else if Situation.oneOutNoRunner{
                return ("右中二", "右中間ツーベース\n1死2塁", UIImage(named: "1-2")!)
            }
            else if Situation.twoOutNoRunner{
                return ("右中二", "右中間ツーベース\n2死2塁", UIImage(named: "2-2")!)
            }
            else if Situation.noOutRunnerOnFirst{
                return ("右中二", "右中間ツーベース\n2死2塁", UIImage(named: "2-2")!)
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("右中二", "右中間ツーベース\n1死2,3塁", UIImage(named: "1-2,3")!)
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("右中二", "右中間ツーベース\n２死2死2,3塁", UIImage(named: "2-2,3")!)
            }
            else if Situation.noOutRunnerOnSecond{
                return ("右中二", "右中間ツーベース\n無死2塁", UIImage(named: "0-2,4_1")!)
            }
            else if Situation.oneOutRunnerOnSecond{
                return ("右中二", "右中間ツーベース\n1死2塁", UIImage(named: "1-2,4_1")!)
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("右中二", "右中間ツーベース\n2死2塁", UIImage(named: "2-2,4_1")!)
            }
            else if Situation.noOutRunnerOnThird{
                return ("右中二", "右中間ツーベース\n無死2塁", UIImage(named: "0-2,4_1")!)
            }
            else if Situation.oneOutRunnerOnThird{
                return ("右中二", "右中間ツーベース\n1死2塁", UIImage(named: "1-2,4_1")!)
            }
            else if Situation.twoOutRunnerOnThird{
                return ("右中二", "右中間ツーベース\n2死2塁", UIImage(named: "2-2,4_1")!)
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("右中二", "右中間ツーベース\n無死2,3塁", UIImage(named: "0-2,3,4_1")!)
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("右中二", "右中間ツーベース\n1死2,3塁", UIImage(named: "1-2,3,4_1")!)
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("右中二", "左中間ツーベース\n2死2,3塁", UIImage(named: "2-2,3,4_1")!)
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("右中二", "右中間ツーベース\n無死2,3塁", UIImage(named: "0-2,3,4_1")!)
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("右中二", "右中間ツーベース\n1死2,3塁", UIImage(named: "1-2,3,4_1")!)
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("右中二", "右中間ツーベース\n2死2,3塁", UIImage(named: "2-2,3,4_1")!)
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("右中二", "右中間ツーベース\n無死2塁", UIImage(named: "0-2,4_2")!)
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("右中二", "右中間ツーベース\n1死2塁", UIImage(named: "1-2,4_2")!)
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("右中二", "右中間ツーベース\n2死2塁", UIImage(named: "2-2,4_2")!)
            }
            else if Situation.noOutFullBase{
                return ("右中二", "右中間ツーベース\n無死2,3塁", UIImage(named: "0-2,3,4_2")!)
            }
            else if Situation.oneOutFullBase{
                return ("右中二", "右中間ツーベース\n1死2,3塁", UIImage(named: "1-2,3,4_2")!)
            }
            else if Situation.twoOutFullBase{
                return ("右中二", "右中間ツーベース\n2死2,3塁", UIImage(named: "2-2,3,4_2")!)
                        }
        case .leftSingleHit:
            if Situation.noOutNoRunner {
                return ("左前安", "レフト前ヒット\n無死1塁", UIImage(named: "0-1")!)
            }else if Situation.oneOutNoRunner{
                return ("左前安", "レフト前ヒット\n1死1塁", UIImage(named: "1-1")!)
            }
            else if Situation.twoOutNoRunner{
                return ("左前安", "レフト前ヒット\n2死1塁", UIImage(named: "2-1")!)
            }
            else if Situation.noOutRunnerOnFirst{
                return ("左前安", "レフト前ヒット\n無死1,2塁", UIImage(named: "0-1,2")!)
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("左前安", "レフト前ヒット\n1死1,2塁", UIImage(named: "1-1,2")!)
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("左前安", "レフト前ヒット\n2死1,2塁", UIImage(named: "2-1,2")!)
            }
            else if Situation.noOutRunnerOnSecond{
                return ("左前安", "レフト前ヒット\n無死1,3塁", UIImage(named: "0-1,3")!)
            }
            else if Situation.oneOutRunnerOnSecond{
                return ( "左前安", "レフト前ヒット\n1死1,3塁", UIImage(named: "1-1,3")!)
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("左前安", "レフト前ヒット\n2死1,3塁", UIImage(named: "2-1,3")!)
            }
            else if Situation.noOutRunnerOnThird{
                return ("左前安", "レフト前ヒット\n無死1塁", UIImage(named: "0-1,4_1")!)
            }
            else if Situation.oneOutRunnerOnThird{
                return ("左前安", "レフト前ヒット\n1死1塁", UIImage(named: "1-1,4_1")!)
            }
            else if Situation.twoOutRunnerOnThird{
                return ("左前安", "レフト前ヒット\n2死1塁", UIImage(named: "2-1,4_1")!)
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("左前安", "レフト前ヒット\n無死満塁", UIImage(named: "0-1,2,3")!)
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("左前安", "レフト前ヒット\n1死満塁", UIImage(named: "1-1,2,3")!)
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("左前安", "レフト前ヒット\n2死満塁", UIImage(named: "2-1,2,3")!)
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("左前安", "レフト前ヒット\n無死1,2塁", UIImage(named: "0-1,2,4_1")!)
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("左前安", "レフト前ヒット\n1死1,2塁", UIImage(named: "1-1,2,4_1")!)
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("左前安", "レフト前ヒット\n2死1,2塁", UIImage(named: "2-1,2,4_1")!)
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("左前安", "レフト前ヒット\n無死1,3塁", UIImage(named: "0-1,3,4_1")!)
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("左前安", "レフト前ヒット\n1死1,3塁", UIImage(named: "1-1,3,4_1")!)
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("左前安", "レフト前ヒット\n2死1,3塁", UIImage(named: "2-1,3,4_1")!)
            }
            else if Situation.noOutFullBase{
                return ("左前安", "レフト前ヒット\n無死満塁", UIImage(named: "0-1,2,3,4_1")!)
            }
            else if Situation.oneOutFullBase{
                return ("左前安", "レフト前ヒット\n1死満塁", UIImage(named: "1-1,2,3,4_1")!)
            }
            else if Situation.twoOutFullBase{
                return ("左前安", "レフト前ヒット\n2死満塁", UIImage(named: "2-1,2,3,4_1")!)
                        }
        case .centerSingleHit:
            if Situation.noOutNoRunner {
                return ("中前安", "センター前ヒット\n無死1塁", UIImage(named: "0-1")!)
            }else if Situation.oneOutNoRunner{
                return ("中前安", "センター前ヒット\n1死1塁", UIImage(named: "1-1")!)
            }
            else if Situation.twoOutNoRunner{
                return ("中前安", "センター前ヒット\n2死1塁", UIImage(named: "2-1")!)
            }
            else if Situation.noOutRunnerOnFirst{
                return ("中前安", "センター前ヒット\n無死1,2塁", UIImage(named: "0-1,2")!)
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("中前安", "センター前ヒット\n1死1,2塁", UIImage(named: "1-1,2")!)
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("中前安", "センター前ヒット\n2死1,2塁", UIImage(named: "2-1,2")!)
            }
            else if Situation.noOutRunnerOnSecond{
                return ("中前安", "センター前ヒット\n無死1,3塁", UIImage(named: "0-1,3")!)
            }
            else if Situation.oneOutRunnerOnSecond{
                return ( "中前安", "センター前ヒット\n1死1,3塁", UIImage(named: "1-1,3")!)
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("中前安", "センター前ヒット\n2死1,3塁", UIImage(named: "2-1,3")!)
            }
            else if Situation.noOutRunnerOnThird{
                return ("中前安", "センター前ヒット\n無死1塁", UIImage(named: "0-1,4_1")!)
            }
            else if Situation.oneOutRunnerOnThird{
                return ("中前安", "センター前ヒット\n1死1塁", UIImage(named: "1-1,4_1")!)
            }
            else if Situation.twoOutRunnerOnThird{
                return ("中前安", "センター前ヒット\n2死1塁", UIImage(named: "2-1,4_1")!)
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("中前安", "センター前ヒット\n無死満塁", UIImage(named: "0-1,2,3")!)
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("中前安", "センター前ヒット\n1死満塁", UIImage(named: "1-1,2,3")!)
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("中前安", "センター前ヒット\n2死満塁", UIImage(named: "2-1,2,3")!)
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                 return ("中前安", "センター前ヒット\n無死1,2塁", UIImage(named: "0-1,2,4_1")!)
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("中前安", "センター前ヒット\n1死1,2塁", UIImage(named: "1-1,2,4_1")!)
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("中前安", "センター前ヒット\n2死1,2塁", UIImage(named: "2-1,2,4_1")!)
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("中前安", "センター前ヒット\n無死1,3塁", UIImage(named: "0-1,3,4_1")!)
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("中前安", "センター前ヒット\n1死1,3塁", UIImage(named: "1-1,3,4_1")!)
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("中前安", "センター前ヒット\n2死1,3塁", UIImage(named: "2-1,3,4_1")!)
            }
            else if Situation.noOutFullBase{
                return ("中前安", "センター前ヒット\n無死満塁", UIImage(named: "0-1,2,3,4_1")!)
            }
            else if Situation.oneOutFullBase{
                return ("中前安", "センター前ヒット\n1死満塁", UIImage(named: "1-1,2,3,4_1")!)
            }
            else if Situation.twoOutFullBase{
                return ("中前安", "センター前ヒット\n2死満塁", UIImage(named: "2-1,2,3,4_1")!)
                        }
        case .rightSingleHit:
            if Situation.noOutNoRunner {
                return ("右前安", "ライト前ヒット\n無死1塁", UIImage(named: "0-1")!)
            }else if Situation.oneOutNoRunner{
                return ("右前安", "ライト前ヒット\n1死1塁", UIImage(named: "1-1")!)
            }
            else if Situation.twoOutNoRunner{
                return ("右前安", "ライト前ヒット\n2死1塁", UIImage(named: "2-1")!)
            }
            else if Situation.noOutRunnerOnFirst{
                return ("右前安", "ライト前ヒット\n無死1,2塁", UIImage(named: "0-1,2")!)
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("右前安", "ライト前ヒット\n1死1,2塁", UIImage(named: "1-1,2")!)
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("右前安", "ライト前ヒット\n2死1,2塁", UIImage(named: "2-1,2")!)
                
            }
            else if Situation.noOutRunnerOnSecond{
                return ("右前安", "ライト前ヒット\n無死1,3塁", UIImage(named: "0-1,3")!)
            }
            else if Situation.oneOutRunnerOnSecond{
                return ( "右前安", "ライト前ヒット\n1死1,3塁", UIImage(named: "1-1,3")!)
                
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("右前安", "ライト前ヒット\n2死1,3塁", UIImage(named: "2-1,3")!)
                
            }
            else if Situation.noOutRunnerOnThird{
                return ("右前安", "ライト前ヒット\n無死1塁", UIImage(named: "0-1,4_1")!)
                
            }
            else if Situation.oneOutRunnerOnThird{
                return ("右前安", "ライト前ヒット\n1死1塁", UIImage(named: "1-1,4_1")!)
            }
            else if Situation.twoOutRunnerOnThird{
                 return ("右前安", "ライト前ヒット\n2死1塁", UIImage(named: "2-1,4_1")!)
                
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("右前安", "ライト前ヒット\n無死満塁", UIImage(named: "0-1,2,3")!)
                
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("右前安", "ライト前ヒット\n1死満塁", UIImage(named: "1-1,2,3")!)
                
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("右前安", "ライト前ヒット\n2死満塁", UIImage(named: "2-1,2,3")!)
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("右前安", "ライト前ヒット\n無死1,2塁", UIImage(named: "0-1,2,4_1")!)
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("右前安", "ライト前ヒット\n1死1,2塁", UIImage(named: "1-1,2,4_1")!)
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("右前安", "ライト前ヒット\n2死1,2塁", UIImage(named: "2-1,2,4_1")!)
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("右前安", "ライト前ヒット\n無死1,3塁", UIImage(named: "0-1,3,4_1")!)
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("右前安", "ライト前ヒット\n1死1,3塁", UIImage(named: "1-1,3,4_1")!)
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("右前安", "ライト前ヒット\n2死1,3塁", UIImage(named: "2-1,3,4_1")!)
            }
            else if Situation.noOutFullBase{
                return ("右前安", "ライト前ヒット\n無死満塁", UIImage(named: "0-1,2,3,4_1")!)
            }
            else if Situation.oneOutFullBase{
                return ("右前安", "ライト前ヒット\n1死満塁", UIImage(named: "1-1,2,3,4_1")!)
            }
            else if Situation.twoOutFullBase{
                return ("右前安", "ライト前ヒット\n2死満塁", UIImage(named: "2-1,2,3,4_1")!)
                        }
        case .pitcherOrCatcherHit:
            if Situation.noOutNoRunner {
                return ("投前安", "ピッチャー内野安打\n無死1塁", UIImage(named: "0-1")!)
            }else if Situation.oneOutNoRunner{
                return ("投前安", "ピッチャー内野安打\n1死1塁", UIImage(named: "1-1")!)
            }
            else if Situation.twoOutNoRunner{
                return ("投前安", "ピッチャー内野安打\n2死1塁", UIImage(named: "2-1")!)
            }
            else if Situation.noOutRunnerOnFirst{
                return ("投前安", "ピッチャー内野安打\n無死1,2塁", UIImage(named: "0-1,2")!)
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("投前安", "ピッチャー内野安打\n1死1,2塁", UIImage(named: "1-1,2")!)
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("投前安", "ピッチャー内野安打\n2死1,2塁", UIImage(named: "2-1,2")!)
            }
            else if Situation.noOutRunnerOnSecond{
                return ("投前安", "ピッチャー内野安打\n無死1,3塁", UIImage(named: "0-1,3")!)
            }
            else if Situation.oneOutRunnerOnSecond{
                return ( "投前安", "ピッチャー内野安打\n1死1,3塁", UIImage(named: "1-1,3")!)
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("投前安", "ピッチャー内野安打\n2死1,3塁", UIImage(named: "2-1,3")!)
                
            }
            else if Situation.noOutRunnerOnThird{
                return ("投前安", "ピッチャー内野安打\n無死1塁", UIImage(named: "0-1,4_1")!)
            }
            else if Situation.oneOutRunnerOnThird{
                return ("投前安", "ピッチャー内野安打\n1死1塁", UIImage(named: "1-1,4_1")!)
            }
            else if Situation.twoOutRunnerOnThird{
                return ("投前安", "ピッチャー内野安打\n2死1塁", UIImage(named: "2-1,4_1")!)
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("投前安", "ピッチャー内野安打\n無死満塁", UIImage(named: "0-1,2,3")!)
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("投前安", "ピッチャー内野安打\n1死満塁", UIImage(named: "1-1,2,3")!)
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("投前安", "ピッチャー内野安打\n2死満塁", UIImage(named: "2-1,2,3")!)
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("投前安", "ピッチャー内野安打\n無死1,2塁", UIImage(named: "0-1,2,4_1")!)
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("投前安", "ピッチャー内野安打\n1死1,2塁", UIImage(named: "1-1,2,4_1")!)
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("投前安", "ピッチャー内野安打\n2死1,2塁", UIImage(named: "2-1,2,4_1")!)
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("投前安", "ピッチャー内野安打\n無死1,3塁", UIImage(named: "0-1,3,4_1")!)
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("投前安", "ピッチャー内野安打\n1死1,3塁", UIImage(named: "1-1,3,4_1")!)
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("投前安", "ピッチャー内野安打\n2死1,3塁", UIImage(named: "2-1,3,4_1")!)
            }
            else if Situation.noOutFullBase{
                return ("投前安", "ピッチャー内野安打\n無死満塁", UIImage(named: "0-1,2,3,4_1")!)
            }
            else if Situation.oneOutFullBase{
                return ("投前安", "ピッチャー内野安打\n1死満塁", UIImage(named: "1-1,2,3,4_1")!)
            }
            else if Situation.twoOutFullBase{
                return ("投前安", "ピッチャー内野安打\n2死満塁", UIImage(named: "2-1,2,3,4_1")!)
                
            }
        case .firstHit:
            if Situation.noOutNoRunner {
                return ("一前安", "ファースト内野安打\n無死1塁", UIImage(named: "0-1")!)
            }else if Situation.oneOutNoRunner{
                return ("一前安", "ファースト内野安打\n1死1塁", UIImage(named: "1-1")!)
            }
            else if Situation.twoOutNoRunner{
                return ("一前安", "ファースト内野安打\n2死1塁", UIImage(named: "2-1")!)
            }
            else if Situation.noOutRunnerOnFirst{
                return ("一前安", "ファースト内野安打\n無死1,2塁", UIImage(named: "0-1,2")!)
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("一前安", "ファースト内野安打\n1死1,2塁", UIImage(named: "1-1,2")!)
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("一前安", "ファースト内野安打\n2死1,2塁", UIImage(named: "2-1,2")!)
            }
            else if Situation.noOutRunnerOnSecond{
                return ("一前安", "ファースト内野安打\n無死1,3塁", UIImage(named: "0-1,3")!)
            }
            else if Situation.oneOutRunnerOnSecond{
                return ( "一前安", "ファースト内野安打\n1死1,3塁", UIImage(named: "1-1,3")!)
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("一前安", "ファースト内野安打\n2死1,3塁", UIImage(named: "2-1,3")!)
                
            }
            else if Situation.noOutRunnerOnThird{
                return ("一前安", "ファースト内野安打\n無死1塁", UIImage(named: "0-1,4_1")!)
            }
            else if Situation.oneOutRunnerOnThird{
                return ("一前安", "ファースト内野安打\n1死1塁", UIImage(named: "1-1,4_1")!)
            }
            else if Situation.twoOutRunnerOnThird{
                return ("一前安", "ファースト内野安打\n2死1塁", UIImage(named: "2-1,4_1")!)
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("一前安", "ファースト内野安打\n無死満塁", UIImage(named: "0-1,2,3")!)
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("一前安", "ファースト内野安打\n1死満塁", UIImage(named: "1-1,2,3")!)
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("一前安", "ファースト内野安打\n2死満塁", UIImage(named: "2-1,2,3")!)
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("一前安", "ファースト内野安打\n無死1,2塁", UIImage(named: "0-1,2,4_1")!)
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("一前安", "ファースト内野安打\n1死1,2塁", UIImage(named: "1-1,2,4_1")!)
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("一前安", "ファースト内野安打\n2死1,2塁", UIImage(named: "2-1,2,4_1")!)
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("一前安", "ファースト内野安打\n無死1,3塁", UIImage(named: "0-1,3,4_1")!)
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                 return ("一前安", "ファースト内野安打\n1死1,3塁", UIImage(named: "1-1,3,4_1")!)
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("一前安", "ファースト内野安打\n2死1,3塁", UIImage(named: "2-1,3,4_1")!)
            }
            else if Situation.noOutFullBase{
                 return ("一前安", "ファースト内野安打\n無死満塁", UIImage(named: "0-1,2,3,4_1")!)
            }
            else if Situation.oneOutFullBase{
                return ("一前安", "ファースト内野安打\n1死満塁", UIImage(named: "1-1,2,3,4_1")!)
            }
            else if Situation.twoOutFullBase{
                return ("一前安", "ファースト内野安打\n2死満塁", UIImage(named: "2-1,2,3,4_1")!)
                
                        }

        case .secondHit:
            if Situation.noOutNoRunner {
                return ("二前安", "セカンド内野安打\n無死1塁", UIImage(named: "0-1")!)
            }else if Situation.oneOutNoRunner{
                return ("二前安", "セカンド内野安打\n1死1塁", UIImage(named: "1-1")!)
            }
            else if Situation.twoOutNoRunner{
                return ("二前安", "セカンド内野安打\n2死1塁", UIImage(named: "2-1")!)
            }
            else if Situation.noOutRunnerOnFirst{
                return ("二前安", "セカンド内野安打\n無死1,2塁", UIImage(named: "0-1,2")!)
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("二前安", "セカンド内野安打\n1死1,2塁", UIImage(named: "1-1,2")!)
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("二前安", "セカンド内野安打\n2死1,2塁", UIImage(named: "2-1,2")!)
            }
            else if Situation.noOutRunnerOnSecond{
                return ("二前安", "セカンド内野安打\n無死1,3塁", UIImage(named: "0-1,3")!)
            }
            else if Situation.oneOutRunnerOnSecond{
                return ( "二前安", "セカンド内野安打\n1死1,3塁", UIImage(named: "1-1,3")!)
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("二前安", "セカンド内野安打\n2死1,3塁", UIImage(named: "2-1,3")!)
            }
            else if Situation.noOutRunnerOnThird{
                return ("二前安", "セカンド内野安打\n無死1塁", UIImage(named: "0-1,4_1")!)
            }
            else if Situation.oneOutRunnerOnThird{
                return ("二前安", "セカンド内野安打\n1死1塁", UIImage(named: "1-1,4_1")!)
            }
            else if Situation.twoOutRunnerOnThird{
                return ("二前安", "セカンド内野安打\n2死1塁", UIImage(named: "2-1,4_1")!)
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("二前安", "セカンド内野安打\n無死満塁", UIImage(named: "0-1,2,3")!)
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("二前安", "セカンド内野安打\n1死満塁", UIImage(named: "1-1,2,3")!)
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("二前安", "セカンド内野安打\n2死満塁", UIImage(named: "2-1,2,3")!)
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("二前安", "セカンド内野安打\n無死1,2塁", UIImage(named: "0-1,2,4_1")!)
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("二前安", "セカンド内野安打\n1死1,2塁", UIImage(named: "1-1,2,4_1")!)
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("二前安", "セカンド内野安打\n2死1,2塁", UIImage(named: "2-1,2,4_1")!)
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("二前安", "セカンド内野安打\n無死1,3塁", UIImage(named: "0-1,3,4_1")!)
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("二前安", "セカンド内野安打\n1死1,3塁", UIImage(named: "1-1,3,4_1")!)
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("二前安", "セカンド内野安打\n2死1,3塁", UIImage(named: "2-1,3,4_1")!)
            }
            else if Situation.noOutFullBase{
                return ("二前安", "セカンド内野安打\n無死満塁", UIImage(named: "0-1,2,3,4_1")!)
            }
            else if Situation.oneOutFullBase{
                return ("二前安", "セカンド内野安打\n1死満塁", UIImage(named: "1-1,2,3,4_1")!)
            }
            else if Situation.twoOutFullBase{
                return ("二前安", "セカンド内野安打\n2死満塁", UIImage(named: "2-1,2,3,4_1")!)
                        }
        case .thirdHit:
            if Situation.noOutNoRunner {
                return ("三前安", "サード内野安打\n無死1塁", UIImage(named: "0-1")!)
            }else if Situation.oneOutNoRunner{
                return ("三前安", "サード内野安打\n1死1塁", UIImage(named: "1-1")!)
            }
            else if Situation.twoOutNoRunner{
                return ("三前安", "サード内野安打\n2死1塁", UIImage(named: "2-1")!)
            }
            else if Situation.noOutRunnerOnFirst{
                return ("三前安", "サード内野安打\n無死1,2塁", UIImage(named: "0-1,2")!)
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("三前安", "サード内野安打\n1死1,2塁", UIImage(named: "1-1,2")!)
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("三前安", "サード内野安打\n2死1,2塁", UIImage(named: "2-1,2")!)
            }
            else if Situation.noOutRunnerOnSecond{
                return ("三前安", "サード内野安打\n無死1,3塁", UIImage(named: "0-1,3")!)
            }
            else if Situation.oneOutRunnerOnSecond{
                return ( "三前安", "サード内野安打\n1死1,3塁", UIImage(named: "1-1,3")!)
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("三前安", "サード内野安打\n2死1,3塁", UIImage(named: "2-1,3")!)
            }
            else if Situation.noOutRunnerOnThird{
                return ("三前安", "サード内野安打\n無死1塁", UIImage(named: "0-1,4_1")!)
            }
            else if Situation.oneOutRunnerOnThird{
                return ("三前安", "サード内野安打\n1死1塁", UIImage(named: "1-1,4_1")!)
            }
            else if Situation.twoOutRunnerOnThird{
                return ("三前安", "サード内野安打\n2死1塁", UIImage(named: "2-1,4_1")!)
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("三前安", "サード内野安打\n無死満塁", UIImage(named: "0-1,2,3")!)
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("三前安", "サード内野安打\n1死満塁", UIImage(named: "1-1,2,3")!)
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("三前安", "サード内野安打\n2死満塁", UIImage(named: "2-1,2,3")!)
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("三前安", "サード内野安打\n無死1,2塁", UIImage(named: "0-1,2,4_1")!)
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("三前安", "サード内野安打\n1死1,2塁", UIImage(named: "1-1,2,4_1")!)
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("三前安", "サード内野安打\n2死1,2塁", UIImage(named: "2-1,2,4_1")!)
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("三前安", "サード内野安打\n無死1,3塁", UIImage(named: "0-1,3,4_1")!)
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("三前安", "サード内野安打\n1死1,3塁", UIImage(named: "1-1,3,4_1")!)
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("三前安", "サード内野安打\n2死1,3塁", UIImage(named: "2-1,3,4_1")!)
            }
            else if Situation.noOutFullBase{
                return ("三前安", "サード内野安打\n無死満塁", UIImage(named: "0-1,2,3,4_1")!)
            }
            else if Situation.oneOutFullBase{
                return ("三前安", "サード内野安打\n1死満塁", UIImage(named: "1-1,2,3,4_1")!)
            }
            else if Situation.twoOutFullBase{
                return ("三前安", "サード内野安打\n2死満塁", UIImage(named: "2-1,2,3,4_1")!)
                        }
        case .shortHit:
            if Situation.noOutNoRunner {
                return ("遊前安", "ショート内野安打\n無死1塁", UIImage(named: "0-1")!)
            }else if Situation.oneOutNoRunner{
                return ("遊前安", "ショート内野安打\n1死1塁", UIImage(named: "1-1")!)
            }
            else if Situation.twoOutNoRunner{
                return ("遊前安", "ショート内野安打\n2死1塁", UIImage(named: "2-1")!)
                
            }
            else if Situation.noOutRunnerOnFirst{
                return ("遊前安", "ショート内野安打\n無死1,2塁", UIImage(named: "0-1,2")!)
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("遊前安", "ショート内野安打\n1死1,2塁", UIImage(named: "1-1,2")!)
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("遊前安", "ショート内野安打\n2死1,2塁", UIImage(named: "2-1,2")!)
            }
            else if Situation.noOutRunnerOnSecond{
                return ("遊前安", "ショート内野安打\n無死1,3塁", UIImage(named: "0-1,3")!)
            }
            else if Situation.oneOutRunnerOnSecond{
                return ( "遊前安", "ショート内野安打\n1死1,3塁", UIImage(named: "1-1,3")!)
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("遊前安", "ショート内野安打\n2死1,3塁", UIImage(named: "2-1,3")!)
            }
            else if Situation.noOutRunnerOnThird{
                return ("遊前安", "ショート内野安打\n無死1塁", UIImage(named: "0-1,4_1")!)
            }
            else if Situation.oneOutRunnerOnThird{
                return ("遊前安", "ショート内野安打\n1死1塁", UIImage(named: "1-1,4_1")!)
            }
            else if Situation.twoOutRunnerOnThird{
                return ("遊前安", "ショート内野安打\n2死1塁", UIImage(named: "2-1,4_1")!)
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("遊前安", "ショート内野安打\n無死満塁", UIImage(named: "0-1,2,3")!)
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("遊前安", "ショート内野安打\n1死満塁", UIImage(named: "1-1,2,3")!)
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("遊前安", "ショート内野安打\n2死満塁", UIImage(named: "2-1,2,3")!)
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("遊前安", "ショート内野安打\n無死1,2塁", UIImage(named: "0-1,2,4_1")!)
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("遊前安", "ショート内野安打\n1死1,2塁", UIImage(named: "1-1,2,4_1")!)
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("遊前安", "ショート内野安打\n2死1,2塁", UIImage(named: "2-1,2,4_1")!)
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("遊前安", "ショート内野安打\n無死1,3塁", UIImage(named: "0-1,3,4_1")!)
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("遊前安", "ショート内野安打\n1死1,3塁", UIImage(named: "1-1,3,4_1")!)
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("遊前安", "ショート内野安打\n2死1,3塁", UIImage(named: "2-1,3,4_1")!)
            }
            else if Situation.noOutFullBase{
                return ("遊前安", "ショート内野安打\n無死満塁", UIImage(named: "0-1,2,3,4_1")!)
            }
            else if Situation.oneOutFullBase{
                return ("遊前安", "ショート内野安打\n1死満塁", UIImage(named: "1-1,2,3,4_1")!)
            }
            else if Situation.twoOutFullBase{
                return ("遊前安", "ショート内野安打\n2死満塁", UIImage(named: "2-1,2,3,4_1")!)
                        }
        case .leftOverHit:
            if Situation.noOutNoRunner {
                return ("左越二", "レフトオーバーツーベース\n無死2塁", UIImage(named: "0-2")!)
            }else if Situation.oneOutNoRunner{
                  return ("左越二", "レフトオーバーツーベース\n1死2塁", UIImage(named: "1-2")!)
            }
            else if Situation.twoOutNoRunner{
                return ("左越二", "レフトオーバーツーベース\n2死2塁", UIImage(named: "2-2")!)
            }
            else if Situation.noOutRunnerOnFirst{
                return ("左越二", "レフトオーバーツーベース\n無死2,3塁", UIImage(named: "0-2,3")!)
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("左越二", "レフトオーバーツーベース\n1死2,3塁", UIImage(named: "1-2,3")!)
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("左越二", "レフトオーバーツーベース\n２死2死2,3塁", UIImage(named: "2-2,3")!)
            }
            else if Situation.noOutRunnerOnSecond{
                return ("左越二", "レフトオーバーツーベース\n無死2塁", UIImage(named: "0-2,4_1")!)
            }
            else if Situation.oneOutRunnerOnSecond{
                return ("左越二", "レフトオーバーツーベース\n1死2塁", UIImage(named: "1-2,4_1")!)
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("左越二", "レフトオーバーツーベース\n2死2塁", UIImage(named: "2-2,4_1")!)
            }
            else if Situation.noOutRunnerOnThird{
                return ("左越二", "レフトオーバーツーベース\n無死2塁", UIImage(named: "0-2,4_1")!)
            }
            else if Situation.oneOutRunnerOnThird{
                return ("左越二", "レフトオーバーツーベース\n1死2塁", UIImage(named: "1-2,4_1")!)
            }
            else if Situation.twoOutRunnerOnThird{
                return ("左越二", "レフトオーバーツーベース\n2死2塁", UIImage(named: "2-2,4_1")!)
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("左越二", "レフトオーバーツーベース\n無死2,3塁", UIImage(named: "0-2,3,4_1")!)
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("左越二", "レフトオーバーツーベース\n1死2,3塁", UIImage(named: "1-2,3,4_1")!)
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("左越二", "レフトオーバーツーベース\n2死2,3塁", UIImage(named: "2-2,3,4_1")!)
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("左越二", "レフトオーバーツーベース\n無死2,3塁", UIImage(named: "0-2,3,4_1")!)
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("左越二", "レフトオーバーツーベース\n1死2,3塁", UIImage(named: "1-2,3,4_1")!)
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("左越二", "レフトオーバーツーベース\n2死2,3塁", UIImage(named: "2-2,3,4_1")!)
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("左越二", "レフトオーバーツーベース\n無死2塁", UIImage(named: "0-2,4_2")!)
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("左越二", "レフトオーバーツーベース\n1死2塁", UIImage(named: "1-2,4_2")!)
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("左越二", "レフトオーバーツーベース\n2死2塁", UIImage(named: "2-2,4_2")!)
            }
            else if Situation.noOutFullBase{
                return ("左越二", "レフトオーバーツーベース\n無死2,3塁", UIImage(named: "0-2,3,4_2")!)
            }
            else if Situation.oneOutFullBase{
                return ("左越二", "レフトオーバーツーベース\n1死2,3塁", UIImage(named: "1-2,3,4_2")!)
            }
            else if Situation.twoOutFullBase{
                return ("左越二", "レフトオーバーツーベース\n2死2,3塁", UIImage(named: "2-2,3,4_2")!)
                        }

        case .centerOverHit:
            if Situation.noOutNoRunner {
                return ("中越二", "センターオーバーツーベース\n無死2塁", UIImage(named: "0-2")!)
            }else if Situation.oneOutNoRunner{
                return ("中越二", "センターオーバーツーベース\n1死2塁", UIImage(named: "1-2")!)
            }
            else if Situation.twoOutNoRunner{
                return ("中越二", "センターオーバーツーベース\n2死2塁", UIImage(named: "2-2")!)
            }
            else if Situation.noOutRunnerOnFirst{
                return ("中越二", "センターオーバーツーベース\n無死2,3塁", UIImage(named: "0-2,3")!)
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("中越二", "センターオーバーツーベース\n1死2,3塁", UIImage(named: "1-2,3")!)
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("中越二", "センターオーバーツーベース\n２死2死2,3塁", UIImage(named: "2-2,3")!)
            }
            else if Situation.noOutRunnerOnSecond{
                return ("中越二", "センターオーバーツーベース\n無死2塁", UIImage(named: "0-2,4_1")!)
            }
            else if Situation.oneOutRunnerOnSecond{
                return ("中越二", "センターオーバーツーベース\n1死2塁", UIImage(named: "1-2,4_1")!)
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("中越二", "センターオーバーツーベース\n2死2塁", UIImage(named: "2-2,4_1")!)
            }
            else if Situation.noOutRunnerOnThird{
                return ("中越二", "センターオーバーツーベース\n無死2塁", UIImage(named: "0-2,4_1")!)
            }
            else if Situation.oneOutRunnerOnThird{
                return ("中越二", "センターオーバーツーベース\n1死2塁", UIImage(named: "1-2,4_1")!)
            }
            else if Situation.twoOutRunnerOnThird{
                return ("中越二", "センターオーバーツーベース\n2死2塁", UIImage(named: "2-2,4_1")!)
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("中越二", "センターオーバーツーベース\n無死2,3塁", UIImage(named: "0-2,3,4_1")!)
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("中越二", "センターオーバーツーベース\n1死2,3塁", UIImage(named: "1-2,3,4_1")!)
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("中越二", "センターオーバーツーベース\n2死2,3塁", UIImage(named: "2-2,3,4_1")!)
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("中越二", "センターオーバーツーベース\n無死2,3塁", UIImage(named: "0-2,3,4_1")!)
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("中越二", "センターオーバーツーベース\n1死2,3塁", UIImage(named: "1-2,3,4_1")!)
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("中越二", "センターオーバーツーベース\n2死2,3塁", UIImage(named: "2-2,3,4_1")!)
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("中越二", "センターオーバーツーベース\n無死2塁", UIImage(named: "0-2,4_2")!)
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("中越二", "センターオーバーツーベース\n1死2塁", UIImage(named: "1-2,4_2")!)
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("中越二", "センターオーバーツーベース\n2死2塁", UIImage(named: "2-2,4_2")!)
            }
            else if Situation.noOutFullBase{
                return ("中越二", "センターオーバーツーベース\n無死2,3塁", UIImage(named: "0-2,3,4_2")!)
            }
            else if Situation.oneOutFullBase{
                return ("中越二", "センターオーバーツーベース\n1死2,3塁", UIImage(named: "1-2,3,4_2")!)
            }
            else if Situation.twoOutFullBase{
                return ("中越二", "センターオーバーツーベース\n2死2,3塁", UIImage(named: "2-2,3,4_2")!)
                        }

        case .rightOverHit:
            if Situation.noOutNoRunner {
                return ("右越二", "ライトオーバーツーベース\n無死2塁", UIImage(named: "0-2")!)
            }else if Situation.oneOutNoRunner{
                return ("右越二", "ライトオーバーツーベース\n1死2塁", UIImage(named: "1-2")!)
            }
            else if Situation.twoOutNoRunner{
                return ("右越二", "ライトオーバーツーベース\n2死2塁", UIImage(named: "2-2")!)
            }
            else if Situation.noOutRunnerOnFirst{
                return ("右越二", "ライトオーバーツーベース\n無死2,3塁", UIImage(named: "0-2,3")!)
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("右越二", "ライトオーバーツーベース\n1死2,3塁", UIImage(named: "1-2,3")!)
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("右越二", "ライトオーバーツーベース\n２死2死2,3塁", UIImage(named: "2-2,3")!)
            }
            else if Situation.noOutRunnerOnSecond{
                return ("右越二", "ライトオーバーツーベース\n無死2塁", UIImage(named: "0-2,4_1")!)
            }
            else if Situation.oneOutRunnerOnSecond{
                return ("右越二", "ライトオーバーツーベース\n1死2塁", UIImage(named: "1-2,4_1")!)
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("右越二", "ライトオーバーツーベース\n2死2塁", UIImage(named: "2-2,4_1")!)
            }
            else if Situation.noOutRunnerOnThird{
                return ("右越二", "ライトオーバーツーベース\n無死2塁", UIImage(named: "0-2,4_1")!)
            }
            else if Situation.oneOutRunnerOnThird{
                return ("右越二", "ライトオーバーツーベース\n1死2塁", UIImage(named: "1-2,4_1")!)
            }
            else if Situation.twoOutRunnerOnThird{
                return ("右越二", "ライトオーバーツーベース\n2死2塁", UIImage(named: "2-2,4_1")!)
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("右越二", "ライトオーバーツーベース\n無死2,3塁", UIImage(named: "0-2,3,4_1")!)
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("右越二", "ライトオーバーツーベース\n1死2,3塁", UIImage(named: "1-2,3,4_1")!)
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("右越二", "ライトオーバーツーベース\n2死2,3塁", UIImage(named: "2-2,3,4_1")!)            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("右越二", "ライトオーバーツーベース\n無死2,3塁", UIImage(named: "0-2,3,4_1")!)
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("右越二", "ライトオーバーツーベース\n1死2,3塁", UIImage(named: "1-2,3,4_1")!)
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("右越二", "ライトオーバーツーベース\n2死2,3塁", UIImage(named: "2-2,3,4_1")!)
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("右越二", "ライトオーバーツーベース\n無死2塁", UIImage(named: "0-2,4_2")!)
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("右越二", "ライトオーバーツーベース\n1死2塁", UIImage(named: "1-2,4_2")!)
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("右越二", "ライトオーバーツーベース\n2死2塁", UIImage(named: "2-2,4_2")!)
            }
            else if Situation.noOutFullBase{
                return ("右越二", "ライトオーバーツーベース\n無死2,3塁", UIImage(named: "0-2,3,4_2")!)
            }
            else if Situation.oneOutFullBase{
                return ("右越二", "ライトオーバーツーベース\n1死2,3塁", UIImage(named: "1-2,3,4_2")!)
            }
            else if Situation.twoOutFullBase{
                return ("右越二", "ライトオーバーツーベース\n2死2,3塁", UIImage(named: "2-2,3,4_2")!)
                        }

        case .thirdBaseLineHit:
            if Situation.noOutNoRunner {
                return ("三線二", "三塁線ツーベース\n無死2塁", UIImage(named: "0-2")!)
            }else if Situation.oneOutNoRunner{
                return ("三線二", "三塁線ツーベース\n1死2塁", UIImage(named: "1-2")!)
            }
            else if Situation.twoOutNoRunner{
                return ("三線二", "三塁線ツーベース\n2死2塁", UIImage(named: "2-2")!)
            }
            else if Situation.noOutRunnerOnFirst{
                return ("三線二", "三塁線ツーベース\n無死2,3塁", UIImage(named: "0-2,3")!)
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("三線二", "三塁線ツーベース\n1死2,3塁", UIImage(named: "1-2,3")!)
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("三線二", "三塁線ツーベース\n２死2死2,3塁", UIImage(named: "2-2,3")!)
            }
            else if Situation.noOutRunnerOnSecond{
                return ("三線二", "三塁線ツーベース\n無死2塁", UIImage(named: "0-2,4_1")!)
            }
            else if Situation.oneOutRunnerOnSecond{
                return ("三線二", "三塁線ツーベース\n1死2塁", UIImage(named: "1-2,4_1")!)
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("三線二", "三塁線ツーベース\n2死2塁", UIImage(named: "2-2,4_1")!)
            }
            else if Situation.noOutRunnerOnThird{
                return ("三線二", "三塁線ツーベース\n無死2塁", UIImage(named: "0-2,4_1")!)
            }
            else if Situation.oneOutRunnerOnThird{
                return ("三線二", "三塁線ツーベース\n1死2塁", UIImage(named: "1-2,4_1")!)
            }
            else if Situation.twoOutRunnerOnThird{
                return ("三線二", "三塁線ツーベース\n2死2塁", UIImage(named: "2-2,4_1")!)
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("三線二", "三塁線ツーベース\n無死2,3塁", UIImage(named: "0-2,3,4_1")!)
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("三線二", "三塁線ツーベース\n1死2,3塁", UIImage(named: "1-2,3,4_1")!)
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("三線二", "三塁線ツーベース\n2死2,3塁", UIImage(named: "2-2,3,4_1")!)
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("三線二", "三塁線ツーベース\n無死2,3塁", UIImage(named: "0-2,3,4_1")!)
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("三線二", "三塁線ツーベース\n1死2,3塁", UIImage(named: "1-2,3,4_1")!)
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("三線二", "三塁線ツーベース\n2死2,3塁", UIImage(named: "2-2,3,4_1")!)
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("三線二", "三塁線ツーベース\n無死2塁", UIImage(named: "0-2,4_2")!)
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("三線二", "三塁線ツーベース\n1死2塁", UIImage(named: "1-2,4_2")!)
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("三線二", "三塁線ツーベース\n2死2塁", UIImage(named: "2-2,4_2")!)
            }
            else if Situation.noOutFullBase{
                return ("三線二", "三塁線ツーベース\n無死2,3塁", UIImage(named: "0-2,3,4_2")!)
            }
            else if Situation.oneOutFullBase{
                return ("三線二", "三塁線ツーベース\n1死2,3塁", UIImage(named: "1-2,3,4_2")!)
            }
            else if Situation.twoOutFullBase{
                return ("三線二", "三塁線ツーベース\n2死2,3塁", UIImage(named: "2-2,3,4_2")!)
                        }

        case .firstBaseLineHit:
            if Situation.noOutNoRunner {
                return ("一線二", "一塁線ツーベース\n無死2塁", UIImage(named: "0-2")!)
            }else if Situation.oneOutNoRunner{
                return ("一線二", "一塁線ツーベース\n1死2塁", UIImage(named: "1-2")!)
            }
            else if Situation.twoOutNoRunner{
                return ("一線二", "一塁線ツーベース\n2死2塁", UIImage(named: "2-2")!)
            }
            else if Situation.noOutRunnerOnFirst{
                return ("一線二", "一塁線ツーベース\n無死2,3塁", UIImage(named: "0-2,3")!)
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("一線二", "一塁線ツーベース\n1死2,3塁", UIImage(named: "1-2,3")!)
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("一線二", "一塁線ツーベース\n２死2死2,3塁", UIImage(named: "2-2,3")!)
            }
            else if Situation.noOutRunnerOnSecond{
                return ("一線二", "一塁線ツーベース\n無死2塁", UIImage(named: "0-2,4_1")!)
            }
            else if Situation.oneOutRunnerOnSecond{
                return ("一線二", "一塁線ツーベース\n1死2塁", UIImage(named: "1-2,4_1")!)
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("一線二", "一塁線ツーベース\n2死2塁", UIImage(named: "2-2,4_1")!)
            }
            else if Situation.noOutRunnerOnThird{
                return ("一線二", "一塁線ツーベース\n無死2塁", UIImage(named: "0-2,4_1")!)
            }
            else if Situation.oneOutRunnerOnThird{
                return ("一線二", "一塁線ツーベース\n1死2塁", UIImage(named: "1-2,4_1")!)
            }
            else if Situation.twoOutRunnerOnThird{
                return ("一線二", "一塁線ツーベース\n2死2塁", UIImage(named: "2-2,4_1")!)
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("一線二", "一塁線ツーベース\n無死2,3塁", UIImage(named: "0-2,3,4_1")!)
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("一線二", "一塁線ツーベース\n1死2,3塁", UIImage(named: "1-2,3,4_1")!)
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("一線二", "一塁線ツーベース\n2死2,3塁", UIImage(named: "2-2,3,4_1")!)
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("一線二", "一塁線ツーベース\n無死2,3塁", UIImage(named: "0-2,3,4_1")!)
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("一線二", "一塁線ツーベース\n1死2,3塁", UIImage(named: "1-2,3,4_1")!)
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("一線二", "一塁線ツーベース\n2死2,3塁", UIImage(named: "2-2,3,4_1")!)
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("一線二", "一塁線ツーベース\n無死2塁", UIImage(named: "0-2,4_2")!)
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("一線二", "一塁線ツーベース\n1死2塁", UIImage(named: "1-2,4_2")!)
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("一線二", "一塁線ツーベース\n2死2塁", UIImage(named: "2-2,4_2")!)
            }
            else if Situation.noOutFullBase{
                return ("一線二", "一塁線ツーベース\n無死2,3塁", UIImage(named: "0-2,3,4_2")!)
            }
            else if Situation.oneOutFullBase{
                return ("一線二", "一塁線ツーベース\n1死2,3塁", UIImage(named: "1-2,3,4_2")!)            }
            else if Situation.twoOutFullBase{
                return ("一線二", "一塁線ツーベース\n2死2,3塁", UIImage(named: "2-2,3,4_2")!)
                        }
        case .fourBall:
            if Situation.noOutNoRunner {
                return ("四球", "フォアボール\n無死1塁", UIImage(named: "0-1")! )
            }else if Situation.oneOutNoRunner{
                return ("四球", "フォアボール\n1死1塁", UIImage(named: "1-1")! )
            }
            else if Situation.twoOutNoRunner{
                return ("四球", "フォアボール\n2死1塁", UIImage(named: "2-1")! )
            }
            else if Situation.noOutRunnerOnFirst{
                return ("四球", "フォアボール\n無死1,2塁", UIImage(named: "0-1,2")! )
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("四球", "フォアボール\n1死1,2塁", UIImage(named: "1-1,2")! )
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("四球", "フォアボール\n2死1,2塁", UIImage(named: "2-1,2")! )
            }
            else if Situation.noOutRunnerOnSecond{
                return ("四球", "フォアボール\n無死1,2塁", UIImage(named: "0-1,2")! )
            }
            else if Situation.oneOutRunnerOnSecond{
                return ("四球", "フォアボール\n1死1,2塁", UIImage(named: "1-1,2")! )
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("四球", "フォアボール\n2死1,2塁", UIImage(named: "2-1,2")! )
            }
            else if Situation.noOutRunnerOnThird{
                return ("四球", "フォアボール\n無死1,3塁", UIImage(named: "0-1,3")! )
            }
            else if Situation.oneOutRunnerOnThird{
                return ("四球", "フォアボール\n1死1,3塁", UIImage(named: "1-1,3")! )
            }
            else if Situation.twoOutRunnerOnThird{
                return ("四球", "フォアボール\n2死1,3塁", UIImage(named: "2-1,3")! )
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("四球", "フォアボール\n無死満塁", UIImage(named: "0-1,2,3")! )
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("四球", "フォアボール\n1死満塁", UIImage(named: "1-1,2,3")! )
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("四球", "フォアボール\n2死満塁", UIImage(named: "2-1,2,3")! )
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("四球", "フォアボール\n無死満塁", UIImage(named: "0-1,2,3")! )
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("四球", "フォアボール\n1死満塁", UIImage(named: "1-1,2,3")! )
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("四球", "フォアボール\n2死満塁", UIImage(named: "2-1,2,3")! )
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("四球", "フォアボール\n無死満塁", UIImage(named: "0-1,2,3")! )
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("四球", "フォアボール\n1死満塁", UIImage(named: "1-1,2,3")! )
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("四球", "フォアボール\n2死満塁", UIImage(named: "2-1,2,3")! )
            }
            else if Situation.noOutFullBase{
                return ("四球", "フォアボール\n無死満塁", UIImage(named: "0-1,2,3,4_1")! )
            }
            else if Situation.oneOutFullBase{
                return ("四球", "フォアボール\n1死満塁", UIImage(named: "1-1,2,3,4_1")! )
            }
            else if Situation.twoOutFullBase{
                return ("四球", "フォアボール\n2死満塁", UIImage(named: "2-1,2,3,4_1")! )
            }

        case .deadBall:
            if Situation.noOutNoRunner {
                return ("死球", "デッドボール\n無死1塁", UIImage(named: "0-1")! )
            }else if Situation.oneOutNoRunner{
                return ("死球", "デッドボール\n1死1塁", UIImage(named: "1-1")! )
            }
            else if Situation.twoOutNoRunner{
                return ("死球", "デッドボール\n2死1塁", UIImage(named: "2-1")! )
            }
            else if Situation.noOutRunnerOnFirst{
                return ("死球", "デッドボール\n無死1,2塁", UIImage(named: "0-1,2")! )
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("死球", "デッドボール\n1死1,2塁", UIImage(named: "1-1,2")! )
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("死球", "デッドボール\n2死1,2塁", UIImage(named: "2-1,2")! )
            }
            else if Situation.noOutRunnerOnSecond{
                return ("死球", "デッドボール\n無死1,2塁", UIImage(named: "0-1,2")! )
            }
            else if Situation.oneOutRunnerOnSecond{
                return ("死球", "デッドボール\n1死1,2塁", UIImage(named: "1-1,2")! )
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("死球", "デッドボール\n2死1,2塁", UIImage(named: "2-1,2")! )
            }
            else if Situation.noOutRunnerOnThird{
                return ("死球", "デッドボール\n無死1,3塁", UIImage(named: "0-1,3")! )
            }
            else if Situation.oneOutRunnerOnThird{
                return ("死球", "デッドボール\n1死1,3塁", UIImage(named: "1-1,3")! )
            }
            else if Situation.twoOutRunnerOnThird{
                return ("死球", "デッドボール\n2死1,3塁", UIImage(named: "2-1,3")! )
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("死球", "デッドボール\n無死満塁", UIImage(named: "0-1,2,3")! )
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("死球", "デッドボール\n1死満塁", UIImage(named: "1-1,2,3")! )
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("死球", "デッドボール\n2死満塁", UIImage(named: "2-1,2,3")! )
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("死球", "デッドボール\n無死満塁", UIImage(named: "0-1,2,3")! )
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("死球", "デッドボール\n1死満塁", UIImage(named: "1-1,2,3")! )
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("死球", "デッドボール\n2死満塁", UIImage(named: "2-1,2,3")! )
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("死球", "デッドボール\n無死満塁", UIImage(named: "0-1,2,3")! )
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("死球", "デッドボール\n1死満塁", UIImage(named: "1-1,2,3")! )
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("死球", "デッドボール\n2死満塁", UIImage(named: "2-1,2,3")! )
            }
            else if Situation.noOutFullBase{
                return ("死球", "デッドボール\n無死満塁", UIImage(named: "0-1,2,3,4_1")! )
            }
            else if Situation.oneOutFullBase{
                return ("死球", "デッドボール\n1死満塁", UIImage(named: "1-1,2,3,4_1")! )
            }
            else if Situation.twoOutFullBase{
                return ("死球", "デッドボール\n2死満塁", UIImage(named: "2-1,2,3,4_1")! )
            }
        default:
             return ("", "", UIImage(named: "")! )
        }
        //なんかエラーでるから仮置き
         return ("", "", UIImage(named: "")! )
    }
    
    func childOptionTwo() -> (resultTitle: String,resultString: String, resultImage: UIImage){
        switch self {
            
        case .pitcherFly:
            if Situation.oneOutNoRunner {
                return ("投直", "ピッチャーライナー\n２死走者なし", UIImage(named: "2-0")!)
            }else if Situation.twoOutNoRunner{
                return ("投直", "ピッチャーライナー\n３アウトチェンジ", UIImage(named: "3-0")!)
            }
            else if Situation.noOutNoRunner{
                return ("投直", "ピッチャーライナー\n1死走者なし", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnerOnFirst{
                return ("投直", "ピッチャーライナー\n1死1塁", UIImage(named: "1-1")!)
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("投直", "ピッチャーライナー\n2死走者1塁", UIImage(named: "2-1")!)
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("投直", "ピッチャーライナー\n3アウトチェンジ", UIImage(named: "3-1")!)
            }
            else if Situation.noOutRunnerOnSecond{
                return ("投直", "ピッチャーライナー\n1死2塁", UIImage(named: "1-2")!)
            }
            else if Situation.oneOutRunnerOnSecond{
                return ("投直", "ピッチャーライナー\n2死2塁", UIImage(named: "2-2")!)
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("投直", "ピッチャーライナー\n3アウトチェンジ", UIImage(named: "3-2")!)
            }
            else if Situation.noOutRunnerOnThird{
                return ("投直", "ピッチャーライナー\n1死3塁", UIImage(named: "1-3")!)
            }
            else if Situation.oneOutRunnerOnThird{
                return ("投直", "ピッチャーライナー\n2死3塁", UIImage(named: "2-3")!)
            }
            else if Situation.twoOutRunnerOnThird{
                return ("投直", "ピッチャーライナー\n3アウトチェンジ", UIImage(named: "3-3")!)
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("投直", "ピッチャーライナー\n1死走者1,2塁", UIImage(named: "1-1,2")!)
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("投直", "ピッチャーライナー\n2死1,2塁", UIImage(named: "2-1,2")!)
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("投直", "ピッチャーライナー\n3アウトチェンジ", UIImage(named: "3-1,2")!)
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("投直", "ピッチャーライナー\n1死1,3塁", UIImage(named: "1-1,3")!)
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("投直", "ピッチャーライナー\n2死1,３塁", UIImage(named: "2-1,3")!)
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("投直", "ピッチャーライナー\n3アウトチェンジ", UIImage(named: "3-1,3")!)
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("投直", "ピッチャーライナー\n1死2,3塁", UIImage(named: "1-2,3")!)
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("投直", "ピッチャーライナー\n2死2,3塁", UIImage(named: "2-2,3")!)
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("投直", "ピッチャーライナー\n3アウトチェンジ", UIImage(named: "3-2,3")!)
            }
            else if Situation.noOutFullBase{
                return ("投直", "ピッチャーライナー\n1死満塁", UIImage(named: "1-1,2,3")!)
            }
            else if Situation.oneOutFullBase{
                return ("投直", "ピッチャーライナー\n2死満塁", UIImage(named: "2-1,2,3")!)
            }
            else if Situation.twoOutFullBase{
                return ("投直", "ピッチャーライナー\n3アウトチェンジ", UIImage(named: "3-1,2,3")!)
            }
        case .catcherFly:
            return ("", "", UIImage(named: "")! )

        case .firstFly:
            if Situation.noOutNoRunner {
                return ("一直", "ファーストライナー\n1死走者なし", UIImage(named: "1-0")! )
            }else if Situation.oneOutNoRunner{
                return ("一直", "ファーストライナー\n2死走者なし", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutNoRunner{
                return ("一直", "ファーストライナー\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnerOnFirst{
                return ("一直", "ファーストライナー\n1死1塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("一直", "ファーストライナー\n2死1塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("一直", "ファーストライナー\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnerOnSecond{
                return ("一直", "ファーストライナー\n1死2塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnerOnSecond{
                return ("一直", "ファーストライナー\n2死2塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("一直", "ファーストライナー\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnerOnThird{
                return ("一直", "ファーストライナー\n1死3塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnerOnThird{
                return ("一直", "ファーストライナー\n2死3塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnerOnThird{
                return ("一直", "ファーストライナー\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("一直", "ファーストライナー\n1死1,2塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("一直", "ファーストライナー\n2死1,2塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("一直", "ファーストライナー\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("一直", "ファーストライナー\n1死1,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("一直", "ファーストライナー\n2死1,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("一直", "ファーストライナー\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("一直", "ファーストライナー\n1死2,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("一直", "ファーストライナー\n2死2,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("一直", "ファーストライナー\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutFullBase{
                return ("一直", "ファーストライナー\n1死満塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutFullBase{
                return ("一直", "ファーストライナー\n2死満塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutFullBase{
                return ("一直", "ファーストライナー\n3アウトチェンジ", UIImage(named: "1-0")! )
            }

        case .secondFly:
            if Situation.noOutNoRunner {
                return ("二直", "セカンドライナー\n1死走者なし", UIImage(named: "1-0")! )
            }else if Situation.oneOutNoRunner{
                return ("二直", "セカンドライナー\n2死走者なし", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutNoRunner{
                return ("二直", "セカンドライナー\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnerOnFirst{
                return ("二直", "セカンドライナー\n1死1塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("二直", "セカンドライナー\n2死1塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("二直", "セカンドライナー\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnerOnSecond{
                return ("二飛", "セカンドライナー\n1死2塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnerOnSecond{
                return ("二飛", "セカンドライナー\n2死2塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("二直", "セカンドライナー\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnerOnThird{
                return ("二直", "セカンドライナー\n1死3塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnerOnThird{
                return ("二直", "セカンドライナー\n2死3塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnerOnThird{
                return ("二直", "セカンドライナー\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("二直", "セカンドライナー\n1死1,2塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("二直", "セカンドライナー\n2死1,2塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("二直", "セカンドライナー\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("二直", "セカンドライナー\n1死1,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("二直", "セカンドライナー\n2死1,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("二直", "セカンドライナー\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("二直", "セカンドライナー\n1死2,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("二直", "セカンドライナー\n2死2,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("二直", "セカンドライナー\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutFullBase{
                return ("二直", "セカンドライナー\n1死満塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutFullBase{
                return ("二直", "セカンドライナー\n2死満塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutFullBase{
                return ("二直", "セカンドライナー\n3アウトチェンジ", UIImage(named: "1-0")! )
            }

        case .thirdFly:
            if Situation.noOutNoRunner {
                return ("三直", "サードライナー\n1死走者なし", UIImage(named: "1-0")! )
            }else if Situation.oneOutNoRunner{
                return ("三直", "サードライナー\n2死走者なし", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutNoRunner{
                return ("三直", "サードライナー\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnerOnFirst{
                return ("三直", "サードライナー\n1死1,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("三直", "サードライナー\n2死1,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("三直", "サードフライ\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnerOnSecond{
                return ("三直", "サードライナー\n1死2塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnerOnSecond{
                return ("三直", "サードライナー\n2死2塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("三直", "サードライナー\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnerOnThird{
                return ("三直", "サードライナー\n1死3塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnerOnThird{
                return ("三直", "サードライナー\n2死3塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnerOnThird{
                return ("三直", "サードライナー\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("三直", "サードライナー\n1死1,2塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("三直", "サードライナー\n2死1,2塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("三直", "サードライナー\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("三直", "サードライナー\n1死1,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("三直", "サードライナー\n2死1,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("三直", "サードライナー\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("三直", "サードライナー\n1死2,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("三直", "サードライナー\n2死2,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("三直", "サードライナー\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutFullBase{
                return ("三直", "サードライナー\n1死満塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutFullBase{
                return ("三直", "サードライナー\n2死満塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutFullBase{
                return ("三直", "サードライナー\n3アウトチェンジ", UIImage(named: "1-0")! )
            }

        case .shortFly:
            if Situation.noOutNoRunner {
                return ("遊直", "ショートライナー\n一死なし", UIImage(named: "1-0")! )
            }else if Situation.oneOutNoRunner{
                return ("遊直", "ショートライナー\n2死走者なし", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutNoRunner{
                return ("遊直", "ショートライナー\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnerOnFirst{
                return ("遊直", "ショートライナー\n1死1塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("遊直", "ショートライナー\n2死1塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("遊飛", "ショートライナー\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnerOnSecond{
                return ("遊直", "ショートライナー\n1死2塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnerOnSecond{
                return ("遊直", "ショートライナー\n2死2塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("遊直", "ショートライナー\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnerOnThird{
                return ("遊直", "ショートライナー\n1死3塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnerOnThird{
                return ("遊直", "ショートライナー\n2死3塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnerOnThird{
                return ("遊直", "ショートライナー\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("遊直", "ショートライナー\n1死1,2塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("遊直", "ショートライナー\n2死1,2塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("遊直", "ショートライナー\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("遊直", "ショートライナー\n1死1,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("遊直", "ショートライナー\n2死1,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("遊直", "ショートライナー\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("遊直", "ショートライナー\n1死2,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("遊直", "ショートライナー\n2死2,3塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("遊直", "ショートライナー\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
            else if Situation.noOutFullBase{
                return ("遊直", "ショートライナー\n1死満塁", UIImage(named: "1-0")! )
            }
            else if Situation.oneOutFullBase{
                return ("遊直", "ショートライナー\n2死満塁", UIImage(named: "1-0")! )
            }
            else if Situation.twoOutFullBase{
                return ("遊直", "ショートライナー\n3アウトチェンジ", UIImage(named: "1-0")! )
            }
        case .leftFly:
            if Situation.noOutNoRunner {
                return ("左直", "レフトライナー\n1死走者なし", UIImage(named: "1-0")!)
            }else if Situation.oneOutNoRunner{
                return ("左直", "レフトライナー\n2死走者なし", UIImage(named: "2-0")! )
            }
            else if Situation.twoOutNoRunner{
                return ("左直", "レフトライナー\n3アウトチェンジ", UIImage(named: "3-0")! )
            }
            else if Situation.noOutRunnerOnFirst{
                return ("左直", "レフトライナー\n1死1塁", UIImage(named: "1-1")! )
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("左直", "レフトライナー\n2死1塁", UIImage(named: "2-1")! )
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("左直", "レフトライナー\n3アウトチェンジ", UIImage(named: "3-1")! )
            }
            else if Situation.noOutRunnerOnSecond{
                return ("左直", "レフトライナー\n1死2塁", UIImage(named: "1-2")! )
            }
            else if Situation.oneOutRunnerOnSecond{
                return ("左直", "レフトライナー\n2死2塁", UIImage(named: "2-2")! )
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("左直", "レフトライナー\n3アウトチェンジ", UIImage(named: "3-2")! )
            }
            else if Situation.noOutRunnerOnThird{
                return ("左犠直", "ライナー、タッチアップ\n1死走者なし\n1点", UIImage(named: "1-4_1")! )
            }
            else if Situation.oneOutRunnerOnThird{
                return ("左犠直", "ライナー、タッチアップ\n2死走者なし\n1点", UIImage(named: "2-4_1")! )
            }
            else if Situation.twoOutRunnerOnThird{
                return ("左直", "レフトライナー\n3アウトチェンジ", UIImage(named: "3-3")! )
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("左直", "レフトライナー\n1死1,2塁", UIImage(named: "1-1,2")! )
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("左直", "レフトライナー\n2死1,2塁", UIImage(named: "2-1,2")! )
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("左直", "レフトライナー\n3アウトチェンジ", UIImage(named: "3-1,2")! )
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("左犠直", "ライナー、タッチアップ\n1死1塁\n1点", UIImage(named: "1-1,4_1")! )
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("左犠直", "ライナー、タッチアップ\n2死1塁\n1点", UIImage(named: "2-1,4_1")! )
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("左直", "レフトライナー\n3アウトチェンジ", UIImage(named: "3-1,3")! )
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("左犠直", "ライナー、タッチアップ\n1死2塁\n1点", UIImage(named: "1-2,4_1")! )
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("左犠直", "ライナー、タッチアップ\n2死2塁\n1点", UIImage(named: "2-2,4_1")! )
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("左直", "レフトライナー\n3アウトチェンジ", UIImage(named: "3-2,3")! )
            }
            else if Situation.noOutFullBase{
                return ("左犠直", "ライナー、タッチアップ\n1死1,2塁\n1点", UIImage(named: "1-1,2,4_1")! )
            }
            else if Situation.oneOutFullBase{
                return ("左犠直", "ライナー、タッチアップ\n2死1,2塁\n1点", UIImage(named: "2-1,2,4_1")! )
            }
            else if Situation.twoOutFullBase{
                return ("左直", "レフトライナー\n3アウトチェンジ", UIImage(named: "3-1,2,3")! )
            }
        case .centerFly:
            if Situation.noOutNoRunner {
                return ("中直", "センターライナー\n一死走者なし", UIImage(named: "1-0")! )
            }else if Situation.oneOutNoRunner{
                return ("中直", "センターライナー\n2死走者なし", UIImage(named: "2-0")! )
            }
            else if Situation.twoOutNoRunner{
                return ("中直", "センターライナー\n3アウトチェンジ", UIImage(named: "3-0")! )
            }
            else if Situation.noOutRunnerOnFirst{
                return ("中直", "センターライナー\n1死1塁", UIImage(named: "1-1")! )
            }
            else if Situation.oneOutRunnerOnFirst{
                return("中直", "センターライナー\n2死1塁", UIImage(named: "2-1")! )
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("中直", "センターライナー\n3アウトチェンジ", UIImage(named: "3-1")! )
            }
            else if Situation.noOutRunnerOnSecond{
                return ("中直", "センターライナー\n1死2塁", UIImage(named: "1-2")! )
            }
            else if Situation.oneOutRunnerOnSecond{
                return ("中直", "センターライナー\n2死2塁", UIImage(named: "2-2")! )
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("中直", "センターライナー\n3アウトチェンジ", UIImage(named: "3-2")! )
            }
            else if Situation.noOutRunnerOnThird{
                return ("中犠直", "ライナー、タッチアップ\n1死走者なし\n1点", UIImage(named: "1-4_1")! )
            }
            else if Situation.oneOutRunnerOnThird{
                return ("中犠直", "ライナー、タッチアップ\n2死走者なし\n1点", UIImage(named: "2-4_1")! )
            }
            else if Situation.twoOutRunnerOnThird{
                return ("中直", "センターライナー\n3アウトチェンジ", UIImage(named: "3-3")! )
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("中直", "センターライナー\n1死1,2塁", UIImage(named: "1-1,2")! )
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("中直", "センターライナー\n2死1,2塁", UIImage(named: "2-1,2")! )
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("中飛", "センターライナー\n3アウトチェンジ", UIImage(named: "3-1,2")! )
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("中犠直", "ライナー、タッチアップ\n1死1塁\n1点", UIImage(named: "1-1,4_1")! )
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("中犠直", "ライナー、タッチアップ\n2死1塁\n1点", UIImage(named: "2-1,4_1")! )
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("中直", "センターライナー\n3アウトチェンジ", UIImage(named: "3-1,3")! )
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("中犠直", "ライナー、タッチアップ\n1死2塁\n1点", UIImage(named: "1-2,4_1")! )
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("中犠直", "ライナー、タッチアップ\n2死2塁\n1点", UIImage(named: "2-2,4_1")! )
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("中直", "センターライナー\n3アウトチェンジ", UIImage(named: "3-2,3")! )
            }
            else if Situation.noOutFullBase{
                return ("中犠直", "ライナー、タッチアップ\n1死1,2塁", UIImage(named: "1-1,2,4_1")! )
            }
            else if Situation.oneOutFullBase{
                return ("中犠直", "ライナー、タッチアップ\n2死1,2塁", UIImage(named: "2-1,2,4_1")! )
            }
            else if Situation.twoOutFullBase{
                return ("中直", "センターライナー\n3アウトチェンジ", UIImage(named: "3-1,2,3")! )
            }
        case .rightFly:
            if Situation.noOutNoRunner {
                return ("右直", "ライトライナー\n1死走者なし", UIImage(named: "1-0")! )
            }else if Situation.oneOutNoRunner{
                return ("右直", "ライトライナー\n2死走者なし", UIImage(named: "2-0")! )
            }
            else if Situation.twoOutNoRunner{
                return ("右直", "ライトライナー\n3アウトチェンジ", UIImage(named: "3-0")! )
            }
            else if Situation.noOutRunnerOnFirst{
                return ("右直", "ライトライナー\n1死1塁", UIImage(named: "1-1")! )
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("右直", "ライトライナー\n2死1塁", UIImage(named: "2-1")! )
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("右直", "ライトライナー\n3アウトチェンジ", UIImage(named: "3-1")! )
            }
            else if Situation.noOutRunnerOnSecond{
                return ("右直", "ライトライナー\n1死2塁", UIImage(named: "1-2")! )
            }
            else if Situation.oneOutRunnerOnSecond{
                return ("右直", "ライトライナー\n2死2塁", UIImage(named: "2-2")! )
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("右直", "ライトライナー\n3アウトチェンジ", UIImage(named: "3-2")! )
            }
            else if Situation.noOutRunnerOnThird{
                return ("右犠直", "ライナー、タッチアップ\n1死走者なし\n1点", UIImage(named: "1-4_1")! )
            }
            else if Situation.oneOutRunnerOnThird{
                return ("右犠直", "ライナー、タッチアップ\n2死走者なし\n1点", UIImage(named: "2-4_1")! )
            }
            else if Situation.twoOutRunnerOnThird{
                return ("右直", "ライトライナー\n3アウトチェンジ", UIImage(named: "3-3")! )
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("右直", "ライトライナー\n1死1,2塁", UIImage(named: "1-1,2")! )
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("右直", "ライトライナー\n2死1,2塁", UIImage(named: "2-1,2")! )
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("右直", "ライトライナー\n3アウトチェンジ", UIImage(named: "3-1,2")! )
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("右直", "ライナー、タッチアップ\n1死1塁\n1点", UIImage(named: "1-1,4_1")! )
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("右犠直", "ライナー、タッチアップ\n2死1塁\n1点", UIImage(named: "2-1,4_1")! )
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("右直", "ライトライナー\n3アウトチェンジ", UIImage(named: "3-1,3")! )
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                //oohashi:23塁のがいいか？
                return ("右犠直", "ライナー、タッチアップ\n1死2塁\n1点", UIImage(named: "1-2,4_1")! )
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("右犠直", "ライナー、タッチアップ\n2死2塁\n1点", UIImage(named: "2-2,4_1")! )
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("右直", "ライトライナー\n3アウトチェンジ", UIImage(named: "3-2,3")! )
            }
            else if Situation.noOutFullBase{
                //13塁のがいいか
                return ("右犠直", "ライナー、タッチアップ\n1死1,2塁\n1点", UIImage(named: "1-1,2,4_1")! )
            }
            else if Situation.oneOutFullBase{
                return ("右犠直", "ライナー、タッチアップ\n2死1,2塁\n1点", UIImage(named: "2-1,2,4_1")! )
            }
            else if Situation.twoOutFullBase{
                return ("右直", "ライトライナー\n3アウトチェンジ", UIImage(named: "3-1,2,3")! )
            }
        case .pitcherGoro:
            return ("", "", UIImage(named: "")! )
        case .struckOutSwinging:
            return ("", "", UIImage(named: "")! )
        case .missedStruckOut:
            return ("", "", UIImage(named: "")! )
        case .leftIntermediateHit:
            return ("", "", UIImage(named: "")! )
        case .leftSingleHit:
            return ("", "", UIImage(named: "")! )
        case .rightIntermediateHit:
            return ("", "", UIImage(named: "")! )
        case .pitcherOrCatcherHit:
            if Situation.noOutNoRunner {
                return ("捕前安", "キャッチャー内野安打\n無死1塁", UIImage(named: "0-1")!)
            }else if Situation.oneOutNoRunner{
                return ("捕前安", "キャッチャー内野安打\n1死1塁", UIImage(named: "1-1")!)
            }
            else if Situation.twoOutNoRunner{
                return ("捕前安", "キャッチャー内野安打\n2死1塁", UIImage(named: "2-1")!)
            }
            else if Situation.noOutRunnerOnFirst{
                return ("捕前安", "キャッチャー内野安打\n無死1,2塁", UIImage(named: "0-1,2")!)
            }
            else if Situation.oneOutRunnerOnFirst{
                return ("捕前安", "キャッチャー内野安打\n1死1,2塁", UIImage(named: "1-1,2")!)
            }
            else if Situation.twoOutRunnerOnFirst{
                return ("捕前安", "キャッチャー内野安打\n2死1,2塁", UIImage(named: "2-1,2")!)
            }
            else if Situation.noOutRunnerOnSecond{
                return ("捕前安", "キャッチャー内野安打\n無死1,3塁", UIImage(named: "0-1,3")!)
            }
            else if Situation.oneOutRunnerOnSecond{
                return ( "捕前安", "キャッチャー内野安打\n1死1,3塁", UIImage(named: "1-1,3")!)
            }
            else if Situation.twoOutRunnerOnSecond{
                return ("捕前安", "キャッチャー内野安打\n2死1,3塁", UIImage(named: "2-1,3")!)
                
            }
            else if Situation.noOutRunnerOnThird{
                return ("捕前安", "キャッチャー内野安打\n無死1塁", UIImage(named: "0-1,4_1")!)
            }
            else if Situation.oneOutRunnerOnThird{
                return ("捕前安", "キャッチャー内野安打\n1死1塁", UIImage(named: "1-1,4_1")!)
            }
            else if Situation.twoOutRunnerOnThird{
                return ("捕前安", "キャッチャー内野安打\n2死1塁", UIImage(named: "2-1,4_1")!)
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return ("捕前安", "キャッチャー内野安打\n無死満塁", UIImage(named: "0-1,2,3")!)
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return ("捕前安", "キャッチャー内野安打\n1死満塁", UIImage(named: "1-1,2,3")!)
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return ("捕前安", "キャッチャー内野安打\n2死満塁", UIImage(named: "2-1,2,3")!)
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return ("捕前安", "キャッチャー内野安打\n無死1,2塁", UIImage(named: "0-1,2,4_1")!)
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return ("捕前安", "キャッチャー内野安打\n1死1,2塁", UIImage(named: "1-1,2,4_1")!)
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return ("捕前安", "キャッチャー内野安打\n2死1,2塁", UIImage(named: "2-1,2,4_1")!)
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return ("捕前安", "キャッチャー内野安打\n無死1,3塁", UIImage(named: "0-1,3,4_1")!)
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return ("捕前安", "キャッチャー内野安打\n1死1,3塁", UIImage(named: "1-1,3,4_1")!)
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return ("捕前安", "キャッチャー内野安打\n2死1,3塁", UIImage(named: "2-1,3,4_1")!)
            }
            else if Situation.noOutFullBase{
                return ("捕前安", "キャッチャー内野安打\n無死満塁", UIImage(named: "0-1,2,3,4_1")!)
            }
            else if Situation.oneOutFullBase{
                return ("捕前安", "キャッチャー内野安打\n1死満塁", UIImage(named: "1-1,2,3,4_1")!)
            }
            else if Situation.twoOutFullBase{
                return ("捕前安", "キャッチャー内野安打\n2死満塁", UIImage(named: "2-1,2,3,4_1")!)
                
            }
        case .firstHit:
            return ("", "", UIImage(named: "")! )
        case .secondHit:
            return ("", "", UIImage(named: "")! )
        case .thirdHit:
            return ("", "", UIImage(named: "")! )
        case .shortHit:
            return ("", "", UIImage(named: "")! )
        case .centerSingleHit:
            return ("", "", UIImage(named: "")! )
        case .rightSingleHit:
            return ("", "", UIImage(named: "")! )
        case .leftOverHit:
            return ("", "", UIImage(named: "")! )
        case .centerOverHit:
            return ("", "", UIImage(named: "")! )
        case .rightOverHit:
            return ("", "", UIImage(named: "")! )
        case .thirdBaseLineHit:
            return ("", "", UIImage(named: "")! )
        case .firstBaseLineHit:
            return ("", "", UIImage(named: "")! )
        case .fourBall:
            return ("", "", UIImage(named: "")! )
        case .deadBall:
            return ("", "", UIImage(named: "")! )
        }
        
        //なんかエラーでるから仮置き
        return ("", "", UIImage(named: "")! )
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
        case .leftIntermediateHit:
            return ""
        case .leftSingleHit:
            return ""
        case .rightIntermediateHit:
            return ""
        case .pitcherOrCatcherHit:
            return ""
        case .firstHit:
            return ""
        case .secondHit:
            return ""
        case .thirdHit:
            return ""
        case .shortHit:
            return ""
        case .centerSingleHit:
            return ""
        case .rightSingleHit:
            return ""
        case .leftOverHit:
            return ""
        case .centerOverHit:
            return ""
        case .rightOverHit:
            return ""
        case .thirdBaseLineHit:
            return ""
        case .firstBaseLineHit:
            return ""
        case .fourBall:
            return ""
        case .deadBall:
            return ""
        }
        
        //なんかエラーでるから仮置き
        return ""
    }
    
    //ボタンを押したときの関数3つ
    //oohashi: 得点入った時アニメーション処理
    func childButtonTapedOne() -> String{
        switch self{
        case .pitcherFly, .catcherFly, .firstFly, .secondFly, .thirdFly, .shortFly, .leftFly, .centerFly, .rightFly, .struckOutSwinging, .missedStruckOut:
           batterOut()
        
//        case .pitcherGoro:
//
//        case .struckOutSwinging:
//
//        case .missedStruckOut:
//
//        case .leftIntermediateHit:
//
//        case .leftSingleHit:
//
//
//        case .rightIntermediateHit:
//
//        case .pitcherOrCatcherHit:
//
//        case .firstHit:
//
//        case .secondHit:
//
//        case .thirdHit:
//
//        case .shortHit:
//
//        case .centerSingleHit:
//
//        case .rightSingleHit:
//
//        case .leftOverHit:
//
//        case .centerOverHit:
//
//        case .RightOverHit:
//            retur
//        case .thirdBaseLineHit:
//
//        case .firstBaselineHit:
//
//        case .fourBall:
//
//        case .deadBall:
        default:
            break
        }
        return Situation.result.childOptionOne().resultTitle
    }
    
    func batterOut(){
        if Situation.topOrBottom == "Top"{
            if Situation.topBattingOrder == 8{
                Situation.topBattingOrder = 0
            }else{
                Situation.topBattingOrder += 1
            }
            if Situation.outCounts == 2{
                Situation.outCounts = 0
                Situation.topOrBottom = "Bottom"
            }else{
                Situation.outCounts += 1
            }
        }else{
            if Situation.bottomBattingOrder == 8{
                Situation.bottomBattingOrder = 0
            }else{
                Situation.bottomBattingOrder += 1
            }
            if Situation.outCounts == 2{
                Situation.outCounts = 0
                Situation.inning += 1
                Situation.topOrBottom = "top"
            }else{
                Situation.outCounts += 1
            }
        }
    }
    
    func batterOnBase(){
        if Situation.topOrBottom == "Top"{
            let ranner:FIRPlayer = Situation.topBattersArray[Situation.topBattingOrder]
            Situation.topBattingOrder += 1
        }
    }
    
    func noRunner(){
        
    }

}



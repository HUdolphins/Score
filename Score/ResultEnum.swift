
import Foundation

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
    
    
    
    
    func childOptionOne() -> String{
        switch self {
        case .pitcherFly:
            if Situation.oneOutNoRunner {
                return "ピッチャーフライ\n２死走者なし"
            }else if Situation.twoOutNoRunner{
                return "ピッチャーフライ\n３アウトチェンジ"
            }
            else if Situation.noOutNoRunner{
                return "ピッチャーフライ\n1死走者なし"
            }
            else if Situation.noOutRunnerOnFirst{
                return "ピッチャーフライ\n1死1塁"
            }
            else if Situation.oneOutRunnerOnFirst{
                return "ピッチャーフライ\n2死走者1塁"
            }
            else if Situation.twoOutRunnerOnFirst{
                return "ピッチャーフライ\n3アウトチェンジ"
            }
            else if Situation.noOutRunnerOnSecond{
                return "ピッチャーフライ\n1死2塁"
            }
            else if Situation.oneOutRunnerOnSecond{
                return "ピッチャーフライ\n2死2塁"
            }
            else if Situation.twoOutRunnerOnSecond{
                return "ピッチャーフライ\n3アウトチェンジ"
            }
            else if Situation.noOutRunnerOnThird{
                return "ピッチャーフライ\n1死3塁"
            }
            else if Situation.oneOutRunnerOnThird{
                return "ピッチャーフライ\n2死3塁"
            }
            else if Situation.twoOutRunnerOnThird{
                return "ピッチャーフライ\n3アウトチェンジ"
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return "ピッチャーフライ\n1死走者1,2塁"
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return "ピッチャーフライ\n2死1,2塁"
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return "ピッチャーフライ\n3アウトチェンジ"
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return "ピッチャーフライ\n1死1,3塁"
            }
            else if Situation.oneOutRunnersOnFirstAndThird{
                return "ピッチャーフライ\n2死1,３塁"
            }
            else if Situation.twoOutRunnersOnFirstAndThird{
                return "ピッチャーフライ\n3アウトチェンジ"
            }
            else if Situation.noOutRunnersOnSecondAndThird{
                return "ピッチャーフライ\n1死2,3塁"
            }
            else if Situation.oneOutRunnersOnSecondAndThird{
                return "ピッチャーフライ\n2死2,3塁"
            }
            else if Situation.twoOutRunnersOnSecondAndThird{
                return "ピッチャーフライ\n3アウトチェンジ"
            }
            else if Situation.noOutFullBase{
                return "ピッチャーフライ\n1死満塁"
            }
            else if Situation.oneOutFullBase{
                return "ピッチャーフライ\n2死満塁"
            }
            else if Situation.twoOutFullBase{
                return "ピッチャーフライ\n3アウトチェンジ"
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
        default:
            return ""
        }
        //なんかエラーでるから仮置き
        return ""
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

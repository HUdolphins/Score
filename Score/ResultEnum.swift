
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
            }else if Situation.twoOutsNoRunner{
                return "ピッチャーフライ\n３アウトチェンジ"
            }
            else if Situation.noOutNoRunner{
                return "ピッチャーフライ\n1死走者なし"
            }
            else if Situation.noOutRunnerOnFirst{
                return "ピッチャーフライ\n1死走者1塁"
            }
            else if Situation.oneOutRunnerOnFirst{
                return "ピッチャーフライ\n2死走者1塁"
            }
            else if Situation.twoOutRunnerOnFirst{
                return "ピッチャーフライ\n3アウトチェンジ"
            }
            else if Situation.noOutRunnerOnSecond{
                return "ピッチャーフライ\n1死走者2塁"
            }
            else if Situation.oneOutRunnerOnSecond{
                return "ピッチャーフライ\n2死走者2塁"
            }
            else if Situation.twoOutRunnerOnSecond{
                return "ピッチャーフライ\n3アウトチェンジ"
            }
            else if Situation.noOutRunnerOnThird{
                return "ピッチャーフライ\n1死走者3塁"
            }
            else if Situation.oneOutRunnerOnThird{
                return "ピッチャーフライ\n2死走者3塁"
            }
            else if Situation.twoOutRunnerOnThird{
                return "ピッチャーフライ\n3アウトチェンジ"
            }
            else if Situation.noOutRunnersOnFirstAndSecond{
                return "ピッチャーフライ\n1死走者1塁2塁"
            }
            else if Situation.oneOutRunnersOnFirstAndSecond{
                return "ピッチャーフライ\n2死走者1塁2塁"
            }
            else if Situation.twoOutRunnersOnFirstAndSecond{
                return "ピッチャーフライ\n3アウトチェンジ"
            }
            else if Situation.noOutRunnersOnFirstAndThird{
                return "ピッチャーフライ\n1死走者1塁3塁"
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
            }else if Situation.twoOutsNoRunner{
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
            else if Situation.twoOutsNoRunner{
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
            else if Situation.twoOutsNoRunner{
                Situation.outCounts = 0
                if Situation.topOrBottom == "Top"{
                    Situation.topOrBottom = "Bottom"
                }
                else{
                    Situation.inning += 1
                    Situation.topOrBottom = "Top"
                }
            }
            
        //case .catcherFly
        
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
        case .catcherFly:
            return
        }
    }

}

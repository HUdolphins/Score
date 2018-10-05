
import Foundation

enum ResultEnum: Int{
    case pitcherFly
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
                return "ピッチャーフライ/n２死走者なし"
            }else if Situation.twoOutsNoRunner{
                return "ピッチャーフライ/n３アウトチェンジ"
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
    
    
    
}


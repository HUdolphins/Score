
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
                return "ピッチャーフライ/n２死走者なし"
            }else if Situation.twoOutsNoRunner{
                return "ピッチャーフライ/n３アウトチェンジ"
            }
            
            
        case .catcherFly:
            <#code#>
        case .firstFly:
            <#code#>
        case .secondFly:
            <#code#>
        case .thirdFly:
            <#code#>
        case .shortFly:
            <#code#>
        case .leftFly:
            <#code#>
        case .centerFly:
            <#code#>
        case .rightFly:
            <#code#>
        case .pitcherGoro:
            <#code#>
        case .pitcherHit:
            <#code#>
        case .struckOut:
            <#code#>
        }
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
            <#code#>
        case .firstFly:
            <#code#>
        case .secondFly:
            <#code#>
        case .thirdFly:
            <#code#>
        case .shortFly:
            <#code#>
        case .leftFly:
            <#code#>
        case .centerFly:
            <#code#>
        case .rightFly:
            <#code#>
        case .pitcherGoro:
            <#code#>
        case .pitcherHit:
            <#code#>
        case .struckOut:
            <#code#>
        }
    }
    
    func childOptionThree() -> String{
        switch self{
            
        case .pitcherFly:
            if Situation.oneOutNoRunner{
                return "ピッチャーエラー/n１死走者２塁"
            }
        case .catcherFly:
            <#code#>
        case .firstFly:
            <#code#>
        case .secondFly:
            <#code#>
        case .thirdFly:
            <#code#>
        case .shortFly:
            <#code#>
        case .leftFly:
            <#code#>
        case .centerFly:
            <#code#>
        case .rightFly:
            <#code#>
        case .pitcherGoro:
            <#code#>
        case .pitcherHit:
            <#code#>
        case .struckOut:
            <#code#>
        }
    }
    
    
    
}


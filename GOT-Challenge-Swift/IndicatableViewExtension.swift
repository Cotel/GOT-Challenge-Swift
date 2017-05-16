import Foundation
import PKHUD

extension IndicatableView where Self: UIViewController {

    func showActivityIndicator() {
        HUD.show(.progress)
    }

    func hideActivityIndicator() {
        HUD.hide()
    }
    
}

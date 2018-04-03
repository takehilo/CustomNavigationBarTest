import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if #available(iOS 11.0, *) {
            additionalSafeAreaInsets.top = 100 - 44
        } else {
            navigationController?.navigationBar.setTitleVerticalPositionAdjustment(-20.0, for: .default)
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.sizeToFit()
    }
}

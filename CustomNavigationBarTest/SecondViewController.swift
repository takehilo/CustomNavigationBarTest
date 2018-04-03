import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(back))
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "ic_arrow_back"), style: .plain, target: self, action: #selector(back))

        if #available(iOS 11.0, *) {
            additionalSafeAreaInsets.top = 100 - 44
        } else {
            navigationController?.navigationBar.setTitleVerticalPositionAdjustment(-20.0, for: .default)
            navigationItem.leftBarButtonItem?.setBackgroundVerticalPositionAdjustment(-20.0, for: .default)
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.sizeToFit()
    }

    @objc func back() {
        navigationController?.popViewController(animated: true)
    }
}

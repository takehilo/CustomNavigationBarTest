import UIKit

class CustomNavigationBar: UINavigationBar {
    let barHeight: CGFloat = 100

    override func sizeThatFits(_ size: CGSize) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: barHeight)
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        if #available(iOS 11.0, *) {
            for subview in subviews {
                let stringFromClass = NSStringFromClass(subview.classForCoder)

                if stringFromClass.contains("UIBarBackground") {
                    subview.frame = CGRect(x: 0, y: 0, width: frame.width, height: barHeight)
                    subview.sizeToFit()
                }

                if stringFromClass.contains("UINavigationBarContentView") {
                    let centerY = (barHeight - subview.frame.height) / 2.0
                    subview.frame = CGRect(x: 0, y: centerY, width: frame.width, height: subview.frame.height)
                    subview.sizeToFit()
                }
            }
        }
    }
}

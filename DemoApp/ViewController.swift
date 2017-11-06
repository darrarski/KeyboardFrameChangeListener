import UIKit
import KeyboardFrameChangeListener

class ViewController: UIViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        return nil
    }

    // MARK: View

    override func loadView() {
        view = View()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let view = self.view as! View
        view.label.text = "Tap to show / hide keyboard"
        view.didTap = {
            if $0.textField.isFirstResponder {
                $0.textField.resignFirstResponder()
            } else {
                $0.textField.becomeFirstResponder()
            }
        }
        listener.keyboardFrameWillChange = { [unowned view] in
            view.label.text = """
                KeyboardFrameChange(
                    frame: \($0.frame),
                    animationDuration: \($0.animationDuration)
                )
                """
        }
    }

    // MARK: Private

    private let listener: KeyboardFrameChangeListening = KeyboardFrameChangeListener(
        notificationCenter: NotificationCenter.default
    )

}

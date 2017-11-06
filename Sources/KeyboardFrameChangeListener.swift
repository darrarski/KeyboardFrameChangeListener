import UIKit

public class KeyboardFrameChangeListener: KeyboardFrameChangeListening {

    public init(notificationCenter: NotificationCenter) {
        self.notificationCenter = notificationCenter
        observe()
    }

    // MARK: KeyboardFrameChangeListening

    public var keyboardFrameWillChange: ((KeyboardFrameChange) -> Void)?

    // MARK: Private

    private let notificationCenter: NotificationCenter
    private var token: NSObjectProtocol?

    private func observe() {
        token = notificationCenter.addObserver(
            forName: Notification.Name.UIKeyboardWillChangeFrame,
            object: nil,
            queue: nil,
            using: { [weak self] in self?.handle($0) }
        )
    }

    private func handle(_ notification: Notification) {
        guard let endFrame = notification.userInfo?[UIKeyboardFrameEndUserInfoKey] as? CGRect,
            let animationDuration = notification.userInfo?[UIKeyboardAnimationDurationUserInfoKey] as? Double else {
                return
        }
        let change = KeyboardFrameChange(frame: endFrame, animationDuration: animationDuration)
        keyboardFrameWillChange?(change)
    }

}

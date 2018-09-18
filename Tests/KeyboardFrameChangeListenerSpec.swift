import Quick
import Nimble
@testable import KeyboardFrameChangeListener

class KeyboardFrameChangeListenerSpec: QuickSpec {

    override func spec() {
        describe("KeyboardFrameChangeListener") {
            var sut: KeyboardFrameChangeListener!
            var notificationCenter: NotificationCenter!
            var keyboardFameChanges: [KeyboardFrameChange]!

            beforeEach {
                notificationCenter = NotificationCenter()
                keyboardFameChanges = []
                sut = KeyboardFrameChangeListener(notificationCenter: notificationCenter)
                sut.keyboardFrameWillChange = { keyboardFameChanges.append($0) }
            }

            context("keyboard will change frame notification") {
                var frame: CGRect!
                var animationDuration: TimeInterval!

                beforeEach {
                    frame = CGRect(x: 5, y: 7, width: 19, height: 21)
                    animationDuration = 0.12
                    notificationCenter.post(Notification(
                        name: UIResponder.keyboardWillChangeFrameNotification,
                        object: nil,
                        userInfo: [
                            UIResponder.keyboardFrameEndUserInfoKey: frame,
                            UIResponder.keyboardAnimationDurationUserInfoKey: animationDuration
                        ]
                    ))
                }

                it("should emit one change") {
                    expect(keyboardFameChanges).to(haveCount(1))
                }

                describe("last emited change") {
                    var change: KeyboardFrameChange?

                    beforeEach {
                        change = keyboardFameChanges.last
                    }

                    it("should not be nil") {
                        expect(change).notTo(beNil())
                    }

                    it("should have correct frame") {
                        expect(change?.frame).to(equal(frame))
                    }

                    it("should have correct animation duration") {
                        expect(change?.animationDuration).to(equal(animationDuration))
                    }
                }
            }

            context("invalid notification") {
                beforeEach {
                    notificationCenter.post(Notification(
                        name: UIResponder.keyboardWillChangeFrameNotification,
                        object: nil,
                        userInfo: [:]
                    ))
                }

                it("should not emit changes") {
                    expect(keyboardFameChanges).to(beEmpty())
                }
            }
        }
    }

}

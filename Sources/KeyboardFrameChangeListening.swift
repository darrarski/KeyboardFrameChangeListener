public protocol KeyboardFrameChangeListening: class {
    var keyboardFrameWillChange: ((KeyboardFrameChange) -> Void)? { get set }
}

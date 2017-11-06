import CoreGraphics
import Foundation

/// Represents keyboard frame change
public struct KeyboardFrameChange {
    /// New keyboard frame
    public let frame: CGRect
    /// Animation duration
    public let animationDuration: TimeInterval
}

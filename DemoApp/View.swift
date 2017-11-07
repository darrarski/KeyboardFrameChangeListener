import UIKit

class View: UIView {

    init() {
        super.init(frame: .zero)
        backgroundColor = .white
        addSubviews()
        setupLayout()
        setupGestureRecongizers()
    }

    required init?(coder aDecoder: NSCoder) {
        return nil
    }

    var didTap: ((View) -> Void)?

    // MARK: Subviews

    let textField = UITextField(frame: .zero)

    let label: UILabel = {
        let label = UILabel(frame: .zero)
        label.numberOfLines = 0
        return label
    }()

    private func addSubviews() {
        addSubview(textField)
        addSubview(label)
        textField.isHidden = true
    }

    // MARK: Layout

    private func setupLayout() {
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.topAnchor.constraint(equalTo: topAnchor).isActive = true
        textField.leftAnchor.constraint(equalTo: leftAnchor).isActive = true

        label.translatesAutoresizingMaskIntoConstraints = false
        if #available(iOS 11.0, *) {
            label.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
            label.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 16).isActive = true
            label.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -16).isActive = true
            label.bottomAnchor.constraint(lessThanOrEqualTo: safeAreaLayoutGuide.bottomAnchor, constant: -16).isActive = true
        } else {
            label.topAnchor.constraint(equalTo: topAnchor, constant: 32).isActive = true
            label.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
            label.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
            label.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor, constant: -16).isActive = true
        }
    }

    // MARK: Gesture Recognizing

    private func setupGestureRecongizers() {
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(tapAction))
        addGestureRecognizer(tapRecognizer)
    }

    @objc private func tapAction() {
        didTap?(self)
    }

}

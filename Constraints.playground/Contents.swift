//: Playground - noun: a place where people can play

import UIKit

class ExpertiseView: UIView {
    lazy var titlelabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .gray

        return label
    }()

    init(title: String) {
        super.init(frame: CGRect.zero)

        self.translatesAutoresizingMaskIntoConstraints = false

        self.backgroundColor = .blue
        self.layer.cornerRadius = 2
        self.layer.masksToBounds = true

        self.titlelabel.text = "tag"

        self.addConstraints()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func addConstraints() {
        self.addSubview(self.titlelabel)

        let margin = CGFloat(15)

        self.titlelabel.heightAnchor.constraint(equalToConstant: 17)
        self.titlelabel.widthAnchor.constraint(greaterThanOrEqualToConstant: 0)
        self.titlelabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10)
        self.titlelabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10)
        self.titlelabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: margin)
        self.titlelabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -margin)
    }
}

class DeleteExpertiseView: ExpertiseView {
    lazy var deleteButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "delete")!, for: .normal)

        return button

    }()

    override func addConstraints() {
        super.addConstraints()

        self.addSubview(self.deleteButton)

        self.deleteButton.heightAnchor.constraint(equalTo: self.heightAnchor)
        self.deleteButton.widthAnchor.constraint(equalTo: self.heightAnchor)
        self.deleteButton.topAnchor.constraint(equalTo: self.topAnchor)
        self.deleteButton.leftAnchor.constraint(equalTo: self.titlelabel.rightAnchor)
        self.deleteButton.rightAnchor.constraint(equalTo: self.rightAnchor)
    }
}

let expertiseView = ExpertiseView(title: "tag")
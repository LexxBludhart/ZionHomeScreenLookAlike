//
//  RectView.swift
//  ZionHomeScreenLookAlike
//
//  Created by Rhett Levitz on 4/26/22.
//

import UIKit

class SquareView: UIView {

    
     
    private lazy var squareBackgroundImage: UIImageView =
    {
        let squareBackgroundImage = UIImageView()
        squareBackgroundImage.clipsToBounds = true
        squareBackgroundImage.translatesAutoresizingMaskIntoConstraints = false
        squareBackgroundImage.backgroundColor = .black
        squareBackgroundImage.layer.opacity = 0.8
        return squareBackgroundImage
    }()
    
    private lazy var squareLabel: UILabel =
    {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = .systemFont(ofSize: 20, weight: .black)
        label.shadowColor = .black
        label.shadowOffset.height = 2
        label.shadowOffset.width = 2
        return label
    }()
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        self.superview?.addSubview(self)
        setup()
    }
    
    required init?(coder: NSCoder)
    {
        super.init(coder: coder)
        self.superview?.addSubview(self)
        setup()
    }
    
    private func setup()
    {
        addSubview(squareBackgroundImage)
        addSubview(squareLabel)
        addSquareConstraints()
        isHidden = false
    }
    
    private func addSquareConstraints()
    {
        let margins = layoutMarginsGuide
        var constraints = [NSLayoutConstraint]()
        
        // Background Image
        constraints.append(squareBackgroundImage.leadingAnchor.constraint(
            equalTo: margins.leadingAnchor, constant: -7))
        constraints.append(squareBackgroundImage.trailingAnchor.constraint(
            equalTo: margins.trailingAnchor, constant: 7))
        constraints.append(squareBackgroundImage.topAnchor.constraint(
            equalTo: margins.topAnchor, constant: -7))
        constraints.append(squareBackgroundImage.bottomAnchor.constraint(
            equalTo: margins.bottomAnchor, constant: 7))
        
        // Label
        constraints.append(squareLabel.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: -3))
        constraints.append(squareLabel.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: 5))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    func setImageAndLabel(imageName: String, labelText: String)
    {
        squareBackgroundImage.image = UIImage(named: imageName)
        squareLabel.text = labelText
    
    }

}

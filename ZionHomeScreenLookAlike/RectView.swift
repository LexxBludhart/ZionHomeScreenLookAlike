//
//  ZionMainPageImage.swift
//  ZionHomeScreenLookAlike
//
//  Created by Rhett Levitz on 4/12/22.
//

import UIKit

class RectView: UIView
{
    
    private lazy var squareBackgroundImage: UIImageView =
    {
        let squareBackgroundImage = UIImageView()
        squareBackgroundImage.clipsToBounds = true
        squareBackgroundImage.layer.cornerRadius = 1
        squareBackgroundImage.translatesAutoresizingMaskIntoConstraints = false
        return squareBackgroundImage
    }()
    
    private lazy var squareLabel: UILabel =
    {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
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
    
    func setup()
    {
        addSubview(squareBackgroundImage)
        addSubview(squareLabel)
        addSquareConstraints()
        isHidden = false
    }
    
    func addSquareConstraints()
    {
        let margins = layoutMarginsGuide
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(squareBackgroundImage.leadingAnchor.constraint(
            equalTo: margins.leadingAnchor, constant: 10))
        constraints.append(squareBackgroundImage.trailingAnchor.constraint(
            equalTo: margins.trailingAnchor, constant: -10))
        constraints.append(squareBackgroundImage.topAnchor.constraint(
            equalTo: margins.topAnchor, constant: 10))
        constraints.append(squareBackgroundImage.bottomAnchor.constraint(
            equalTo: margins.bottomAnchor, constant: -10))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    func setImageAndLabel(imageName: String, labelText: String)
    {
        squareBackgroundImage.image = UIImage(named: imageName)
        squareLabel.text = labelText
    
    }
    
    
    
}

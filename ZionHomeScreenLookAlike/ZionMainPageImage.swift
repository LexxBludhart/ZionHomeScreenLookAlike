//
//  ZionMainPageImage.swift
//  ZionHomeScreenLookAlike
//
//  Created by Rhett Levitz on 4/12/22.
//

import UIKit

class SquareMainPageView: UIView
{

    lazy var squareBackgroundImage: UIImageView =
    {
        let squareBackgroundImage = UIImageView()
        squareBackgroundImage.clipsToBounds = true
        squareBackgroundImage.layer.cornerRadius = 1
        squareBackgroundImage.translatesAutoresizingMaskIntoConstraints = false
        return squareBackgroundImage
    }()
    
    lazy var squareLabel: UILabel =
    {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.text = "Test"
        return label
    }()
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder)
    {
        super.init(coder: coder)
    }
    
    func setImage(named imageName: String)
    {
        self.squareBackgroundImage.image = UIImage(named: imageName)
    }
    
    func setLabel(text textToDisplay: String?)
    {
        self.squareLabel.text = textToDisplay
    }
    
    func setup()
    {
        self.addSubview(squareBackgroundImage)
        self.addSubview(squareLabel)
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
    
    
    
    
    
    
    
}

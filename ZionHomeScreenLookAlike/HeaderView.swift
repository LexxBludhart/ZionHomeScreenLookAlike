//
//  HeaderView.swift
//  ZionHomeScreenLookAlike
//
//  Created by Rhett Levitz on 4/27/22.
//

import UIKit

class HeaderView: UIView {

    
    private lazy var headerBackgroundImage: UIImageView =
    {
        let headerBackgroundImage = UIImageView()
        headerBackgroundImage.clipsToBounds = true
        headerBackgroundImage.translatesAutoresizingMaskIntoConstraints = false
        headerBackgroundImage.backgroundColor = .black
        headerBackgroundImage.layer.opacity = 0.9
        
        return headerBackgroundImage
    }()
    
    private lazy var headerLabel: UILabel =
    {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = .systemFont(ofSize: 25, weight: .black)
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
        addSubview(headerBackgroundImage)
        addSubview(headerLabel)
        addHeaderConstraints()
        isHidden = false
    }
    
    private func addHeaderConstraints()
    {
        let margins = layoutMarginsGuide
        var constraints = [NSLayoutConstraint]()
        
        // Background Image
        constraints.append(headerBackgroundImage.leadingAnchor.constraint(
            equalTo: margins.leadingAnchor, constant: -7))
        constraints.append(headerBackgroundImage.trailingAnchor.constraint(
            equalTo: margins.trailingAnchor, constant: 7))
        constraints.append(headerBackgroundImage.topAnchor.constraint(
            equalTo: margins.topAnchor, constant: -7))
        constraints.append(headerBackgroundImage.bottomAnchor.constraint(
            equalTo: margins.bottomAnchor, constant: 7))
        
        // Label
        constraints.append(headerLabel.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: -3))
        constraints.append(headerLabel.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: 5))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    func setImageAndLabel(imageName: String, labelText: String)
    {
        headerBackgroundImage.image = UIImage(named: imageName)
        headerLabel.text = labelText
    
    }

}

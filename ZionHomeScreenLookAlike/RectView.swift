//
//  ZionMainPageImage.swift
//  ZionHomeScreenLookAlike
//
//  Created by Rhett Levitz on 4/12/22.
//

import UIKit

class RectView: UIView
{
    
    private lazy var rectBackgroundImage: UIImageView =
    {
        let rectBackgroundImage = UIImageView()
        rectBackgroundImage.clipsToBounds = true
        rectBackgroundImage.translatesAutoresizingMaskIntoConstraints = false
        rectBackgroundImage.backgroundColor = UIColor.black
        rectBackgroundImage.layer.opacity = 0.8
    
        return rectBackgroundImage
    }()
    
    private lazy var rectLabel: UILabel =
    {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = .systemFont(ofSize: 20, weight: .black)
        
        return label
    }()
    
    private lazy var rectLiveImage: UIImageView =
    {
        let liveImage = UIImageView()
        liveImage.clipsToBounds = true
        liveImage.backgroundColor = .clear
        liveImage.translatesAutoresizingMaskIntoConstraints = false
        liveImage.image = UIImage(named: "liveImage")

        return liveImage
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
        addSubview(rectBackgroundImage)
        addSubview(rectLabel)
        addSubview(rectLiveImage)
        addRectConstraints()
        isHidden = false
    }
    
    private func addRectConstraints()
    {
        let margins = layoutMarginsGuide
        var constraints = [NSLayoutConstraint]()
        
        // Background Image
        constraints.append(rectBackgroundImage.leadingAnchor.constraint(
            equalTo: margins.leadingAnchor, constant: -7))
        constraints.append(rectBackgroundImage.trailingAnchor.constraint(
            equalTo: margins.trailingAnchor, constant: 7))
        constraints.append(rectBackgroundImage.topAnchor.constraint(
            equalTo: margins.topAnchor, constant: -7))
        constraints.append(rectBackgroundImage.bottomAnchor.constraint(
            equalTo: margins.bottomAnchor, constant: 7))
        
        // Label
        constraints.append(rectLabel.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: -3))
        constraints.append(rectLabel.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: 5))
        
        // Live Image
        constraints.append(rectLiveImage.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: 5))
        constraints.append(rectLiveImage.topAnchor.constraint(equalTo: margins.topAnchor, constant: -5))
        constraints.append(rectLiveImage.widthAnchor.constraint(equalTo: margins.widthAnchor, multiplier: 0.3))
        constraints.append(rectLiveImage.heightAnchor.constraint(equalTo: margins.heightAnchor, multiplier: 0.25))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    
    func setImageAndLabel(imageName: String, labelText: String)
    {
        rectBackgroundImage.image = UIImage(named: imageName)
        rectLabel.text = labelText
    
    }
    
    
    
}

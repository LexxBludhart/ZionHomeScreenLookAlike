//
//  RectView.swift
//  ZionHomeScreenLookAlike
//
//  Created by Rhett Levitz on 4/26/22.
//

import UIKit

class SquareView: UIView {

    
     
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        createSubViews()
    }
    
    init (labelText: String)
    {
        super.init(frame: .zero)
        createSubViews()
    }
    
    required init?(coder: NSCoder)
    {
        super.init(coder: coder)
        createSubViews()
    }
    
    private func createSubViews()
    {
        let rectImage = UIImageView()
        rectImage.image = UIImage(named: "Parking")
        rectImage.translatesAutoresizingMaskIntoConstraints = false
        rectImage.clipsToBounds = true
        rectImage.layer.cornerRadius = 1
        addSubview(rectImage)
        let label = UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.medium)
        label.text = "Parking? Test?"
        label.textColor = .black
        addSubview(label)
        NSLayoutConstraint.activate([
            rectImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            rectImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.centerXAnchor.constraint(equalTo: centerXAnchor),
            label.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        
        
    }

}

//
//  WeatherView.swift
//  ZionHomeScreenLookAlike
//
//  Created by Rhett Levitz on 4/27/22.
//

import UIKit

class WeatherView: UIView {

    private lazy var weatherBackgroundImage: UIImageView =
    {
        let weatherBackgroundImage = UIImageView()
        weatherBackgroundImage.clipsToBounds = true
        weatherBackgroundImage.translatesAutoresizingMaskIntoConstraints = false
        weatherBackgroundImage.backgroundColor = UIColor.black
        weatherBackgroundImage.layer.opacity = 0.8
    
        return weatherBackgroundImage
    }()
    
    private lazy var weatherLabel: UILabel =
    {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = .systemFont(ofSize: 20, weight: .black)
        
        return label
    }()
    
    private lazy var weatherLiveImage: UIImageView =
    {
        let liveImage = UIImageView()
        liveImage.clipsToBounds = true
        liveImage.backgroundColor = .clear
        liveImage.translatesAutoresizingMaskIntoConstraints = false
        liveImage.image = UIImage(named: "liveImage")

        return liveImage
    }()
    
    private lazy var weatherIconImage: UIImageView =
    {
       let weatherIcon = UIImageView()
        weatherIcon.clipsToBounds = true
        weatherIcon.backgroundColor = .clear
        weatherIcon.translatesAutoresizingMaskIntoConstraints = false
        weatherIcon.image = UIImage(named: "weatherIcon")
        
        return weatherIcon
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
        addSubview(weatherBackgroundImage)
        addSubview(weatherLabel)
        addSubview(weatherLiveImage)
        addSubview(weatherIconImage)
        addRectConstraints()
        isHidden = false
    }
    
    private func addRectConstraints()
    {
        let margins = layoutMarginsGuide
        var constraints = [NSLayoutConstraint]()
        
        // Background Image
        constraints.append(weatherBackgroundImage.leadingAnchor.constraint(
            equalTo: margins.leadingAnchor, constant: -7))
        constraints.append(weatherBackgroundImage.trailingAnchor.constraint(
            equalTo: margins.trailingAnchor, constant: 7))
        constraints.append(weatherBackgroundImage.topAnchor.constraint(
            equalTo: margins.topAnchor, constant: -7))
        constraints.append(weatherBackgroundImage.bottomAnchor.constraint(
            equalTo: margins.bottomAnchor, constant: 7))
        
        // Label Text
        constraints.append(weatherLabel.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: -3))
        constraints.append(weatherLabel.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: 5))
        
        // Live Image
        constraints.append(weatherLiveImage.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: 5))
        constraints.append(weatherLiveImage.topAnchor.constraint(equalTo: margins.topAnchor, constant: -5))
        constraints.append(weatherLiveImage.widthAnchor.constraint(equalTo: margins.widthAnchor, multiplier: 0.3))
        constraints.append(weatherLiveImage.heightAnchor.constraint(equalTo: margins.heightAnchor, multiplier: 0.25))
        
        // Weather Icon
        constraints.append(weatherIconImage.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: 5))
        constraints.append(weatherIconImage.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: 5))
        constraints.append(weatherIconImage.widthAnchor.constraint(equalTo: margins.widthAnchor, multiplier: 0.25))
        constraints.append(weatherIconImage.heightAnchor.constraint(equalTo: margins.heightAnchor, multiplier: 0.5))
        
        
        NSLayoutConstraint.activate(constraints)
    }
    
    
    func setImageAndLabel(imageName: String, labelText: String)
    {
        weatherBackgroundImage.image = UIImage(named: imageName)
        weatherLabel.text = labelText
    
    }
}

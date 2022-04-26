//
//  ViewController.swift
//  ZionHomeScreenLookAlike
//
//  Created by Rhett Levitz on 4/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
    }

    
    @IBOutlet weak var parkingImage: RectView!
    
    @IBOutlet weak var entrancesImage: UIView!
    
    @IBOutlet weak var trailsImage: UIView!
    
    @IBOutlet weak var shuttlesImage: UIView!
    
    @IBOutlet weak var campingImage: UIView!
    
    @IBOutlet weak var weatherImage: UIView!
    
    @IBOutlet weak var whatToSeeImage: UIView!
    
    @IBOutlet weak var whatToDoImage: UIView!
    
    @IBOutlet weak var regionUpdates: UIView!
    
    
    func setUpViews()
    {
        parkingImage.setImageAndLabel(imageName: "ParkingImage", labelText: "Parking")
    }
    
}


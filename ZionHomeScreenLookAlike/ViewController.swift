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

    
    @IBOutlet weak var greaterZionImage: HeaderView!
    
    @IBOutlet weak var parkingImage: RectView!
    
    @IBOutlet weak var entrancesImage: RectView!
    
    @IBOutlet weak var trailsImage: RectView!
    
    @IBOutlet weak var shuttlesImage: RectView!
    
    @IBOutlet weak var campingImage: RectView!
    
    @IBOutlet weak var weatherImage: WeatherView!
    
    @IBOutlet weak var whatToSeeImage: SquareView!
    
    @IBOutlet weak var whatToDo: SquareView!
    
    @IBOutlet weak var regionUpdates: SquareView!
    
    func setUpViews()
    {
        greaterZionImage.setImageAndLabel(imageName: "GreaterZionRegionImage", labelText: "Greater Zion Region")
        parkingImage.setImageAndLabel(imageName: "ParkingImage", labelText: "Parking")
        entrancesImage.setImageAndLabel(imageName: "EntrancesImage", labelText: "Entrances")
        trailsImage.setImageAndLabel(imageName: "TrailsImage", labelText: "Trails")
        shuttlesImage.setImageAndLabel(imageName: "ShuttlesImage", labelText: "Shuttles")
        campingImage.setImageAndLabel(imageName: "CampingImage", labelText: "Camping")
        weatherImage.setImageAndLabel(imageName: "WeatherImage", labelText: "Weather")
        whatToSeeImage.setImageAndLabel(imageName: "WhatToSeeImage", labelText: "What To See")
        whatToDo.setImageAndLabel(imageName: "WhatToDoImage", labelText: "What To Do")
        regionUpdates.setImageAndLabel(imageName: "RegionUpdatesImage", labelText: "Region Updates")
    }
    
}


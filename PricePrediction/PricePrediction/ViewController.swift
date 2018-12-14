//
//  ViewController.swift
//  PricePrediction
//
//  Created by Viktor Yamchinov on 11/12/2018.
//  Copyright © 2018 Viktor Yamchinov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var numberOfRooms: UISegmentedControl!
    @IBOutlet weak var numberOfBathrooms: UISegmentedControl!
    @IBOutlet weak var garageCapacity: UISegmentedControl!
    @IBOutlet weak var condition: UISegmentedControl!
    @IBOutlet weak var yearBuiltLbl: UILabel!
    @IBOutlet weak var yearBuiltSlider: UISlider!
    @IBOutlet weak var sizeLbl: UILabel!
    @IBOutlet weak var sizeSlider: UISlider!
    @IBOutlet weak var resultLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func updatePrediction(_ sender: Any) {
    }
    
}


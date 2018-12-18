//
//  ViewController.swift
//  PricePrediction
//
//  Created by Viktor Yamchinov on 11/12/2018.
//  Copyright © 2018 Viktor Yamchinov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let model = HousePrices()

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
        let spacing: CGFloat = 30
        stackView.setCustomSpacing(spacing, after: numberOfRooms)
        stackView.setCustomSpacing(spacing, after: numberOfBathrooms)
        stackView.setCustomSpacing(spacing, after: garageCapacity)
        stackView.setCustomSpacing(spacing, after: yearBuiltSlider)
        stackView.setCustomSpacing(spacing, after: sizeSlider)
        stackView.setCustomSpacing(spacing, after: condition)
        updatePrediction(self)
        
    }

    @IBAction func updatePrediction(_ sender: Any) {
        yearBuiltLbl.text = "Year Built: \(Int(yearBuiltSlider.value))"
        sizeLbl.text = "Size: \(Int(sizeSlider.value))"
        do {
            let prediction = try model.prediction(
                bathrooms: Double(numberOfBathrooms.selectedSegmentIndex + 1),
                cars: Double(garageCapacity.selectedSegmentIndex),
                condition: Double(condition.selectedSegmentIndex),
                rooms: Double(numberOfRooms.selectedSegmentIndex + 1),
                size: Double(Int(sizeSlider.value)),
                yearBuilt: Double(Int(yearBuiltSlider.value))
            )
            let formatter = NumberFormatter()
            formatter.numberStyle = .currency
            formatter.maximumFractionDigits = 0
            resultLbl.text = formatter.string(from: prediction.value as NSNumber) ?? ""
        } catch {
            print(error.localizedDescription)
        }
    }
    
}


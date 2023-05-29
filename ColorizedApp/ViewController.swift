//
//  ViewController.swift
//  ColorizedApp
//
//  Created by m.korovin on 28.05.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    
    
    @IBOutlet var sliderFirst: UISlider!
    @IBOutlet var sliderSecond: UISlider!
    @IBOutlet var sliderThird: UISlider!
    
    
    @IBOutlet var firstLabel: UILabel!
    @IBOutlet var secondLabel: UILabel!
    @IBOutlet var thirdLabel: UILabel!
    
    
    @IBOutlet var firstCounterLabel: UILabel!
    @IBOutlet var secondCounterLabel: UILabel!
    @IBOutlet var thirdCounterLabel: UILabel!
    
    @IBOutlet var viewColorContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSliderOne()
        setupSliderTwo()
        setupSliderThree()
        setupFirstLabel()
        setupSecondLabel()
        setupThirdLabel()
        

        
    }
    
    @IBAction func sliderFirstAction(_ sender: UISlider) {
        firstCounterLabel.text = String(format: "%.2f", sliderFirst.value)
        viewColorContainer.backgroundColor = UIColor(red: CGFloat(sliderFirst.value), green: CGFloat(sliderSecond.value), blue: CGFloat(sliderThird.value), alpha: (CGFloat(sliderFirst.value) + CGFloat(sliderSecond.value) + CGFloat(sliderThird.value)) / 3)
        
        
        
    }
    
    
//    @IBAction func sliderSecondAction(_ sender: UISlider) {
//        secondCounterLabel.text = String(format: "%.2f", sliderSecond.value)
//        viewColorContainer.backgroundColor = UIColor(red: CGFloat(sliderFirst.value), green: CGFloat(sliderSecond.value), blue: CGFloat(sliderThird.value), alpha: (CGFloat(sliderFirst.value) + CGFloat(sliderSecond.value) + CGFloat(sliderThird.value)) / 3)
//
//    }
//
//
//    @IBAction func sliderThirdAction(_ sender: UISlider) {
//        thirdCounterLabel.text = String(format: "%.2f", sliderThird.value)
//        viewColorContainer.backgroundColor = UIColor(red: CGFloat(sliderFirst.value), green: CGFloat(sliderSecond.value), blue: CGFloat(sliderThird.value), alpha: (CGFloat(sliderFirst.value) + CGFloat(sliderSecond.value) + CGFloat(sliderThird.value)) / 3)
//
//    }
    
    
    
    // MARK: - Private Methods
    

    
    private func setupFirstLabel() {
        firstCounterLabel.text = sliderFirst.value.formatted()
        firstCounterLabel.font = .systemFont(ofSize: 24)
        firstCounterLabel.textAlignment = .left
        firstCounterLabel.numberOfLines = 1
    }
    
    private func setupSecondLabel() {
        secondCounterLabel.text = sliderSecond.value.formatted()
        secondCounterLabel.font = .systemFont(ofSize: 24)
        secondCounterLabel.textAlignment = .left
        secondCounterLabel.numberOfLines = 1
    }
    
    private func setupThirdLabel() {
        thirdCounterLabel.text = sliderThird.value.formatted()
        thirdCounterLabel.font = .systemFont(ofSize: 24)
        thirdCounterLabel.textAlignment = .left
        thirdCounterLabel.numberOfLines = 1
    }
    
    private func setupSliderOne() {
        sliderFirst.value = 0
        sliderFirst.minimumValue = 0
        sliderFirst.maximumValue = 1
        sliderFirst.minimumTrackTintColor = .red
        sliderFirst.maximumTrackTintColor = .black
        sliderFirst.thumbTintColor = .brown
    }
    
    private func setupSliderTwo() {
        sliderSecond.value = 0
        sliderSecond.minimumValue = 0
        sliderSecond.maximumValue = 1
        sliderSecond.minimumTrackTintColor = .green
        sliderSecond.maximumTrackTintColor = .black
        sliderSecond.thumbTintColor = .brown
    }
    
    private func setupSliderThree() {
        sliderThird.value = 0
        sliderThird.minimumValue = 0
        sliderThird.maximumValue = 1
        sliderThird.minimumTrackTintColor = .blue
        sliderThird.maximumTrackTintColor = .black
        sliderThird.thumbTintColor = .brown
    }
    

    
}


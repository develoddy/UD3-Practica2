//
//  ViewController.swift
//  UD3_Practica2
//
//  Created by Eddy Donald Chinchay Lujan on 8/8/23.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    @IBOutlet weak var buttonTurnOn: UIButton!
    private let deepskyblueColor = UIColor(red: 0.00, green: 0.75, blue: 1.00, alpha: 1.00)
    private let dimgrayColor = UIColor(red: 0.41, green: 0.41, blue: 0.41, alpha: 1.00)
    private let blackColor = UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 1.00)
    private let lightYellowColor = UIColor(red: 0.94, green: 0.90, blue: 0.55, alpha: 1.00)
    private var textturnOnLight = "Encender la luz"
    private var textturnOffLight = "Apagar la luz"
    private var pressed : Bool = false
    //turn off
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    // MARK: - Helpers
    private func setupView() {
        view.backgroundColor = dimgrayColor
        configureLabelButton()
    }
    
    func configureLabelButton() {
        buttonTurnOn.backgroundColor = deepskyblueColor
        buttonTurnOn.setTitleColor(blackColor, for: .normal)
        buttonTurnOn.layer.cornerRadius = 5
        buttonTurnOn.clipsToBounds = true
        buttonTurnOn.addTarget(self, action: #selector(didTapPress), for: .touchUpInside)
        buttonTurnOn.setTitle(textturnOnLight, for: .normal)
    }
    
    // MARK: - Actions
    @objc func didTapPress() {
        if !pressed {
            view.backgroundColor = lightYellowColor
            self.buttonTurnOn.setTitle(textturnOffLight, for: .normal)
            pressed = true
        } else {
            setupView()
            pressed = false
        }
    }
}

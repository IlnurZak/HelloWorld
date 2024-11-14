//
//  ViewController.swift
//  HelloWorld
//
//  Created by Ильнур Закирьянов on 05.11.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var greetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.isHidden = true
        greetingButton.configuration = setupButton(with: "Показать приветствие")
      //  greetingButton.layer.cornerRadius = 10
      //  greetingButton.setTitle("Показать приветствие", for: .normal)
    }

    @IBAction func pressButtonPressed() {
        greetingLabel.isHidden.toggle()
        
        if greetingLabel.isHidden{
            greetingButton.setTitle("Показать приветствие", for: .normal)
        } else {
            greetingButton.setTitle("Скрыть приветствие", for: .normal)
        }
    }
    
    private func setupButton(with title: String) -> UIButton.Configuration{
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        buttonConfiguration.title = title
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24)
        return buttonConfiguration
    }
}


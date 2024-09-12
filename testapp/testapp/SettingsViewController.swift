//
//  SettingsViewController.swift
//  testapp
//
//  Created by Leonardo Guerrero on 9/12/24.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var BrightnessLB: UILabel!
    
    
    @IBAction func BrightnessSlider(_ sender: UISlider) {
        BrightnessLB.text = "\(Int(SLDSliderValue.value * 100))"
        
        view.window?.screen.brightness = CGFloat(SLDSliderValue.value)
    }
    
    @IBOutlet weak var SLDSliderValue: UISlider!
    
    
    
    
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  MusicViewController.swift
//  testapp
//
//  Created by Leonardo Guerrero on 9/12/24.
//

import UIKit
import AVFoundation

class MusicViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()

        let songPath = Bundle.main.path(forResource: "song", ofType: "m4a")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: songPath!), fileTypeHint: AVFileType.m4a.rawValue)
        }
        catch{
            print(error)
        }
    }
    
    @IBAction func SEGplaystop(_ sender: UISegmentedControl) {
        
        if SEGvalue.selectedSegmentIndex == 0 {
            audioPlayer.play()
        }
        
        else if SEGvalue.selectedSegmentIndex == 1 {
                    audioPlayer.stop()
        }
    }
    
    @IBOutlet weak var SEGvalue: UISegmentedControl!
    
    
    @IBOutlet weak var SLDRVolume: UISlider!
    
    
    @IBAction func SLDRVolumeControl(_ sender: UISlider) {
        
        audioPlayer.volume = SLDRVolume.value
        
        labelVolume.text = "%" + "\(Int(SLDRVolume.value * 100))"
    }
    
    
    
    @IBOutlet weak var labelVolume: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

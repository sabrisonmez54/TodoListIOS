//
//  SecondViewViewController.swift
//  ToDoList
//
//  Created by Sabri on 1/10/19.
//  Copyright © 2019 Sabri. All rights reserved.
//

import UIKit
import AVFoundation

class SecondViewViewController: UIViewController {

      var audioPlayer:AVAudioPlayer?
    
    @IBOutlet weak var input: UITextField!
    
    @IBOutlet weak var checkImage: UIImageView!
    
    
    
    @IBAction func addItem(_ sender: Any) {
       
       
            if (input.text != "") {
                
                list.append(input.text!)
                input.text = ""
                
                checkImage.isHidden = false
                
                let url = Bundle.main.url(forResource: "btn", withExtension: "wav")
                
                guard url != nil else{
                    return
                }
                
                do{
                    audioPlayer = try AVAudioPlayer(contentsOf: url!)
                    audioPlayer?.play()
                    
                }
                catch{
                    print("error")
                }
            }
        
        
        
        }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkImage.isHidden = true
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

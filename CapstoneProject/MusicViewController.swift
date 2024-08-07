//
//  MusicViewController.swift
//  CapstoneProject
//
//  Created by Shreya Agrawal on 5/14/22.
//

    import UIKit
    import AVFoundation

    class MusicViewController: UIViewController {
        
        var player: AVAudioPlayer!

        override func viewDidLoad() {
            super.viewDidLoad()
        }

        @IBAction func rainKeyPressed(_ sender: UIButton) {
            playSound("9 - Rain On Rooftop")
        }
        
        @IBAction func fireKeyPressed(_ sender: UIButton) {
            playSound("1 - Fire")
        }
        
        @IBAction func thunderKeyPressed(_ sender: UIButton) {
            playSound("6 - Thunder")
        }
        
        func playSound(_ soundFileName: String) {
            let url = Bundle.main.url(forResource: soundFileName, withExtension: "mp3")
            print("made url")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
                    
        }
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



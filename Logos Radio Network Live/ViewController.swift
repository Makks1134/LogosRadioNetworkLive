//
//  ViewController.swift
//  Rule of Law Radio Player
//
//  Created by Build Your Software on 6/20/18.
//  Copyright © 2018 Build Your Software. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func adClick(_ sender: UIButton) {
        
        if let url = URL(string: "http://www.howtowinincourt.com/?refercode=AM0014"){
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }
        
    }
    

    @IBAction func playVideo(_ sender: UIButton) {
        guard let url = URL(string: "http://66.90.98.130:80") else {
            return
        }
        
        
        // Create an AVPlayer, passing it the HTTP Live Streaming URL.
        let player = AVPlayer(url: url)
        
        // Create a new AVPlayerViewController and pass it a reference to the player.
        let controller = AVPlayerViewController()
        controller.player = player
        // Modally present the player and call the player's play() method when complete.
        present(controller, animated: true) {
            player.play()
        }
    }
    
}


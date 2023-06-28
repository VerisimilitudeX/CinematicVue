//
//  ViewController.swift
//  CinematicVue
//
//  Created by Piyush Acharya on 6/28/23.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        playVideo()
    }

    private func playVideo() {
        guard let path = Bundle.main.path(forResource: "IMG_0017", ofType: "mov") else {
            debugPrint("IMG_0017.mov not found")
            return
        }
        
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true) {
            player.play()
        }
    }
}


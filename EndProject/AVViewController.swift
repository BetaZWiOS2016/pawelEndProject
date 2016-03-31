//
//  AVViewController.swift
//  EndProject
//
//  Created by user116413 on 3/31/16.
//  Copyright © 2016 user116413. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation


class AVViewController: AVPlayerViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let videoURL = NSURL(string: "https://www.youtube.com/watch?v=foE1mO2yM04")
        let player = AVPlayer(URL: videoURL!)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        self.presentViewController(playerViewController, animated: true) {
            playerViewController.player!.play()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

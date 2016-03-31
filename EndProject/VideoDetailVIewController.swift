//
//  VideoDetailVIewController.swift
//  EndProject
//
//  Created by user116413 on 3/31/16.
//  Copyright © 2016 user116413. All rights reserved.
//

import UIKit


class VideoDetailVIewController: UIViewController {

    
    @IBOutlet var webView: UIWebView!
    
    @IBOutlet weak var titleLabel: UILabel!
   
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var selectedVideo : Video?
    
    @IBOutlet weak var webWiewConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        if let vid = self.selectedVideo{
            //self.titleLabel.text = vid.videoId

            self.titleLabel.text = vid.videoTitle
            self.descriptionLabel.text = vid.videoDescription
            
            let width = self.view.frame.size.width
            let height = width/320 * 180
            
            let videoEmbedString = "<html><body><iframe width='" + String(width) + "' height='" + String(height) + "' src='https://www.youtube.com/embed/" + vid.videoId + " frameborder='0' allowfullscreen></iframe></html></body>"
            
            self.webView.loadHTMLString(videoEmbedString, baseURL: NSBundle.mainBundle().resourceURL)
        }
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

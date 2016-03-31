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

            self.titleLabel.text = vid.videoTitle
            self.descriptionLabel.text = vid.videoDescription
            
            let url  : NSURL = NSURL(string: "https://www.youtube.com/embed/" + vid.videoId  + "")!
            
            let request : NSURLRequest  = NSURLRequest(URL: url)
            self.webView.allowsInlineMediaPlayback = true
            self.webView.loadRequest(request)
          
        }
    }

   
}

//
//  ViewController.swift
//  EndProject
//
//  Created by user116413 on 3/18/16.
//  Copyright © 2016 user116413. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var videos:[Video]  = [Video]()
    var selectedVideo : Video?
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let model = VideoModel()
        self.videos = model.getVideos()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return (self.view.frame.width / 320) * 180
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("BasicCell")!
        
        let videoTitle = videos[indexPath.row].videoTitle
        
        
        let label = cell.viewWithTag(2) as! UILabel
        label.text = videoTitle
        
        
        // construct thumbnail
        let videoThumbUrlString = "https://i1.ytimg.com/vi/" + videos[indexPath.row].videoId +
            "/maxresdefault.jpg"
        
        let videoUrl = NSURL(string: videoThumbUrlString)
        
        if videoUrl != nil {
             let request = NSURLRequest(URL: videoUrl!)
            
            let session = NSURLSession.sharedSession()
            
            let dataTask = session.dataTaskWithRequest(request, completionHandler: { (data, response, error) -> Void in
                
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    let imageView = cell.viewWithTag(1) as! UIImageView
                    
                    imageView.image = UIImage(data: data!)
                    
                })
                
            })
            
                dataTask.resume()
        }
        
        return cell
        
        
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.selectedVideo = videos[indexPath.row]
        
        self.performSegueWithIdentifier("goToDetailView", sender: self)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let detailViewController = segue.destinationViewController as! VideoDetailVIewController
        
        detailViewController.selectedVideo = self.selectedVideo
    }


}


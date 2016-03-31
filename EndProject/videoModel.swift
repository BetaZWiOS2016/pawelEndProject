//
//  videoModel.swift
//  EndProject
//
//  Created by user116413 on 3/31/16.
//  Copyright © 2016 user116413. All rights reserved.
//

import UIKit

class VideoModel: NSObject {

     func getVideos() -> [Video] {
        var videos = [Video]()
        
        let video1 = Video()
        video1.videoId = "WPvGqX-TXP0"
        video1.videoTitle = "Java Programming"
        video1.videoDescription = " specifically cover the following topics: primitive data types, comments, class, import, Scanner, final, Strings, static, private, protected, public, constructors, math, hasNextLine, nextLine, getters, setters, method overloading, Random, casting, toString, conversion from Strings to primitives, converting from primitives to Strings, if, else, else if, print, println, printf, logical operators, comparison operators, ternary operator, switch, for, while, break, continue, do while, polymorphism, arrays, for each, multidimensional arrays and more."
        videos.append(video1)
        
        
        let video2 = Video()
        video2.videoId = "xHUIbFNO0II"
        video2.videoTitle = "Fais ft. Afrojack - Hey (Official Video) "
        video2.videoDescription = "Published on Feb 26 2016"
        videos.append(video2)
        
        
        let video3 = Video()
        video3.videoId = "foE1mO2yM04"
        video3.videoTitle = "Mike Posner - I Took A Pill In Ibiza (Seeb Remix) (Explicit)"
        video3.videoDescription = "Published on Feb 26 2016"
        videos.append(video3)
        
        return videos
    }
    
}

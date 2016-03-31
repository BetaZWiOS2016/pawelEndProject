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
        video1.videoId = "lJnvq0A_7WQ"
        video1.videoTitle = "Introduction to Programming"
        video1.videoDescription = "Uploaded on Feb 24, 2011"
        videos.append(video1)
        
        
        let video2 = Video()
        video2.videoId = "jrypN2CpAy8"
        video2.videoTitle = "Beginner Java Programming - Episode 1: Intro to Game Design "
        video2.videoDescription = "This is a java programming tutorial made for absolute beginner programmers. In it we cover downloading the programming software, declaring and setting String variables, and printing to the console."
        videos.append(video2)
        
        
        let video3 = Video()
        video3.videoId = "Rub-JsjMhWY"
        video3.videoTitle = "C++ Programming"
        video3.videoDescription = "Published on Feb 26 2016"
        videos.append(video3)
        
        let video4 = Video()
        video4.videoId = "WPvGqX-TXP0"
        video4.videoTitle = "Java Programming"
        video4.videoDescription = "Specifically cover the following topics: primitive data types, comments, class, import, Scanner, final, Strings, static, private, protected, public, constructors, math, hasNextLine, nextLine, getters, setters, method overloading, Random, casting, toString"
        videos.append(video4)
        
        
        let video5 = Video()
        video5.videoId = "ef-6NZjBtW0"
        video5.videoTitle = "How to Make Android Apps"
        video5.videoDescription = "I will show you how to make Android apps. This is the beginning of a large tutorial series. I will do my best improve on the first tutorial by following all of the suggestions I have received."
        videos.append(video5)
        
        return videos
    }
    
}

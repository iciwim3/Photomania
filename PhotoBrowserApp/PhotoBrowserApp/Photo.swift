//
//  Photo.swift
//  PhotoBrowserApp
//
//  Created by Sain-R Edwards Jr. on 9/4/17.
//  Copyright © 2017 Appybuildmore. All rights reserved.
//

import Foundation

struct Photo {
    var name: String = ""
    var photographerProfileImageName: String = ""
    var caption: String = ""
    var thumbnailImageName: String = ""
    
    static func downloadAllPhotos() -> [Photo] {
        
        var photos = [Photo]()
        
        for i in 1...10 {
            
            let photo = Photo(name: "\(i)", photographerProfileImageName: "p\(i)", caption: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur mauris ex, molestie in risus sed, dapibus mollis velit. Praesent eu lectus quis magna interdum pulvinar. Vestibulum maximus, magna quis lacinia posuere, mauris nisl hendrerit dolor, non tincidunt turpis felis vitae odio. Proin ut urna sit amet nunc auctor pretium non sed leo.", thumbnailImageName: "t\(i)")
            photos.append(photo)
            
        }
        
        return photos
    }
}

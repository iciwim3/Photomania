//
//  PhotoTableViewCell.swift
//  PhotoBrowserApp
//
//  Created by Sain-R Edwards Jr. on 9/4/17.
//  Copyright © 2017 Appybuildmore. All rights reserved.
//

import UIKit

class PhotoTableViewCell: UITableViewCell {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var captionLabel: UILabel!
    
    var photo: Photo! {
        didSet {
            self.updateUI()
        }
    }

    private func updateUI() {
        photoImageView.image = UIImage(named: photo.name)
        profileImageView.image = UIImage(named: photo.photographerProfileImageName)
        captionLabel.text = photo.caption
        
        // Cosmetics
        profileImageView.layer.cornerRadius = profileImageView.bounds.width / 2.0
        profileImageView.layer.masksToBounds = true
        profileImageView.layer.borderWidth = 0.5
        profileImageView.layer.borderColor = UIColor.lightGray.withAlphaComponent(0.6).cgColor
        profileImageView.layer.shadowOffset = CGSize(width: 0, height: 0)
        profileImageView.layer.shadowOpacity = 1
        profileImageView.layer.shadowRadius = 6
        
        captionLabel.layer.shadowOffset = CGSize(width: 0, height: 0)
        captionLabel.layer.shadowOpacity = 1
        captionLabel.layer.shadowRadius = 6
        
    }
}

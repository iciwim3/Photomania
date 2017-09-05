//
//  PhotosViewController.swift
//  PhotoBrowserApp
//
//  Created by Sain-R Edwards Jr. on 9/4/17.
//  Copyright © 2017 Appybuildmore. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var photos = Photo.downloadAllPhotos()
    
    struct Storyboard {
        static let photoCell = "PhotoCell"
        static let defaultRowHeight: CGFloat = 250.0
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.rowHeight = Storyboard.defaultRowHeight
    }

}

extension PhotosViewController : UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.photoCell) as! PhotoTableViewCell
        
        let photo = self.photos[indexPath.row]
        
        cell.photo = photo
        
        return cell
    }
    
}

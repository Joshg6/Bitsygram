//
//  ViewController.swift
//  Bitsygram
//
//  Created by JOSHUA GRAHAM on 3/8/19.
//  Copyright © 2019 JOSHUA GRAHAM. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    let imagePicker = UIImagePickerController()
    var imageArray: [Any] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }

 
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1    }
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CollectionViewCell
        cell.imageView.image = imageArray[indexPath.item] as? UIImage
        return cell
    }
    
    



//
//  CollectionViewController.swift
//  Bitsygram
//
//  Created by JOSHUA GRAHAM on 3/11/19.
//  Copyright © 2019 JOSHUA GRAHAM. All rights reserved.
//

import UIKit
import Photos

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    let imagePicker = UIImagePickerController()
    var imageArray: [UIImage] = []
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self

    }

   

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return imageArray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let Cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CollectionViewCell
//        Cell.imageView.image = imageArray[indexPath.item] as? UIImage
        Cell.imageView.image = imageArray[indexPath.item]
        return Cell
    }
    
    @IBAction func takePhoto(_ sender: UIBarButtonItem) {
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            imagePicker.sourceType = UIImagePickerController.SourceType.camera
        }
        else
        {
            imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
        }
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
           imageArray.append(pickedImage)
            collectionView.reloadData() // but did we reload the a;sdkfgja;sldgh alksdjgf;lkasdfkasdfing collection view. asdfasdf
        }
        
         imagePicker.dismiss(animated: true, completion: nil)
    }

    

}


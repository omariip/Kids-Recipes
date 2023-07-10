//
//  p2.swift
//  FoodRecipeProject
//
//  Created by Omar Abou Chaer on 2022-04-05.
//

import UIKit

class p2: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var recipeCollectionView: UICollectionView!
    
    @IBOutlet weak var recipeButton: UIButton!
    
    // store images inside an array to loop over them
    var images = ["recipeListR1", "recipeListR2", "recipeListR3", "recipeListR4", "recipeListR5", "recipeListR6", "recipeListR7"]
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // we have number of items the same as images number in the array
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = recipeCollectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! CollectionViewCell
        
        cell.collectionImageView.image = UIImage(named: images[indexPath.row])
        
        // allow clicks on each item
        cell.contentView.isUserInteractionEnabled = false
        self.recipeCollectionView.backgroundColor = .clear
        
        return cell
    }
    
    // if a recipe is selected
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        // perform a segue to the viewcontroller with identifier same as the recipe clicked
        let segue = "p" + String(indexPath.row+3)
        performSegue(withIdentifier: segue, sender:self)
        
      }

    override func viewDidLoad() {
        super.viewDidLoad()

        recipeCollectionView?.delegate = self
        recipeCollectionView?.dataSource = self
    }
}

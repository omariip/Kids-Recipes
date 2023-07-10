//
//  fullRecipe4.swift
//  FoodRecipeProject
//
//  Created by Omar Abou Chaer on 2022-04-06.
//

import UIKit
import CoreData

class fullRecipe4: UIViewController {

    @IBOutlet weak var recipeLabel: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // fetching recipe from core data
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context: NSManagedObjectContext = appDelegate.persistentContainer.viewContext
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Recipe")
        do{
            let results:NSArray = try context.fetch(request) as NSArray
            for result in results {
                let rec = result as! Recipe
                recipeLabel.text = rec.r4
            }
        } catch {
            print("fetch fail")
        }
    }
}

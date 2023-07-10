//
//  p10.swift
//  FoodRecipeProject
//
//  Created by Omar Abou Chaer on 2022-04-05.
//

import UIKit

class p10: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var recipeTableView: UITableView!
    
    // storing the list of references inside an array to loop over it
    var list = ["https://www.freepik.com/vectors/bread-cartoon - Bread cartoon vector created by pch.vector - www.freepik.com", "https://www.freepik.com/vectors/vegetable-oil - Vegetable oil vector created by valadzionak_volha - www.freepik.com", "https://www.freepik.com/vectors/background - Background vector created by pch.vector - www.freepik.com", "https://www.freepik.com/vectors/food - Food vector created by freepik - www.freepik.com", "https://www.freepik.com/vectors/chef-cartoon - Chef cartoon vector created by macrovector - www.freepik.com", "https://www.freepik.com/vectors/design - Design vector created by macrovector - www.freepik.com", "https://www.freepik.com/vectors/background - Background vector created by pch.vector - www.freepik.com", "https://www.freepik.com/vectors/food - Food vector created by macrovector - www.freepik.com", "https://www.freepik.com/vectors/food - Food vector created by terdpongvector - www.freepik.com", "https://www.freepik.com/vectors/food - Food vector created by pikisuperstar - www.freepik.com", "https://www.thursdaynightpizza.com/how-to-make-pizza-with-kids/", "https://www.lifeloveandsugar.com/moist-vanilla-cupcakes/", "https://www.simplyrecipes.com/recipes/avocado_lettuce_tomato_sandwich_alt/", "https://www.bbcgoodfood.com/recipes/cooking-kids-spaghetti-meatballs-hidden-veg-sauce", "https://www.archanaskitchen.com/green-beans-egg-scramble-recipe", "https://www.bbcgoodfood.com/recipes/leek-potato-soup", "https://www.bbcgoodfood.com/recipes/layered-rainbow-salad-pots"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // number of rows = number of items in array
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        tableViewCell.recipeLabel.text = list[indexPath.row]
        
        tableViewCell.recipeLabel?.numberOfLines = 0
        tableViewCell.recipeLabel?.lineBreakMode = .byWordWrapping
        
        return tableViewCell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        recipeTableView?.delegate = self
        recipeTableView?.dataSource = self
    }
}

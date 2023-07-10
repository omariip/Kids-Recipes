//
//  TableViewCell.swift
//  FoodRecipeProject
//
//  Created by Omar Abou Chaer on 2022-04-05.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var recipeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}

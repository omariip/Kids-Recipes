//
//  Recipe.swift
//  FoodRecipeProject
//
//  Created by Omar Abou Chaer on 2022-04-06.
//

import CoreData

@objc(Recipe2)
class Recipe2: NSManagedObject {
    @NSManaged var id: Int32
    @NSManaged var r1: String!
    @NSManaged var r2: String!
    @NSManaged var r3: String!
    @NSManaged var r4: String!
    @NSManaged var r5: String!
    @NSManaged var r6: String!
    @NSManaged var r7: String!
}

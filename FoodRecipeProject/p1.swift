//
//  p1.swift
//  FoodRecipeProject
//
//  Created by Omar Abou Chaer on 2022-04-05.
//

import UIKit
import CoreData

class p1: UIViewController {

    @IBAction func clicked(_ sender: Any) {
        
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context : NSManagedObjectContext = appDelegate.persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<Recipe>(entityName: "Recipe")
        
        let count = (try? context.count(for: fetchRequest))
        
        //if there are entities
        if count! > 0 {
            print("no fetch")
            return //exit the function and do nothing
        }
        
        // if count is not bigger than zero, we will start saving the recipes to core data
        print("performing fetch")
        let entity = NSEntityDescription.entity(forEntityName: "Recipe", in: context)
        
        let newRecipe = Recipe2(entity: entity!, insertInto: context)
        newRecipe.id = 1
        newRecipe.r1 =
        """
Ingredients

        · 1 (14- to 16-ounce) ball pizza dough · 1½ cups super-easy marinara sauce (or your favorite pizza sauce)
        
        · 6 ounces mozzarella, Jack, Colby, or cheddar cheese, grated or cut into ½-inch cubes

        · Toppings of your choice (sliced bell peppers, onions, mushrooms, olives, roasted red peppers; blanched broccoli or cauliflower florets; chopped artichokes, cooked bacon, cooked chicken; cooked and crumbled sausage; sliced pepperoni or other cured meats; sun-dried tomatoes; etc.)

        · Extra-virgin olive oil

        · Salt and freshly ground black pepper

        · Condiments for serving (ranch dressing, hot sauce, etc.)

Instructions

        1. Preheat the oven to 500°F. Line two large rimmed baking sheets with parchment paper or grease them with a little olive oil.

        2. Prep your toppings while the oven preheats, and place them all in separate bowls on a counter or table within easy reach of each pizza maker.

        3. Cut the ball of dough into 4 equal-size pieces. Give one piece of dough to each person and let them roll, stretch, or press it out to a 6- to 8-inch circle. Try to avoid overworking the dough; encourage everyone to form their pieces into pizza-size circles and then get right to topping.

        4. Place two rounds of dough on each baking sheet and let each person top their pizzas however they like! No combination of ingredients is off limits (as long as there's enough for everyone). As a general rule, two or three spoonfuls of sauce is plenty for individual pizzas. As far as the other toppings go, however, there are no limits! (Just know that the crust might be flimsy and wet in the middle if you pile on too much. Encourage your fellow pizza makers to grab pinches or spoonfuls rather than handfuls of toppings.) Pro tip: Making pizza faces (see photo above) or other patterns with colorful toppings will prevent pizza makers from overloading their crusts.

        5. Transfer the baking sheets to the oven. Bake the pizzas for 10 to 15 minutes, rotating them halfway through, until the crust is golden and the cheese begins to brown in spots.

        6. Remove the pizzas from the oven. Drizzle the pizzas with a little olive oil and season with a pinch of salt and a grind or two of black pepper if desired. Let them cool for a few minutes before slicing.

        7. Serve the pizzas on their own or with ranch dressing, hot sauce, or other condiments for dipping/topping.
"""
        newRecipe.r2 =
        """
Ingredients

    · 2 1/2 cups (325g) all purpose flour

    · 2 cups (414g) sugar

    · 3 tsp baking powder

    · 1 tsp salt

    · 1 cup (240ml) milk

    · 1/2 cup (120ml) vegetable oil

    · 1 tbsp vanilla extract

    · 2 large eggs

    · 1 cup (240ml) water*

VANILLA FROSTING

    · 1 cup (224g) unsalted butter, room temperature

    · 4 cups (460g) powdered sugar

    · 1 1/2 tsp vanilla extract

    · 2–3 tbsp (30-45ml) water or milk

    · pinch of salt

Instructions

    1. Preheat oven to 350°F (176°C) and prepare a cupcake pan with liners.
    2. Add the flour, sugar, baking powder and salt to a large mixer bowl and combine. Set aside.
    3. Add the milk, vegetable oil, vanilla extract and eggs to a medium sized bowl and combine.
    4. Add the wet ingredients to the dry ingredients and beat until well combined.
    5. Slowly add the water to the batter and mix on low speed until well combined. Scrape down the sides of the bowl as needed to make sure everything is well combined. Please note that the batter will be very thin.
    6. Fill the cupcake liners about half way and bake for 15-17 minutes, or until a toothpick comes out with a few moist crumbs.
    7. Remove the cupcakes from oven and allow to cool for 2 minutes, then remove to a cooling rack to finish cooling.
    8. To make the frosting, beat the butter in a large mixer bowl until smooth.
    9. Add 2 cups of powdered sugar and mix until smooth.
    10. Add the vanilla extract and 1 tablespoon of water or milk and mix until smooth.
    11. Add remaining powdered sugar and mix until smooth.
    12. Add remaining water or milk, as needed, and salt and mix until smooth.
    13. Pipe the frosting onto the cupcakes.

"""
        newRecipe.r3 =
        """
· Toasted whole grain bread

· Sliced avocado

· Lettuce (Boston Bibb or butter lettuce work well)

· Sliced fresh tomato

· Kosher salt

· Mayonnaise

· For each sandwich, toast two slices of whole grain bread. While the bread is toasting, slice your tomato and avocado.

· Slather as much (or little) mayonnaise as you like on one side of each slice of toasted bread. Add a layer of sliced avocado and sprinkle a little kosher salt over it. Add a layer of lettuce and a layer of sliced tomatoes. Sprinkle a little salt over the tomatoes too.

· Top with the second slice of toasted bread. Cut the sandwich in half if you want, to make it easier to eat. Enjoy!
"""
        newRecipe.r4 =
        """
Ingredients:
    · 200ml / 1 cup milk (dairy or non dairy)

    · 100g / 0.5 cup plain yogurt (dairy or non dairy)

    · 1 banana (fresh or frozen)

    · 250g / 8oz mixed frozen berries

    · 100g / 0.5 cup cooked quinoa

    · 0.5 tsp honey

INSTRUCTIONS

    Add all the ingredients to a blender and blitz until smooth. You can add more or less honey depending on how sweet you like your smoothie to be

"""
        newRecipe.r5 =
        """
Ingredients

    For the meatballs

    • 300g good quality pork sausage (about 4 large or 8 chipolatas)

    • 500g lean beef mince

    • 1 small onion , coarsely grated

    • 1 carrot , finely grated

    • 1 tbsp dried oregano

    • 50g parmesan , finely grated, plus extra to serve

    • 1 medium egg

    • 1 tbsp olive oil

    
    For the tomato sauce

    • 1 tbsp olive oil

    • 3 garlic cloves , finely grated

    • 1 tbsp tomato purée

    • pinch caster sugar

    • splash red wine vinegar

    • 2x tins chopped tomato

    
    To serve

    . cooked the past-spaghetti

Method

· STEP 1

    Squeeze all the sausage meat out of the sausage skins into a large bowl and add the mince. Tip all the rest of the meatball ingredients, except the olive oil, into the bowl and season with black pepper then squish everything together through your hands until completely mixed. Keep an eye on younger children to make sure they don’t taste any of the raw mix.

· STEP 2

    Roll the meatball mix into walnut-sized balls and place them on a plate – this is a job children as young as 2 can help with and a great job to help teach older children basic division.

· STEP 3

    While the children are rolling the meatballs make the sauce. Heat the oil in a large saucepan. Add the courgette and garlic and cook for 5 mins until soft and mushy. Stir in the tomato puree, sugar and vinegar leave for 1 min then tip in the tomatoes and simmer for 5 mins. If your children like courgettes then you can leave the sauce chunky. But if, like mine, they hate courgettes then blitz the sauce with a hand blender – either way continue to simmer sauce gently while you cook the meatballs. If your child is confident with heat, from 7+ they can cook the sauce with supervision.

· STEP 4

    Heat the oil in a large frying pan and, working in batches, brown the meatballs on all sides then pop them into the sauce – continue to simmer the sauce for 15 mins, stirring very gently until the meatballs are cooked through. Serve with cooked spaghetti, extra grated Parmesan and a few torn basil leaves your child has picked and torn.
"""
        newRecipe.r6 =
        """
Ingredients

    · 3 Whole Eggs

    · 300 grams Green beans (French Beans) , chopped

    · 1 teaspoon Cumin seeds (Jeera)

    · 1/2 teaspoon Turmeric powder (Haldi)

    · 1 teaspoon Black pepper powder

    · 1 Green Chilli , chopped

    · Salt , to taste

    · Oil


Method

    · To begin making the Green Beans And Scrambled Egg Recipe, heat a saucepan with oil, once it is hot enough, add cumin seeds and allow it to sizzle.

    · Once the cumin seeds have crackled add chopped green beans and sprinkle salt. Saute for a minute and allow it to cook for few minutes till the beans turn soft.

    · Once the beans are cooked, break the egg slowly one by one, sprinkle turmeric, pepper powder, green chilli and salt to taste.

    · Keep stirring until the eggs and green beans come together and scramble is well cooked.

    · Once the egg is cooked turn off the heat . Transfer into a serving bowl and serve Green Beans And Scrambled Egg Recipe warm.

    · Serve the Green Beans And Scrambled Egg Recipe along
"""
        newRecipe.r7 =
        """
Ingredients

    · 50g butter

    · 1 onion, diced

    · 1kg Albert Bartlett Rooster Potatoes, peeled and chopped into 1 inch pieces

    · 1 litre hot vegetable stock

    · 125ml single cream

    · handful of fresh parsley

Method

    · Add half of the butter and the onions to a large saucepan and fry for 2-3 minutes until the onions start to soften.

    · Add the potatoes and stock, bring to the boil and simmer for 10-12 minutes until the potatoes are soft and cooked through.

    · Remove from the heat and then use a stand blender or hand blender to blitz the soup until smooth.

    · Add the cream and remainder of the butter and stir.

    · Serve immediately with some chopped parsley on top
"""
        
        do {
            // save recipes
            try context.save()
            print("success")
            
        } catch {
            print("context save error")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

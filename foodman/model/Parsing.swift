//
//  Parsing.swift
//  foodman
//
//  Created by Jansen Wong on 5/26/19.
//  Copyright © 2019 foodman corp. All rights reserved.
//

import Foundation

struct Container: Codable{
    let meals: [Meal]
}

struct Meal: Codable{
    let strMeal: String
    let strMealThumb: String
    let idMeal: String
}

func getMeals(name: String) -> String {
    var mealListData = String()
    if let url = URL(string: "https://www.themealdb.com/api/json/v1/1/filter.php?i=\(name)") {
        
        do {
            let contents = try Data(contentsOf: url)
            
            do {
                let decoder = JSONDecoder()
                let jData: Container = try decoder.decode(Container.self, from: contents)
                
                for meal in jData.meals {
                    // Here I want to get an array of the json data
                    print(meal.strMeal)
                    mealListData += meal.strMeal + "\n"
                    //mealListData.append(meal.strMeal)
                }
                
            } catch {
                print(error.localizedDescription)
            }
            
        } catch {
            print(error.localizedDescription)
        }
    
   
}

     return mealListData
    
}

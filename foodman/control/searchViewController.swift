//
//  searchViewController.swift
//  foodman
//
//  Created by Jansen Wong on 5/25/19.
//  Copyright © 2019 foodman corp. All rights reserved.
//

import UIKit

class HeadlineTableViewCell: UITableViewCell {
    @IBOutlet weak var headlineTextView: UILabel!
    
}

class searchViewController: UITableViewController, UITextFieldDelegate {
    
    var temporaryMealList = [Meal]()
    
    @IBOutlet weak var ourLabel: UITextView!
    @IBOutlet weak var textFieldName: UITextField!
    @IBAction func buttonPressed(_ sender: Any) {
        print("button pressed")
        //ourLabel.text = getMeals(name: textFieldName.text!)
        temporaryMealList = getMeals(name: textFieldName.text!)
    }
    
    //@IBOutlet weak var searchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        //ourLabel.text = getMeals(name: textFieldName.text!)
        return true
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return temporaryMealList.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
            as! HeadlineTableViewCell
        
        cell.headlineTextView?.text = temporaryMealList[indexPath.row].strMeal
        
        return cell
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

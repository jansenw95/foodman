//
//  searchViewController.swift
//  foodman
//
//  Created by Jansen Wong on 5/25/19.
//  Copyright © 2019 foodman corp. All rights reserved.
//

import UIKit

class searchViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var ourLabel: UITextView!
    @IBOutlet weak var textFieldName: UITextField!
    @IBAction func buttonPressed(_ sender: Any) {
        print("button pressed")
        ourLabel.text = getMeals(name: textFieldName.text!)
    }
    
    //@IBOutlet weak var searchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        ourLabel.text = getMeals(name: textFieldName.text!)
        return true
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

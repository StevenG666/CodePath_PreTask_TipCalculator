//
//  SettingViewController.swift
//  Prework
//
//  Created by Steven Guo on 1/14/22.
//

import UIKit

class SettingViewController: UIViewController {
    
    @IBOutlet weak var tipTextField1: UITextField!
    @IBOutlet weak var tipTextField2: UITextField!
    @IBOutlet weak var tipTextField3: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    /*
    Note: I Commented out this part of code because I need to submit my files on github with required features while the extra features still in development. Thanks for understanding
     
    // Save Tip Percentage Data
    let defaults1 = UserDefaults.standard
    defaults1.set(tipTextField1.text, forkey:"myString1")
    defaults1.synchronize()
    
    
    let defaults2 = UserDefaults.standard
    defaults2.set(tipTextField2.text, forkey:"myString2")
    defaults2.synchronize()
    */
}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

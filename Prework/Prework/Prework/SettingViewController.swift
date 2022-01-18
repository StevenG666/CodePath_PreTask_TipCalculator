//
//  SettingViewController.swift
//  Prework
//
//  Created by Steven Guo on 1/14/22.
//
//  Corrected Codes Suggested by CodePath TA Alexander Roman

import UIKit

class SettingViewController: UIViewController {
    
    // Text Mutable Objects
    @IBOutlet weak var tipTextField1: UITextField!
    @IBOutlet weak var tipTextField2: UITextField!
    @IBOutlet weak var tipTextField3: UITextField!
    
    // Text Immutable Objects
    @IBOutlet weak var SetDefaultTips: UILabel!
    @IBOutlet weak var TipTextLabel1: UILabel!
    @IBOutlet weak var TipTextLabel2: UILabel!
    @IBOutlet weak var TipTextLabel3: UILabel!
    
    // Declare as a class member and serve as a dictionary (Hash Table) with key value pairing
    var defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // It tells us when a view will be deleted from memory so when can use it to do some last minute stuff such as saving changes
    override func viewWillDisappear(_ animated: Bool) {
        // Tell default to save the data we set
        defaults.synchronize()
    }
    
    // Save the default tip 1 after a user have edited
    @IBAction func SetDefaultTip1(_ sender: Any) {
        if tipTextField1.text != ""{
            defaults.set(tipTextField1.text, forKey:"Tip1")
        }
    }
    
    // Save the default tip 2 after a user have edited
    @IBAction func SetDefaultTip2(_ sender: Any) {
        if tipTextField2.text != ""{
        defaults.set(tipTextField2.text, forKey:"Tip2")
        }
    }
    
    // Save the default tip 3 after a user have edited
    @IBAction func SetDefaultTip3(_ sender: Any) {
        if tipTextField3.text != ""{
            defaults.set(tipTextField3.text, forKey:"Tip3")
        }
    }
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

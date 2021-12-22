//
//  ViewController.swift
//  DataPassingUsingProtocols
//
//  Created by Radhika Chilukuri on 21/12/21.
//

import UIKit

class FirstViewController: UIViewController,SecondViewControllerDelegate {
    func getUserName(data: String) {
        username.text = data
    }
    
    
    
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
   
    
@IBAction func didLoginTapped(_ sender: Any) {
    performSegue(withIdentifier: "Segue", sender: self)
    username.text = ""
    password.text = ""
    
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondVC = segue.destination as! SecondViewController
        secondVC.nameLabel = username.text!
        //secondVC.data = username.text!
        secondVC.delegate = self
       
    }
    
}





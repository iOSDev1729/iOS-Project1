//
//  SecondViewController.swift
//  DataPassingUsingProtocols
//
//  Created by Radhika Chilukuri on 21/12/21.
//

import UIKit

protocol SecondViewControllerDelegate {
    func getUserName(data: String)
}

class SecondViewController: UIViewController {
    
    @IBOutlet weak var username: UILabel!
    
    @IBOutlet weak var userEnteredText: UITextField!
    
    var nameLabel = ""
    
    var data = ""
    
    var delegate:SecondViewControllerDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userEnteredText.text = data

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        username.text = nameLabel
    }

    @IBAction func goButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "ThirdSegue", sender: self)
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let thirdVC = segue.destination as! ThirdViewController
        
        
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        
        delegate?.getUserName(data: userEnteredText.text!)
        dismiss(animated: true, completion: nil)
        self.navigationController?.popViewController(animated: true)
        
        /*if let nav = self.navigationController {
            nav.popViewController(animated: true)
            } else {
                self.dismiss(animated: true, completion: nil)
            }
        if (delegate != nil) {
            //let userInputData = userEnteredText.text!
            delegate?.getUserName(data: data)
            print("User Entered input in second VC")
            
        }*/
        
    }
    
}


//
//  SignupViewController.swift
//  TopWalker
//
//  Created by Hassan Amjad on 4/27/21.
//

import UIKit
import Parse
class SignupViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var userField: UITextField!
    @IBOutlet weak var passField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nameField.layer.cornerRadius = 15
        nameField.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        nameField.layer.borderWidth = 1
        nameField.clipsToBounds = true
        passField.layer.cornerRadius = 15
        passField.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        passField.layer.borderWidth = 1
        passField.clipsToBounds = true
        userField.layer.cornerRadius = 15
        userField.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        userField.layer.borderWidth = 1
        userField.clipsToBounds = true
        
        
        nameField.attributedPlaceholder = NSAttributedString(string: "Enter Full Name",
                                     attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        passField.attributedPlaceholder = NSAttributedString(string: "Choose Password",
                                     attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        userField.attributedPlaceholder = NSAttributedString(string: "Choose Username",
                                     attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
    }
    
    @IBAction func onSignUp(_ sender: Any) {
        let user = PFUser()
        user.username = userField.text
        user.password = passField.text
        
        user.signUpInBackground { (success, error) in
            if success{
                self.performSegue(withIdentifier: "signupSegue", sender: nil)
            } else{
                print("Error: \(error?.localizedDescription)")
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

}

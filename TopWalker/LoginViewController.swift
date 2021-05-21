//
//  LoginViewController.swift
//  TopWalker
//
//  Created by Hassan Amjad on 4/27/21.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    
    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameField.layer.cornerRadius = 15
        usernameField.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        usernameField.layer.borderWidth = 1
        usernameField.clipsToBounds = true
        passwordField.layer.cornerRadius = 15
        passwordField.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        passwordField.layer.borderWidth = 1
        passwordField.clipsToBounds = true
        
        usernameField.attributedPlaceholder = NSAttributedString(string: "USERNAME",
                                     attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        passwordField.attributedPlaceholder = NSAttributedString(string: "PASSWORD",
                                     attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSignIn(_ sender: Any) {
        let username = usernameField.text!
        let password = passwordField.text!
        
        PFUser.logInWithUsername(inBackground: username, password: password) { (user, error) in
            if user != nil {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
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

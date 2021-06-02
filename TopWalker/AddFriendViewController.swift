//
//  AddFriendViewController.swift
//  TopWalker
//
//  Created by Hassan Amjad on 5/18/21.
//

import UIKit
import Parse
class AddFriendViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate  {
    
    @IBOutlet weak var userNameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        userNameField.layer.cornerRadius = 15
        userNameField.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        userNameField.layer.borderWidth = 1
        userNameField.clipsToBounds = true
        
        userNameField.attributedPlaceholder = NSAttributedString(string: "ENTER USERNAME ",
                                     attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
    }

    
    @IBAction func onOkButton(_ sender: Any) {

//        var query = PFUser.query()
//        query!.whereKey("email", equalTo:"email@example.com")
//        var users = query!.findObjects()
        
        let friend = PFObject(className: "Friends")

        friend["username"] = "@" + userNameField.text!
        friend["author"] = PFUser.current()

        friend.saveInBackground() { (success,error) in
            if success{
                self.dismiss(animated: true, completion: nil)
                print("saved")
            } else {
                print( "not saved ! error !")
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

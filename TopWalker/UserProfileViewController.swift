//
//  UserProfileViewController.swift
//  TopWalker
//
//  Created by Hassan Amjad on 5/20/21.
//

import UIKit
import Parse

class UserProfileViewController: UIViewController {

    @IBOutlet weak var nameOfUser: UILabel!
    @IBOutlet weak var stepCounts: UILabel!
    @IBOutlet weak var winCounter: UILabel!
    @IBOutlet weak var noOfFriends: UILabel!
    
    var friends = [PFObject]()
    override func viewDidLoad() {
        super.viewDidLoad()

        
   /*    var query = PFUser.query
        var currentUser = PFUser.currentUser()
        query.whereKey("username", equalTo: currentUser.username)
        query.getFirstObjectInBackgroundWithBlock {
          (object: PFObject?, error: NSError?) -> Void in
          if error != nil || object == nil {
            println("The getFirstObject request failed.")
          } else {
            // The find succeeded.
                    self.intakeCode = object["IntakeCode"] as! String!

            println("Successfully retrieved the object.")
          }
        }*/
        // Do any additional setup after loading the view.
//        let user =  PFUser.self
//        let user =  PFUser.currentUser()!["username"] as? String
//        self.nameOfUser.text = user.
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

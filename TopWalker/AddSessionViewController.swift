//
//  AddSessionViewController.swift
//  TopWalker
//
//  Created by Dong Kelly on 5/28/21.
//

import UIKit
import Parse

class AddSessionViewController: UIViewController {

    @IBOutlet weak var sessionId: UITextField!
    
    @IBOutlet weak var people: UITextField!
    
    @IBOutlet weak var weeks: UITextField!
    
    @IBOutlet weak var joinSessionId: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onCreateButton(_ sender: Any) {
        let session = PFObject(className: "Sessions")

        session["sessionId"] = sessionId.text!
        session["author"] = PFUser.current()

        session.saveInBackground() { (success,error) in
            if success{
                self.dismiss(animated: true, completion: nil)
                print("session saved")
            } else {
                print( "session not saved ! error !")
            }
        }
    }
    
    @IBAction func onJoinButton(_ sender: Any) {
        let session = PFObject(className: "Sessions")

        session["sessionId"] = joinSessionId.text!
        session["author"] = PFUser.current()

        session.saveInBackground() { (success,error) in
            if success{
                self.dismiss(animated: true, completion: nil)
                print("session saved")
            } else {
                print( "session not saved ! error !")
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

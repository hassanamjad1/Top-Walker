//
//  FriendlistViewController.swift
//  TopWalker
//
//  Created by Hassan Amjad on 4/27/21.
//

import UIKit
import Parse

class FriendlistViewController: UIViewController, UITableViewDelegate,  UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    
    
    var friends = [PFObject]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        let query = PFQuery(className: "Friends")
        query.includeKey("author")
        query.limit = 20


        query.findObjectsInBackground{ (friends, error) in
            if friends != nil {
                self.friends = friends!
                self.tableView.reloadData()
            }
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count

    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell") as! FriendCell

        let friend = friends[indexPath.row]

        let user = friend["author"] as! PFUser
        cell.usernamme.text = friend["username"] as? String
        

        return cell
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

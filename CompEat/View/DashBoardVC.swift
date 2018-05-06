//
//  DashBoardVC.swift
//  CompEat
//
//  Created by Steven on 5/5/18.
//  Copyright © 2018 Steven. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class DashBoardVC: UIViewController {

    //@IBOutlet weak var bar: UIImageView! //bar at the top of the screen.
    
    
    //code for getting some user attributes
    /*
     if let user = user {
     // The user's ID, unique to the Firebase project.
     // Do NOT use this value to authenticate with your backend server,
     // if you have one. Use getTokenWithCompletion:completion: instead.
     let uid = user.uid
     let email = user.email
     let photoURL = user.photoURL
     // ...
     }
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.bar.image = UIImage(named: "bar")
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

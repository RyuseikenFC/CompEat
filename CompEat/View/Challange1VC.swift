//
//  Challange1VC.swift
//  CompEat
//
//  Created by Steven on 5/5/18.
//  Copyright © 2018 Steven. All rights reserved.
//

import UIKit

class Challange1VC: UIViewController {

    
    var seconds = 20
    var timer = Timer()
    
    @IBOutlet weak var imgImage: UIImageView!
    @IBOutlet var complete: UILabel!
    @IBOutlet weak var miles: UILabel!
    @IBOutlet weak var start_challange: UIImageView!
    //@IBOutlet weak var dog2: UIImageView!
    
    
    override func viewDidLoad() {
        complete.isHidden = true
       // dog2.isHidden = true
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func startWalk(_ sender: Any) {
        UIView.animate(withDuration: 10, animations: {

            self.imgImage.frame.origin.x += 110
            self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(Challange1VC.counter), userInfo: nil, repeats: true)
        }, completion: nil)
        //self.dog2.frame.origin.x  = self.imgImage.frame.origin.x
       // self.dog2.frame.origin.y  = self.imgImage.frame.origin.y
        UIView.animate(withDuration: 10, animations: {
            
            self.imgImage.frame.origin.x += 90
            self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(Challange1VC.counter), userInfo: nil, repeats: true)
        }, completion: nil)
    }
    
    @objc func counter(){
        seconds -= 1
        miles.text = String(seconds) + " miles left"
        
        if(seconds == 1){
            miles.text = String(seconds) + " mile left"
        }
        
        if(seconds == 0){
            timer.invalidate()
            swap()
        }
    }
    
    @IBAction func test(_ sender: Any){
        complete.isHidden = false
        miles.isHidden = true
    }
    
    func swap(){
        complete.isHidden = false
        miles.isHidden = true
        start_challange.isHidden = true
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

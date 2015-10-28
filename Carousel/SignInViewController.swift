//
//  SignInViewController.swift
//  Carousel
//
//  Created by Nathan Garvie on 10/28/15.
//  Copyright © 2015 Nathan. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var signInButtonImage: UIImageView!
    @IBOutlet weak var signInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
    @IBAction func onUsernameEdit(sender: AnyObject) {
        scrollView.contentOffset.y = 70
        
        UIView.animateWithDuration(0.25, animations: {
            self.signInButton.transform = CGAffineTransformMakeTranslation( 0, -190)
            self.signInButtonImage.transform = CGAffineTransformMakeTranslation( 0, -190)
        })
        
    }
   
    @IBAction func onPasswordEdit(sender: AnyObject) {
        scrollView.contentOffset.y = 70
        
        UIView.animateWithDuration(0.25, animations: {
            self.signInButton.transform = CGAffineTransformMakeTranslation( 0, -190)
            self.signInButtonImage.transform = CGAffineTransformMakeTranslation( 0, -190)
        })
    }
    
    @IBAction func onTapBack(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

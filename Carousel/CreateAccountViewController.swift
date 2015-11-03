//
//  CreateAccountViewController.swift
//  Carousel
//
//  Created by Nathan Garvie on 11/2/15.
//  Copyright © 2015 Nathan. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var buttonParentView: UIView!
    @IBOutlet weak var createAccountButton: UIButton!
    @IBOutlet weak var fieldParentView: UIView!
    @IBOutlet weak var loginIndicator: UIActivityIndicatorView!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var termsCheckbox: CheckBox!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        scrollView.contentSize = CGSize(width: 320, height: 600)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        // Do any additional setup after loading the view.
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        // Calculate the maximum scrollview content Offset y
        let maxContentOffsetY = scrollView.contentSize.height - scrollView.frame.size.height
        // Scroll the scrollview up to the maximum contentOffset
        scrollView.contentOffset.y = maxContentOffsetY
        // Enable scrolling while keyboard is shown
        scrollView.scrollEnabled = true
        
        UIView.animateWithDuration(0.25, animations: {
            self.buttonParentView.transform = CGAffineTransformMakeTranslation( 0, -100)
            
        })
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        // Move the buttons back down to it's original position
        buttonParentView.transform = CGAffineTransformIdentity
        // Return the ScrollView to it's original position
        scrollView.contentOffset.y = 0
        // Disable scrolling when keyboard is hidden
        scrollView.scrollEnabled = false
    }
    
    // The scrollView is in the proccess of scrolling...
    @IBAction func scrollViewDidScroll(scrollView: UIScrollView) {
        // If the scrollView has been scrolled down by 50px or more...
        if scrollView.contentOffset.y <= -50 {
            // Hide the keyboard
            view.endEditing(true)
            self.loginIndicator.stopAnimating()
        }
        print("Scroll Happened")
    }
    
    // dismiss keyboard if background tap recognizer tapped
    @IBAction func didTap(sender: AnyObject) {
        view.endEditing(true)
        self.loginIndicator.stopAnimating()
    }
    
    @IBAction func didTapCreateButton(sender: AnyObject) {
        if (usernameField.text!.isEmpty || passwordField.text!.isEmpty) {
            let alertController = UIAlertController(title: "That's empty boss", message: "", preferredStyle: .Alert)
            let cancelAction = UIAlertAction(title: "I'm horrible", style: .Cancel) { (action) in
                // handle cancel response here. Doing nothing will dismiss the view.
            }
            // add the cancel action to the alertController
            alertController.addAction(cancelAction)
            presentViewController(alertController, animated: true) {}
        }
        else if(termsCheckbox.isChecked == false) {
            let alertController = UIAlertController(title: "Agree to our invasive terms!", message: "", preferredStyle: .Alert)
            let cancelAction = UIAlertAction(title: "I've killed a puppy", style: .Cancel) { (action) in
                // handle cancel response here. Doing nothing will dismiss the view.
            }
            // add the cancel action to the alertController
            alertController.addAction(cancelAction)
            presentViewController(alertController, animated: true) {}
        }
        
        else {
            self.performSegueWithIdentifier("createToTutorialSegue", sender: self)
        }
        
    }

    
    @IBAction func onTapBackButton(sender: AnyObject) {
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

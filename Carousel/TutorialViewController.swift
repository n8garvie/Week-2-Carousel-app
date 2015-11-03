//
//  TutorialViewController.swift
//  Carousel
//
//  Created by Nathan Garvie on 10/30/15.
//  Copyright © 2015 Nathan. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var backUpButton: UIButton!
    @IBOutlet weak var checkBox: CheckBox!

    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.delegate = self
        scrollView.contentSize = CGSize(width: 1280, height: 568)
        backUpButton.alpha = 0
        checkBox.alpha = 0
    }

    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        // Get the current page based on the scroll offset
        var page : Int = Int(round(scrollView.contentOffset.x / 320))
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        //turn on button at last page
        if (pageControl.currentPage == 3){
            pageControl.hidden = true
            UIView.animateWithDuration(0.5, animations: { () -> Void in
                self.backUpButton.alpha = 1
                self.checkBox.alpha = 1
            })
            
        }
        
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

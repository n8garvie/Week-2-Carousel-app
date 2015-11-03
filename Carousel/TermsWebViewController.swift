//
//  TermsWebViewController.swift
//  Carousel
//
//  Created by Nathan Garvie on 11/2/15.
//  Copyright © 2015 Nathan. All rights reserved.
//

import UIKit

class TermsWebViewController: UIViewController {
    @IBOutlet weak var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = NSURL (string: "http://www.dropbox.com/terms");
        let requestObj = NSURLRequest(URL: url!);
        webView.scalesPageToFit = true
        webView.loadRequest(requestObj);

        // Do any additional setup after loading the view.
    }
    

    @IBAction func didTapBackButton(sender: AnyObject) {
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

//
//  CheckBox.swift
//  Carousel
//
//  Created by Nathan Garvie on 11/2/15.
//  Copyright © 2015 Nathan. All rights reserved.
//

import UIKit

class CheckBox: UIButton {
    
    //images
    let checkedImage = UIImage(named: "checkbox_complete")
    let unCheckedImage = UIImage(named: "check_box")
    
    //bool propety
    var isChecked:Bool = false{
        didSet{
            if isChecked == true{
                self.setImage(checkedImage, forState: .Normal)
            }else{
                self.setImage(unCheckedImage, forState: .Normal)
            }
        }
    }
    
    
    override func awakeFromNib() {
        self.addTarget(self, action: "buttonClicked:", forControlEvents: UIControlEvents.TouchUpInside)
        self.isChecked = false
    }
    
    
    
    func buttonClicked(sender:UIButton) {
        if(sender == self){
            if isChecked == true{
                isChecked = false
            }else{
                isChecked = true
            }
        }
    }
    
}
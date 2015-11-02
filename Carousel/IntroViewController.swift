
//
//  IntroViewController.swift
//  Carousel
//
//  Created by Nathan Garvie on 10/28/15.
//  Copyright © 2015 Nathan. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var tile1: UIImageView!
    @IBOutlet weak var tile2: UIImageView!
    @IBOutlet weak var tile3: UIImageView!
    @IBOutlet weak var tile4: UIImageView!
    @IBOutlet weak var tile5: UIImageView!
    @IBOutlet weak var tile6: UIImageView!
    
    
    var yOffsets : [CGFloat] =  [-285, -240, -400, -390, -500, -480]
    var xOffsets : [CGFloat] =  [-30, 30, 10, 80, -120, -100]
    var scales : [CGFloat] =    [1, 1.65, 1.7, 1.6, 1.65, 1.65]
    var rotations : [CGFloat] = [-10, -10, 10, 10, 10, -10]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = imageView.image!.size
        //scrollView.contentSize = CGSize(width: 320, height: 1700)
        
        scrollView.showsVerticalScrollIndicator = false
        scrollView.delegate = self
        
        tileTransform()

    }
    
        func scrollViewDidScroll(scrollView: UIScrollView){
            tileTransform()
        }
        
        func tileTransform() {
            
            var offset = CGFloat(scrollView.contentOffset.y)
            var localOffset = offset
            if(localOffset > 568) {
                localOffset = 568
            } else if (localOffset < 0) {
                localOffset = 0
            }
            
            var tx1 = convertValue(localOffset, r1Min: 0, r1Max: 568, r2Min: -30, r2Max: 0)
            var ty1 = convertValue(localOffset, r1Min: 0, r1Max: 568, r2Min: -285, r2Max: 0)
            var scale1 = convertValue(localOffset, r1Min:0, r1Max: 568, r2Min: 1, r2Max: 1)
            var rotation1 = convertValue(localOffset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
            
            var tx2 = convertValue(localOffset, r1Min: 0, r1Max: 568, r2Min: 75, r2Max: 0)
            var ty2 = convertValue(localOffset, r1Min: 0, r1Max: 568, r2Min: -240, r2Max: 0)
            var scale2 = convertValue(localOffset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
            var rotation2 = convertValue(localOffset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
            
            var tx3 = convertValue(localOffset, r1Min: 0, r1Max: 568, r2Min: -66, r2Max: 0)
            var ty3 = convertValue(localOffset, r1Min: 0, r1Max: 568, r2Min: -415, r2Max: 0)
            var scale3 = convertValue(localOffset, r1Min: 0, r1Max: 568, r2Min: 1.7, r2Max: 1)
            var rotation3 = convertValue(localOffset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
            
            var tx4 = convertValue(localOffset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
            var ty4 = convertValue(localOffset, r1Min: 0, r1Max: 568, r2Min: -408, r2Max: 0)
            var scale4 = convertValue(localOffset, r1Min: 0, r1Max: 568, r2Min: 1.6, r2Max: 1)
            var rotation4 = convertValue(localOffset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
            
            var tx5 = convertValue(localOffset, r1Min: 0, r1Max: 568, r2Min: -200, r2Max: 0)
            var ty5 = convertValue(localOffset, r1Min: 0, r1Max: 568, r2Min: -480, r2Max: 0)
            var scale5 = convertValue(localOffset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
            var rotation5 = convertValue(localOffset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
            
            var tx6 = convertValue(localOffset, r1Min: 0, r1Max: 568, r2Min: -15, r2Max: 0)
            var ty6 = convertValue(localOffset, r1Min: 0, r1Max: 568, r2Min: -500, r2Max: 0)
            var scale6 = convertValue(localOffset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
            var rotation6 = convertValue(localOffset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
            
            tile1.transform = CGAffineTransformMakeRotation(CGFloat(Double(rotation1) * M_PI / 180))
            tile1.transform = CGAffineTransformTranslate(tile1.transform, CGFloat(tx1), CGFloat(ty1))
            tile1.transform = CGAffineTransformScale(tile1.transform, CGFloat(scale1), CGFloat(scale1))
            
            tile2.transform = CGAffineTransformMakeRotation(CGFloat(Double(rotation2) * M_PI / 180))
            tile2.transform = CGAffineTransformTranslate(tile2.transform, CGFloat(tx2), CGFloat(ty2))
            tile2.transform = CGAffineTransformScale(tile2.transform, CGFloat(scale2), CGFloat(scale2))
            
            tile3.transform = CGAffineTransformMakeRotation(CGFloat(Double(rotation3) * M_PI / 180))
            tile3.transform = CGAffineTransformTranslate(tile3.transform, CGFloat(tx3), CGFloat(ty3))
            tile3.transform = CGAffineTransformScale(tile3.transform, CGFloat(scale3), CGFloat(scale3))
            
            tile4.transform = CGAffineTransformMakeRotation(CGFloat(Double(rotation4) * M_PI / 180))
            tile4.transform = CGAffineTransformTranslate(tile4.transform, CGFloat(tx4), CGFloat(ty4))
            tile4.transform = CGAffineTransformScale(tile4.transform, CGFloat(scale4), CGFloat(scale4))
            
            tile5.transform = CGAffineTransformMakeRotation(CGFloat(Double(rotation5) * M_PI / 180))
            tile5.transform = CGAffineTransformTranslate(tile5.transform, CGFloat(tx5), CGFloat(ty5))
            tile5.transform = CGAffineTransformScale(tile5.transform, CGFloat(scale5), CGFloat(scale5))
            
            tile6.transform = CGAffineTransformMakeRotation(CGFloat(Double(rotation6) * M_PI / 180))
            tile6.transform = CGAffineTransformTranslate(tile6.transform, CGFloat(tx6), CGFloat(ty6))
            tile6.transform = CGAffineTransformScale(tile6.transform, CGFloat(scale6), CGFloat(scale6))
            
        }
}
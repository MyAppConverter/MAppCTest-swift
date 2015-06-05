//             Converted from obectiveC to Swift Using MyAppConverter.com
//                           02/06/2015
//
//  MoreViewController.h
//  MAppCTest
//
//  Created by Cătălin Crăciun on 06/02/15.
//  Copyright (c) 2015 Cătălin Crăciun. All rights reserved.
//

import UIKit


class MoreViewController :UIViewController
{
    @IBOutlet weak var scrollView:UIScrollView?
    override func viewDidLoad(){
        super.viewDidLoad()
        self.scrollView!.scrollEnabled = true
        self.scrollView!.contentSize = CGSizeMake( 288 ,  500 )
        
    }
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
        
    }
}
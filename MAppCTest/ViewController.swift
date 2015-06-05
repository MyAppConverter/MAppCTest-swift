//             Converted from obectiveC to Swift Using MyAppConverter.com
//                           02/06/2015
//
//  ViewController.h
//  MAppCTest
//
//  Created by Cătălin Crăciun on 06/02/15.
//  Copyright (c) 2015 Cătălin Crăciun. All rights reserved.
//

import UIKit


class ViewController :UIViewController
{
    var miliseconds:CInt?
    var seconds:CInt?
    var minutes:CInt?
    var chrono:NSTimer?
    
    @IBOutlet weak var chronoLabel:UILabel?
    //var _chronoLabel:UILabel?
    func tick(){
        NSLog("Ticking..." )
        miliseconds?++
        if miliseconds >=  100  {
            seconds?++
            miliseconds =  0
            
            
        }
        
        if seconds >=  60  {
            seconds =  0
            minutes?++
            
            
        }
        
        var _minutes:NSString = "00"
        
        var _seconds:NSString = "00"
        
        var _miliseconds:NSString = "00"
        
        if minutes <  10  {
            _minutes = NSString(format:"0%d" , minutes! )
            
            
        }else {
            _minutes = NSString(format:"%d" , minutes!)
            
        }
        
        if seconds <  10  {
            _seconds = NSString(format:"0%d" , seconds!)
            
            
        }else {
            _seconds = NSString(format:"%d" , seconds!)
            
        }
        
        if miliseconds <  10  {
            _miliseconds = NSString(format:"0%d" , miliseconds!)
            
            
        }else {
            _miliseconds = NSString(format:"%d" , miliseconds!)
            
        }
        
        self.chronoLabel!.text = NSString(format:"%@:%@:%@" , _minutes , _seconds , _miliseconds) as String
        
    }
    
    @IBAction func resetButton( sender:AnyObject ){
        NSLog("Reset the chrono!" )
        chrono!.invalidate()
        miliseconds =  0
        seconds =  0
        minutes =  0
        self.chronoLabel!.text = "00:00:00"
        
    }
    @IBAction func startButtonPressed( sender:AnyObject ){
        NSLog("Start the chrono!" )
        var d:NSDate = NSDate(timeIntervalSinceNow:0.010000 )  as NSDate
        
        chrono = NSTimer(fireDate: d , interval: 0.010000 , target:self , selector:Selector("tick") , userInfo:nil , repeats:true )
        var runner:NSRunLoop = NSRunLoop.currentRunLoop() as NSRunLoop
        
        runner.addTimer(chrono! , forMode:NSDefaultRunLoopMode )
        
    }
    @IBAction func stopButtonPressed( sender:AnyObject ){
        NSLog("Stop the chrono!" ) 
        chrono!.invalidate()
        
    }
    override func viewDidLoad(){
        super.viewDidLoad()
        miliseconds =  0 
        seconds =  0 
        minutes =  0 
        
    }
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
        
    }
}
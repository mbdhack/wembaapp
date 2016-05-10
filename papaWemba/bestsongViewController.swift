//
//  bestsongViewController.swift
//  papaWemba
//
//  Created by apple on 4/24/16.
//  Copyright © 2016 appsec. All rights reserved.
//

import UIKit

class bestsongViewController: UIViewController , UIWebViewDelegate {

   
   
    @IBOutlet weak var webview: UIWebView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let url = NSURL(string: "https://www.youtube.com/watch?v=LK_SlBsVBvw&list=PL9704EC189829AA12")
        let requestObj = NSURLRequest(URL: url!)
        webview.loadRequest(requestObj)
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

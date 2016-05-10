//
//  BioViewController.swift
//  papaWemba
//
//  Created by apple on 4/24/16.
//  Copyright © 2016 appsec. All rights reserved.
//

import UIKit

class BioViewController: UIViewController , UIWebViewDelegate{

    @IBOutlet weak var loader: UIActivityIndicatorView!
    
    @IBOutlet var webview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewDidAppear(true)
        let url = NSURL(string: "https://fr.wikipedia.org/wiki/Papa_Wemba")
        let requestObj = NSURLRequest(URL: url!)
       webview.loadRequest(requestObj)
    }
    
    
    func webViewDidStartLoad(webView: UIWebView) {
        loader.hidden = false
        loader.startAnimating()
    }
    
    
    func webViewDidFinishLoad(webView: UIWebView) {
        loader.hidden = true

        loader.stopAnimating()
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

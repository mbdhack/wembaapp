//
//  FactsViewController.swift
//  papaWemba
//
//  Created by apple on 4/24/16.
//  Copyright © 2016 appsec. All rights reserved.
//

import UIKit

class FactsViewController: UIViewController, UITableViewDataSource , UITableViewDelegate {
    @IBOutlet weak var tableview: UITableView!
    
     var facts_array = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        facts_array = ["1. He was born Jules Shungu Webadio.", "2. He inspired the sap movement.", "3. In 2004, he was convicted in France. ","4. He was once jailed in Zaire ." ,"5. He had hit after hit .","6. His conviction in France related to a racket.","7. In 2013, he was rumoured dead."]
        // Do any additional setup after loading the view.
     
        let maxWidth = tableview.visibleCells.reduce(0.0) { (currentMax, cell) -> CGFloat in
            return max(currentMax, cell.contentView.systemLayoutSizeFittingSize(UILayoutFittingCompressedSize).width)
        }
        
        var contentSize = tableview.contentSize
        contentSize.width = maxWidth
        tableview.contentSize = contentSize
        tableview.bounds.size = contentSize    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return facts_array.count
        
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let Temcell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! DetailTableViewCell
    
        
        let data = facts_array[indexPath.row]
        
        // Configure Cell
        Temcell.label?.text = data
        
        Temcell.label!.numberOfLines = 0;
        Temcell.label?.textColor = UIColor.whiteColor()
        
        return Temcell
    
    
    
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

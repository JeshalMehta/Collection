//
//  SecondViewController.swift
//  Collection
//
//  Created by Jeshal Mehta on 03/08/16.
//  Copyright © 2016 Jeshal Mehta. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var viaSeagueLabel: UILabel!
    
    var PassedValue = 0
    
    var viaSeague = ""

    override func viewDidLoad() {
        super.viewDidLoad()

    
        viaSeagueLabel.text = viaSeague
    
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

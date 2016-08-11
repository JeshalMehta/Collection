//
//  ViewController.swift
//  Collection
//
//  Created by Jeshal Mehta on 03/08/16.
//  Copyright © 2016 Jeshal Mehta. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController {

    var array = [String] ()
    var MyValue = 10
    //var buttonArray = [String] ()
    override func viewDidLoad() {
    
        array = ["Chanchal","Ishan","Jeshal","Khemraj","Manisha","Nilemma","Shini","Shivani"]
        // buttonArray = ["Ok","Ok","Ok","Ok","","Ok","Ok","Ok","Ok"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "SendDataSegue") {
            let svc = segue.destinationViewController as! SecondViewController
            
            svc.PassedValue = MyValue
            
            print("PassesValue %d", svc.PassedValue)
        }
    }
    
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        MyValue = indexPath.row
        
        print("Check here values %d", MyValue)
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as UICollectionViewCell
        let label = cell.viewWithTag(1) as! UILabel
        label.text = array[indexPath.row]
        //func prep
       /* var button = cell.viewWithTag(2) as! UIButton
       button.setTitle(buttonArray[indexPath.row], forState: UIControlState) */
        
        return cell
    }


}


//
//  ViewController.swift
//  CornerColors
//
//  Created by Yingcan Chen on 9/15/18.
//  Copyright © 2018 Yingcan Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var View2: UIView!
    
    @IBOutlet weak var View1: UIView!
    
    @IBOutlet weak var View3: UIView!
    
    @IBOutlet weak var View4: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var currentview1index:Int=0
    var currentview2index:Int=1
    var currentview3index:Int=3
    var currentview4index:Int=2
    
    let colors=[UIColor.red,UIColor.blue,UIColor.purple,UIColor.orange]
    
    
    @IBAction func colorchange(_ sender: Any) {
        UIView.animate(withDuration: 1, animations: {self.View1.backgroundColor=self.colors[self.currentview1index]
        }, completion:nil)
        currentview1index+=1
        if currentview1index==colors.count{
            currentview1index=0
        }
        UIView.animate(withDuration: 1, animations: {self.View2.backgroundColor=self.colors[self.currentview2index]
        }, completion:nil)
        currentview2index+=1
        if currentview2index==colors.count{
            currentview2index=0
        }
        UIView.animate(withDuration: 1, animations:{self.View3.backgroundColor=self.colors[self.currentview3index]
        }, completion:nil)
        currentview3index+=1
        if currentview3index==colors.count{
            currentview3index=0
        }
        UIView.animate(withDuration: 1, animations: {self.View4.backgroundColor=self.colors[self.currentview4index]
        }, completion:nil)
        currentview4index+=1
        if currentview4index==colors.count{
            currentview4index=0
        }
    }
}


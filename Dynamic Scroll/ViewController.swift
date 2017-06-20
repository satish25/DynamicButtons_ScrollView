//
//  ViewController.swift
//  Dynamic Scroll
//
//  Created by Satish Kumar on 20/06/17.
//  Copyright © 2017 SatishKumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mScrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        scrollViewSettings()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewSettings() {
        mScrollView.isScrollEnabled = true
        mScrollView.isUserInteractionEnabled = true
        
        let TotlatX = 10
        let TotlaY = 2
        
       var count = 0
        var px = 0
        var py = 0
        
        for _ in 1...TotlaY {
            px = 0
         
            for j in 1...TotlatX {
                count += 1
                
                let Button = UIButton()
                Button.tag = count
                Button.frame = CGRect(x: px+10, y: py+10, width: 100, height: 45)
                Button.backgroundColor = UIColor.black
                Button.setTitle("Hello \(j) ", for: .normal)
                Button.addTarget(self, action: #selector(scrollButtonAction), for: .touchUpInside)
                mScrollView.addSubview(Button)
               px = px + Int(mScrollView.frame.width)/2
            }
            py =  Int(mScrollView.frame.height)
        }
        
        mScrollView.contentSize = CGSize(width: px, height: py)
        
    }

    func scrollButtonAction(sender: UIButton) {
        print("Hello \(sender.tag) is Selected")
    }
}


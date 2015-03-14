//
//  ViewController.swift
//  WebViewApp
//
//  Created by Harish Annam on 14/03/15.
//  Copyright (c) 2015 donitanico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var WebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        processLoadURL()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func processLoadURL(){
        if Reachability.isConnectedToNetwork(){
            let url = NSURL (string: "http://www.amazon.com");
            let requestObj = NSURLRequest(URL: url!);
            WebView.scalesPageToFit = true;
            WebView.loadRequest(requestObj);
        }
        else {
            let alert = UIAlertView()
            alert.title = "Connection Error"
            alert.message = "You are not connected to the Internet"
            alert.addButtonWithTitle("OK")
            alert.show()
        }

    }

}


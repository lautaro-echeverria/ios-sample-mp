//
//  Webview.swift
//  helloWorld1
//
//  Created by Lautaro Echeverria on 06/07/2023.
//  Copyright © 2023 Sue Chung. All rights reserved.
//

import UIKit
import WebKit
import mParticle_Apple_SDK

class WebViewController: UIViewController, WKUIDelegate {
    
    var webView = WKWebView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView(frame: self.view.frame)
        self.view.addSubview(webView)
        MParticle.sharedInstance().initializeWKWebView(webView,bridgeName: "testWebViewLautaro")
        
        let myURL = URL(string: "https://webview-sample-mp.netlify.app/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }


}

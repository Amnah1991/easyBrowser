//
//  ViewController.swift
//  project4
//
//  Created by Amnah Abdulal on 2/26/20.
//  Copyright © 2020 Amnah Abdulal. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController , WKNavigationDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://amnah1991.github.io/myPortfolio/index.html")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }


}


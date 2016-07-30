//
//  ViewController.swift
//  grokRouter
//
//  Created by Christina Moulton on 2015-10-19.
//  Copyright © 2015 Teak Mobile Inc. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.login()
  }
}

extension ViewController {
    
    func login() {
        let loginParam = [
            "email": "admin@aryoii.com",
            "password": "123456"
        ]
        APIRequest.request(withRouter: ESRouter.Login(parameters: loginParam)) { (response, error) in
            if let response = response as? LoginResponse {
                Mobile.sharedInstance.accessToken = response.accessToken
                self.requestMenu()
            }
        }
    }
    
    func requestMenu() {
        APIRequest.request(withRouter: ESRouter.GetAllMenu()) { (response, error) in
            print("get menu done")
        }
    }
}
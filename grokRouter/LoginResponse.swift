//
//  LoginResponse.swift
//  grokRouter
//
//  Created by Khemmachart Chutapetch on 7/31/2559 BE.
//  Copyright © 2559 Teak Mobile Inc. All rights reserved.
//

import Foundation

class LoginResponse: BaseResponse {
    
    var accessToken: String?
    
    required init(withDictionary dict: AnyObject) {
        super.init(withDictionary: dict)
        if let data = dict["data"] as? [String: AnyObject] {
            if let token = data["token"] as? String {
                self.accessToken = token
            }
        }
    }
}
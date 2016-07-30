//
//  RouterMethod.swift
//  grokRouter
//
//  Created by Khemmachart Chutapetch on 7/31/2559 BE.
//  Copyright © 2559 Teak Mobile Inc. All rights reserved.
//

import Foundation
import Alamofire

extension ESRouter {
    
    var method: Alamofire.Method {
        switch self {
        case .RequestOTP:
            return .POST
        case .LoginWithOTP:
            return .POST
        case .Login(_):
            return .POST
        case .GetAllMenu():
            return .GET
        }
    }
}

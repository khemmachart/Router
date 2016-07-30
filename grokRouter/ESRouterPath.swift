//
//  RouterPath.swift
//  grokRouter
//
//  Created by Khemmachart Chutapetch on 7/31/2559 BE.
//  Copyright © 2559 Teak Mobile Inc. All rights reserved.
//

import Foundation
import Alamofire

extension ESRouter {
    
    var path: String {
        switch self {
        case .RequestOTP(_):
            return "/auth/mobile/\(Mobile.sharedInstance.msisdn)/requestOtp"
        case .LoginWithOTP(_):
            return "/auth/mobile/\(Mobile.sharedInstance.msisdn)/loginWithOtp"
        case .Login(_):
            return "/v1/authen/login"
        case .GetAllMenu():
            return "v1/menu/all"
        }
    }
}

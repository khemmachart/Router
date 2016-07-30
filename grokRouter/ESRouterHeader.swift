//
//  RouterHeaders.swift
//  grokRouter
//
//  Created by Khemmachart Chutapetch on 7/31/2559 BE.
//  Copyright © 2559 Teak Mobile Inc. All rights reserved.
//

import Foundation
import Alamofire

extension ESRouter {
    
    func getHeaders() -> [String: String]? {
        switch self {
        case .RequestOTP(_):
            return nil
        case .LoginWithOTP(_):
            return nil
        case .Login(_):
            return nil
        case .GetAllMenu():
            return nil
        }
    }
    
    func setHttpHeaders(inout mutableURLRequest: NSMutableURLRequest) {
        self.addDefaultHttpHeader(&mutableURLRequest)
        if let headers = self.getHeaders() {
            for each in headers.keys {
                mutableURLRequest.setValue(headers[each], forHTTPHeaderField: each)
            }
        }
    }
    
    func addDefaultHttpHeader(inout mutableURLRequest: NSMutableURLRequest) {
        if let accessToken = Mobile.sharedInstance.accessToken {
            mutableURLRequest.setValue(accessToken, forHTTPHeaderField: "x-access-token")
        }
        if let msisdn = Mobile.sharedInstance.msisdn {
            mutableURLRequest.setValue(msisdn, forHTTPHeaderField: "x-msisdn")
        }
        mutableURLRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
    }
}
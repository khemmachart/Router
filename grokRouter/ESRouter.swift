//
//  PostRouter.swift
//  grokRouter
//
//  Created by Christina Moulton on 2016-04-01.
//  Copyright © 2016 Teak Mobile Inc. All rights reserved.
//

import Foundation
import Alamofire

enum ESRouter: URLRequestConvertible {
    
    static let baseURLString = ""
    
    case RequestOTP(parameters:[String: AnyObject])
    case LoginWithOTP(parameters:[String: AnyObject])
    case Login(parameters:[String: AnyObject])
    case GetAllMenu()
    
    // MARK: URLRequestConvertible
    
    var URLRequest: NSMutableURLRequest {
        
        let URL = NSURL(string: ESRouter.baseURLString)!
        let URLRequest = URL.URLByAppendingPathComponent(path)
        var mutableURLRequest = NSMutableURLRequest(URL: URLRequest)
        mutableURLRequest.HTTPMethod = method.rawValue
        setHttpHeaders(&mutableURLRequest)
        
        switch self {
        case .RequestOTP(let parameters):
            return Alamofire.ParameterEncoding.JSON.encode(mutableURLRequest, parameters: parameters).0
        case .LoginWithOTP(let parameters):
            return Alamofire.ParameterEncoding.JSON.encode(mutableURLRequest, parameters: parameters).0
        case .Login(let parameters):
            return Alamofire.ParameterEncoding.JSON.encode(mutableURLRequest, parameters: parameters).0
        case .GetAllMenu():
            return Alamofire.ParameterEncoding.JSON.encode(mutableURLRequest, parameters: nil).0
        }
    }
}


//
//  MobileData.swift
//  grokRouter
//
//  Created by Khemmachart Chutapetch on 7/31/2559 BE.
//  Copyright © 2559 Teak Mobile Inc. All rights reserved.
//

import Foundation

class Mobile: NSObject {
    
    static let sharedInstance = Mobile()
    
    var msisdn: String? = "0926621664"
    var nType = "AIS"
    var accessToken: String?
}
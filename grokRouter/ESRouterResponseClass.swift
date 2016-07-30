//
//  RouterResponseClass.swift
//  grokRouter
//
//  Created by Khemmachart Chutapetch on 7/31/2559 BE.
//  Copyright © 2559 Teak Mobile Inc. All rights reserved.
//

import Foundation

extension ESRouter {
    
    var responseClass: BaseResponse.Type {
        switch self {
        case .Login(_):
            return LoginResponse.self
        default:
            return BaseResponse.self
        }
    }
}


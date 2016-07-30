//
//  APIRequest.swift
//  grokRouter
//
//  Created by Khemmachart Chutapetch on 7/31/2559 BE.
//  Copyright © 2559 Teak Mobile Inc. All rights reserved.
//

import Foundation
import Alamofire

class APIRequest {
    
    static func request(withRouter router: ESRouter, withHandler handler: ((BaseResponse?, NSError?) -> Void)) {
        Alamofire.request(router).responseJSON { response in
            debugPrint(response.result)
            switch response.result {
            case .Success(let JSON):
                let instance: BaseResponse? = router.responseClass.init(withDictionary: JSON)
                handler(instance, nil)
                break
                
            case .Failure(let error):
                handler(nil, error)
                break
            }
        }
    }
}
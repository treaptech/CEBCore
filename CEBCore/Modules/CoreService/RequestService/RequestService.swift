//
//  RequestService.swift
//  CEBCore
//
//  Created by developer on 16.01.2018.
//  Copyright © 2018 cesurb. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper
import CoreData

public class RequestService {
    //    @discardableResult
    //    public func request(
    //        _ url: URLConvertible,
    //        method: HTTPMethod = .get,
    //        parameters: Parameters? = nil,
    //        encoding: ParameterEncoding = URLEncoding.default,
    //        headers: HTTPHeaders? = nil)
    //        -> DataRequest
    //    {
    //        return Alamofire.request(url, method: method, parameters: parameters, encoding: encoding, headers: headers)
    //    }
}

@discardableResult
public func request(
    _ url: URLConvertible,
    method: HTTPMethod = .get,
    parameters: Parameters? = nil,
    encoding: ParameterEncoding = URLEncoding.default,
    headers: HTTPHeaders? = nil)
    -> DataRequest
{
    //    if headers == nil {
    //        headers = Alamofire.SessionManager.defaultHTTPHeaders
    //    }
    //
    
    //    Alamofire.request(url).responseJSON { response in
    //        _ = response.flatMap{ json in
    //            print("test")
    //            _ = "dsa";
    //            //po (json as! [String:Any])["Result"]
    //        }
    //    }
    
    return Alamofire.request(url, method: method, parameters: parameters, encoding: encoding, headers: headers)
}

extension DataRequest {
    
    @discardableResult
    public func responseEntity<T: BaseMappable>(keyPath: String? = nil,
                                                completionHandler: @escaping (DataResponse<T>) -> Void) -> Self {

        
        return responseObject(keyPath: keyPath, completionHandler: completionHandler)
    }
    
    @discardableResult
    public func responseEntity<T: CEBBaseSyncableManagedObject>(keyPath: String? = nil,
                                                completionHandler: @escaping (DataResponse<T>) -> Void) -> Self {
        
        
        return responseObject(keyPath: keyPath, completionHandler: completionHandler)
    }
    
}

//extension Alamofire {
//    func test() -> Void {
//
//    }
//}


//
//  AppUserInfo.swift
//  CEBCore
//
//  Created by developer on 23/10/2017.
//  Copyright © 2017 cesurb. All rights reserved.
//

import Foundation
import ObjectMapper

public class AppUserInfo: Mappable {
    var userId: Int64?
    var name: String?
    var lastName: String?
    var userName: String?
    
    required public init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        userId <- map["userId"]
        name <- map["name"]
        lastName <- map["lastName"]
        userName <- map["userName"]
    }
}

//
//  BaseSyncableManagedObject.swift
//  CEBCore
//
//  Created by developer on 25/10/2017.
//  Copyright © 2017 cesurb. All rights reserved.
//

import UIKit
import CoreData
import Alamofire
import ObjectMapper

public class CEBBaseSyncableManagedObject: NSManagedObject, Mappable {

    var context: NSManagedObjectContext? = nil;
    
    required public init?(map: Map) {
        let ctx = CEBCoreDataStack.sharedInstance.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "CEBBaseSyncableManagedObject", in: ctx)
        super.init(entity: entity!, insertInto: ctx)
        
        mapping(map: map)
    }
    
    override public init(entity: NSEntityDescription, insertInto context: NSManagedObjectContext?) {
        super.init(entity: entity, insertInto: CEBCoreDataStack.sharedInstance.persistentContainer.viewContext)
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        isRemoved <- map["isRemoved"]
        lastModifiedTime <- map["lastModifiedTime"]
        syncStatus <- map["syncStatus"]
        
        mapping(map: map)
    }
    
    
    public func syncData(urlText: String)
    {
        let prm: Parameters = [
            "studentId": 228
        ]
        
        request("http://nodesrvc.little-genius.net/Classroom/GetClassroomByStudentId", method: .post, parameters: prm)
            .responseObject(keyPath: "Result.Classroom") { (response: DataResponse<AppUserInfo>?) in
                if let myResult = response?.result.value {
                    print(myResult.toJSON())
                }
        }
    }
    
    public override func willSave()
    {
        super.willSave()

        print("willSave method has been called!")
        
        if self.isDeleted  && !self.isRemoved {
            self.isRemoved = true;
        }
        
        if self.syncStatus != 1 {
            self.syncStatus = 1
        }
    }
    
    public override func awakeFromInsert()
    {
        self.id = UUID().uuidString
        self.syncStatus = 2
        self.isRemoved = false
        print("awakeFromInsert method has been called!")
    }
    
    public override func didSave()
    {
        super.didSave()
        print("didSave method has been called!")
    }
}

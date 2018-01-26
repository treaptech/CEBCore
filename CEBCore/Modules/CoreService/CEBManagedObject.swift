//
//  CEBManagedObject.swift
//  CEBCore
//
//  Created by developer on 23/10/2017.
//  Copyright © 2017 cesurb. All rights reserved.
//

import UIKit
import CoreData

//public class CEBManagedObject: NSManagedObject {
//
//    enum CodingKeys: String, CodingKey {
//        case property = "json_key"
//    }
//
//    var context: NSManagedObjectContext? = nil;
//
//    override public func didSave() {
//        super.didSave()
//        print("didSave method has been called!")
//    }
//
//
//}

extension CodingUserInfoKey {
    static let context = CodingUserInfoKey(rawValue: "context")
}

class CEBManagedObject: NSManagedObject {
    @NSManaged var name: String
    
//    enum CodingKeys: String, CodingKey {
//        case name
//    }
//    required convenience init(from decoder: Decoder) throws {
//
//        let t=type(of: self)
//        let entityName = EVReflection.swiftStringFromClass(t)
//
//        // Create NSEntityDescription with NSManagedObjectContext
//        guard let contextUserInfoKey = CodingUserInfoKey.context,
//            let managedObjectContext = decoder.userInfo[contextUserInfoKey] as? NSManagedObjectContext,
//            let entity = NSEntityDescription.entity(forEntityName: entityName, in: managedObjectContext) else {
//                fatalError("Failed to decode Person!")
//        }
//        self.init(entity: entity, insertInto: nil)
//
//        // Decode
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        name = try values.decode(String.self, forKey: .name)
//    }
//
//    public required override init(entity: NSEntityDescription, insertInto context: NSManagedObjectContext?) {
//        super.init(entity: entity, insertInto: context)
//    }
//
//    public func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        try container.encode(name, forKey: .name)
//    }
}
//let data = ...
//let context = persistentContainer.newBackgroundContext()
//let decoder = JSONDecoder()
//decoder.userInfo[.context] = context
//
//_ = try decoder.decode(Person.self, from: data)

//extension CEBManagedObject: Encodable {
//    public func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        try container.encode(name, forKey: .name)
//    }
//}


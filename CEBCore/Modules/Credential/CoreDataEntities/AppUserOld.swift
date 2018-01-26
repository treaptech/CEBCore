////
////  AppUser.swift
////  CEBCore
////
////  Created by developer on 21/10/2017.
////  Copyright © 2017 cesurb. All rights reserved.
////
//
//import Foundation
//import CoreData
//import ObjectMapper
//
//public class AppUserOld: CEBBaseSyncableManagedObject
//{
////    @NSManaged var city: String?
////    
////    required public init?(map: Map){
////        print("ResponseJSON: \(map.JSON)")
//////        let ctx = CoreDataManager.sharedInstance.managedObjectContext
//////        
//////        let entity = NSEntityDescription.entity(forEntityName: "Client", in: ctx)
//////        super.init(entity: entity!, insertInto: ctx)
////        
////        mapping(map: map)
////        
////    }
////    
////    
////    public func mapping(map: Map) {
////        
////        city <- map["city"]
////        
////    }
//    required public init?(map: Map) {
//        let ctx = CEBCoreDataStack.sharedInstance.persistentContainer.viewContext
//        let entity = NSEntityDescription.entity(forEntityName: "AppUser", in: ctx)
//        super.init(entity: entity!, insertInto: ctx)
//        
//        mapping(map: map)
//    }
//    
//    override public init(entity: NSEntityDescription, insertInto context: NSManagedObjectContext?) {
//        super.init(entity: entity, insertInto: CEBCoreDataStack.sharedInstance.persistentContainer.viewContext)
//    }
//    
//    override public func mapping(map: Map) {
//        firstName <- map["firstName"]
//        lastName <- map["lastName"]
//        userName <- map["userName"]
//    }
//    
//    
//    public func findOrCreateAppUser(in context1: NSManagedObjectContext) throws -> AppUser {
//        let appUser = AppUser(context: context1)
//        appUser.firstName = "cesur2"
//        appUser.lastName = "bağcı2"
//        appUser.userName = "cesurbagci2"
//        
//        return appUser;
//        
//        
//        
//        /*
//         let request: NSFetchRequest<Tweet> = Tweet.fetchRequest()
//         request.predicate = NSPredicate(format: "unique = %@", twitterInfo.identifier)
//         
//         do {
//         let matches = try context.fetch(request)
//         if matches.count > 0 {
//         assert(matches.count == 1, "Tweet.\(#function) - Database inconsistency.")
//         return matches[0]
//         }
//         } catch {
//         throw error
//         }
//         
//         let tweet = Tweet(context: context)
//         tweet.unique = twitterInfo.identifier
//         tweet.text = twitterInfo.text
//         tweet.created = twitterInfo.created as NSDate
//         tweet.tweeter = try? TwitterUser.findOrCreateTwitterUser(matching: twitterInfo.user, in: context)
//         
//         return tweet
//         */
//    }
//}


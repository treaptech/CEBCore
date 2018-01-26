//
//  AppUserOperation.swift
//  CEBCore
//
//  Created by developer on 23/10/2017.
//  Copyright © 2017 cesurb. All rights reserved.
//

import UIKit

public class AppUserOperation2: CEBBaseOperation {

    let coreDataStack = CEBCoreDataStack.sharedInstance
    
    public func signUp(email: String,
                       firstName: String,
                       lastName: String,
                       userName: String?) -> Bool
    {
        //let appUser = AppUser(context: self.context)
//        let appUser = AppUser(context: coreDataStack.persistentContainer.viewContext)
//        appUser.email = email
//        appUser.firstName = firstName
//        appUser.lastName = lastName
//        appUser.userName = userName
//        
//        //try? containerCore?.viewContext.save()
//        
//        appUser.syncData(urlText: "http://google.com")
//        let appUser = AppUser(context: self.context)
//        appUser.id = UUID().uuidString
//        appUser.isRemoved = false;
        // ilk önce local db e kaydet
        // service call yap
        // local db de item i güncelle.
        
        return true;
    }
    
    public func getAllUsers()
    {
        
    }
    
}

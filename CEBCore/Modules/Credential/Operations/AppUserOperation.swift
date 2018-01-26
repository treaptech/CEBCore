//
//  AppUserOperation.swift
//  CEBCore
//
//  Created by developer on 23/10/2017.
//  Copyright © 2017 cesurb. All rights reserved.
//

import UIKit
import Alamofire

public class AppUserOperation: CEBBaseOperation {
    
    let coreDataStack = CEBCoreDataStack.sharedInstance
    
    @discardableResult
    public func signUp(email: String,
                       firstName: String,
                       lastName: String,
                       userName: String?) -> Bool
    {
        
        
        
        
        // once service i cagir
        let prm: Parameters = [
            "email": "cesurbagci@gmail.com",
            "firstName": "cesur",
            "lastName": "bağcı",
            "userName": "cesurbagci"
        ]
        
//        request("http://localhost:13000/api/credential/signup", method: .get, parameters: prm).responseJSON(completionHandler: { (response) in
//            debugPrint(response)
//          
//            let context = coreDataStack.persistentContainer.newBackgroundContext()
//            let decoder = JSONDecoder()
//            decoder.userInfo[.context] = context
//            
//            let testObj = try decoder.decode(AppUser.self, from: response)
//            debugPrint(testObj)
//        })
        
        
//        request("http://localhost:13000/api/credential/signup", method: .get, parameters: prm).responseEntity { (response: DataResponse<AppUser>) in
//            debugPrint(response)
//
//            if let user = response.result.value {
//                print("User: { username: \(user.userName), name: \(user.lastName) }")
//            }
//        }
        
        
//        let reqSrv = RequestService()
//        reqSrv.request(<#T##url: URLConvertible##URLConvertible#>, method: <#T##HTTPMethod#>, parameters: <#T##Parameters?#>, encoding: <#T##ParameterEncoding#>, headers: <#T##HTTPHeaders?#>)
        
//        request("http://localhost:13000/api/credential/signup", method: .get, parameters: prm).responseObject { (response: DataResponse<AppUser>) in
//            debugPrint(response)
//
//            if let user = response.result.value {
//                print("User: { username: \(user.userName), name: \(user.lastName) }")
//            }
//        }
//
//        request("http://localhost:3000/api/credential/signup", method: .get, parameters: prm)
//            .responseObject(keyPath: "Result.Classroom") { (response: DataResponse<AppUserInfo>?) in
//                if let myResult = response?.result.value {
//                    print(myResult.toJSON())
//                }
//        }
        // local db e kaydet
        
        
        
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



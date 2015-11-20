//
//  Settings.swift
//  EaseApp
//
//  Created by AGW on 11/16/15.
//  Copyright (c) 2015 Ease. All rights reserved.
//

import Foundation

struct GlobalConstants {
    static let ProdServerURL = "http://ease-62q56ueo.cloudapp.net"
}

public class Settings{
    var appToken:String
    var APIToken:String
    var webserverURL:String
    var username:String
    
    public init(appToken:String? = "", APIToken:String? = "", testingEnvironment:Bool? = false, testingWebserverURL:String? = "", username:String? = ""){
        self.appToken = appToken!
        self.APIToken = APIToken!
        self.username = username!
        if testingEnvironment == true {
            self.webserverURL = testingWebserverURL!
        }
        else{
            self.webserverURL = GlobalConstants.ProdServerURL
        }
    }
    
    public func setAppToken(appToken:String){
        self.appToken = appToken
    }
    
    public func setAPIToken(APIToken:String){
        self.APIToken = APIToken
    }
    
    public func setUsername(username:String){
        self.username = username
    }
}
//
//  Endpoints.swift
//  EaseApp
//
//  Created by AGW on 11/16/15.
//  Copyright (c) 2015 Ease. All rights reserved.
//

import Foundation

public class Endpoints{
    var tempStorage:AnyObject!
    
    public static func CreateApplication(settings:Settings, applicationName:String, callback:(AnyObject)->())-> Error? {
        if settings.APIToken == ""{
            return Error(statusCode: 401, friendlyError: "No API token provided. Make sure to provide one in settings.")
        }
        
        PostService.sendJSON("", token: settings.APIToken, url: settings.webserverURL, path: "/users/applications/"+applicationName, method: "POST", callback: {
            (response) in
            callback(response)
        })
        return nil
    }
    
    public static func ListApplications(settings:Settings, callback:(AnyObject)->())-> Error? {
        if settings.APIToken == ""{
            return Error(statusCode: 401, friendlyError: "No API token provided. Make sure to provide one in settings.")
        }
        
        PostService.sendJSON("", token: settings.APIToken, url: settings.webserverURL, path: "/users/applications", method: "GET", callback: {
            (response) in
            callback(response)
        })
        return nil
    }
    
    public static func DeleteApplication(settings:Settings, applicationName:String, callback:(AnyObject)->())-> Error? {
        if settings.APIToken == ""{
            return Error(statusCode: 401, friendlyError: "No API token provided. Make sure to provide one in settings.")
        }
        
        PostService.sendJSON("", token: settings.APIToken, url: settings.webserverURL, path: "/users/applications/" + applicationName, method: "DELETE", callback: {
            (response) in
            callback(response)
        })
        return nil
    }
    
    public static func ReadApplicationData(settings:Settings, applicationName:String, path:String, callback:(AnyObject)->())-> Error? {
        if settings.appToken == ""{
            return Error(statusCode: 401, friendlyError: "No app token provided. Make sure to provide one in settings.")
        }
        
        if settings.username == ""{
            return Error(statusCode: 500, friendlyError: "No username provided. Make sure to provide one in settings.")
        }
        
        PostService.sendJSON("{\"path\":\"" + path + "\"}", token: settings.appToken, url: settings.webserverURL, path: "/data/" + settings.username + "/" + applicationName, method: "GET", callback: {
            (response) in
            callback(response)
        })
        return nil
    }
    
    public static func SaveApplicationData(settings:Settings, applicationName:String, path:String, data:String, callback:(AnyObject)->())-> Error? {
        if settings.appToken == ""{
            return Error(statusCode: 401, friendlyError: "No app token provided. Make sure to provide one in settings.")
        }
        
        if settings.username == ""{
            return Error(statusCode: 500, friendlyError: "No username provided. Make sure to provide one in settings.")
        }
        
        var poorlyFormattedJSON:String = "{\"path\":\"" + path + "\"},{\"data\":\"" + data + "\"}"
        PostService.sendJSON(poorlyFormattedJSON, token: settings.appToken, url: settings.webserverURL, path: "/data/" + settings.username + "/" + applicationName, method: "POST", callback: {
            (response) in
            callback(response)
        })
        return nil
    }
    
    public static func DeleteApplicationData(settings:Settings, applicationName:String, path:String, callback:(AnyObject)->())-> Error? {
        if settings.appToken == ""{
            return Error(statusCode: 401, friendlyError: "No app token provided. Make sure to provide one in settings.")
        }
        
        if settings.username == ""{
            return Error(statusCode: 500, friendlyError: "No username provided. Make sure to provide one in settings.")
        }
        
        PostService.sendJSON("{\"path\":\"" + path + "\"}", token: settings.appToken, url: settings.webserverURL, path: "/data/" + settings.username + "/" + applicationName, method: "DELETE", callback: {
            (response) in
            callback(response)
        })
        return nil
    }
}
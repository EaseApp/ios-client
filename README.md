## iOS Adapter for EaseApp

### Index
[Getting Started](#getting-started)
Endpoints

### Getting Started
First, import the EaseApp Library.
Second, create an EaseApp Settings object. Example:
```
var easeAppSettings:Settings = new Settings(appToken: "JzlaHSLCZdFDqKjYLonmyjFkhXFkYY", APIToken: "", testingEnvironment: true, username: "easeapptest")
```

After you've created a settings object, you can call static endpoints!

### Endpoints
The Swift adapter for EaseApp supports 6 endpoints. Adapter does not support Sync, but can be connected to manually as specified here.

| Endpoint | Description |
|:--|:--|
| Create Application | Creates an application under a user. |
| List Applications | Lists the applications owned by a user. |
| Delete Application | Deletes an application from a user. | 
| Read Application Data | Reads data from an application at a specified application path. |
| Save Application Data | Saves data to an application at a specified path. |
| Delete Application Data | Deletes data from an application at a specified path. |


##### Create Application creates an application under a user where data can be stored. Example:
---
```
Endpoints.CreateApplication(settings:Settings, applicationName:String, callback: {
  response in
  println(response)
})
```
Where `settings` is a settings object that contains a user's information for authorization and `applicationName` is the desired applicationName.

##### List Applications lists an user's applications. Example:
---
```
Endpoints.ListApplications(settings:Settings, callback: {
  response in
  println(response)
})
```
Where `settings` is a settings object.

##### Delete Application deletes a user's applications. Example:
---
```
Endpoints.DeleteApplication(settings:Settings, applicationName:String, callback: {
  response in
  println(response)
})
```
Where `settings` is a settings object, and `applicationName` is a user's application name.


##### Read Application Data grabs data at from a user's application at a specific path. Example:
---
```
Endpoints.ReadApplicationData(settings:Settings, applicationName:String, path:String, callback:{
  response in 
  println(response)
})
```
Where `applicationName` is a user's application and `path` is the desired path to read from. If you want the whole document, specify the path as "/". 

##### Save Application Data. Example:
---
```
Endpoints.SaveApplicationData(settings:Settings, applicationName:String, path:String, data:String, callback:{
  response in
  println(response)
})
```
Where `path` is the desired path to save to. If you want the whole document, specify the path as "/". 

##### Delete Application Data deletes data from a document given a path. Example:
---
```
DeleteApplicationData(settings:Settings, applicationName:String, path:String, callback: {
  response in
  println(response)
})
```
Where `path` is the desired path to delet from. If you want the whole document, specify the path as "/". 

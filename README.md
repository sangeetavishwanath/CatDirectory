# CatDirectory
CatDirectory is a macOS commandline tool application written using Objective-C. CatDirectory uses an API to download a list of people and their pets. It then classifies the pets into "Pets with Male Owners" and "Pets with Female Owners".

#### Sample Output

###### Male
* Angel
* Molly
* Tigger

###### Female
* Gizmo
* Jasper

## Running the Command-Line tool
1. Clone the [CatDirectory](https://github.com/sangeetavishwanath/CatDirectory/) repository.
2. Navigate to the CatDirectory/Product folder.
3. Run the CatDirectory commandline tool.

## Using Cocopods
[CocoaPods](http://cocoapods.org) is a dependency manager for Objective-C. You can install it with the following command:

```bash
$ gem install cocoapods
```

#### Project Setup

Clone the [CatDirectory](https://github.com/sangeetavishwanath/CatDirectory/) repository, then run the following command. You are good to go!

```bash
$ pod install
```
## Architectural Notes

![Architecture](/Sketchboard/Architecture.png?raw=true "Architecture")

The CatDirectory has a `CatPresenter` which conforms to the `<PetPresenter>` protocol. The `main` method requests the `CatPresenter` for pets classified by owner gender and provides a success / failure block to invoke upon completion.

The presenter encapsulates the presentation logic for it's `View`, in this case the main method. The presenter requests the `PeopleDirectoryService` for the people directory, extracts the Pets, classifies them by owner's gender and creates a presentation model. The main method then prints out the cats using a convenience method in the model.

## Future Improvements

##### Improvements: Security
The [People API](http://agl-developer-test.azurewebsites.net/) does not use TLS 1.2 and we are forced to disable App Transport Security to be able to use this API. The author recommends upgrading to TLS 1.2.

Additionally, on the `AFHTTPSessionManager` used to make the API call, we set the following property:
```objc
sessionManager.securityPolicy.allowInvalidCertificates = YES;
```
This is insecure and not recommended for production. Instead, we should consider communication over HTTPS connections with SSL pinning enabled.

#### Improvements: Testing
Implement additional unit test coverage in the Xcode project and use Nocilla to include integration tests.

#### Improvements in design
The code used to make the People API call can be refactored into a stand-alone framework so that it can be re-used in other applications. For example: It can be re-used in an iOS application.

#### Build Automation
We can add the following features to implement build automation:
* Build scripts - Fastlane
* Test reports - Slather
* Continuous Integration - Jenkins / BuildKite

## Resources
1. [Objective Cat - Mantle](http://www.objc.at/mantle)
2. [NSValueTransformer](http://nshipster.com/nsvaluetransformer/)
3. [Creating a Cocoapod](http://lafosca.cat/create-a-cocoapods-of-your-library/)

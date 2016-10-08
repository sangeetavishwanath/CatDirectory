//
//  PeopleDirectoryService.h
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 6/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Person;

/**
 The block to be invoked on successful retrieval of people

 @param PetPresentationModel The array of people
 */
typedef void (^PeopleDirectoryRetrievalSuccessHandler)(NSArray<Person *> *people);

/**
 The block to be invoked on failure retrieving people

 @param error The error encountered while retrieving people
 */
typedef void (^PeopleDirectoryRetrievalFailureHandler)(NSError *error);

/**
 This class encapsulates methods to retrieve a list of people
 */
@interface PeopleDirectoryService : NSObject

/**
 This method is used to retrieve people via the PeopleDirectoryRequest

 @param success The block to be invoked on successful retrieval of people
 @param failure The block to be invoked on failure retrieving people
 */
- (void)retrievePeopleDirectoryWithSuccess:(PeopleDirectoryRetrievalSuccessHandler)success
                                   failure:(PeopleDirectoryRetrievalFailureHandler)failure;

@end

//
//  PeopleDirectoryService.h
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 6/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Person;

typedef void (^PeopleDirectoryRetrievalSuccessHandler)(NSArray<Person *> *);
typedef void (^PeopleDirectoryRetrievalFailureHandler)(NSError *error);

@interface PeopleDirectoryService : NSObject

- (void)retrievePeopleDirectoryWithSuccess:(PeopleDirectoryRetrievalSuccessHandler)success
                                   failure:(PeopleDirectoryRetrievalFailureHandler)failure;

@end

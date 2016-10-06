//
//  PeopleDirectoryResponse.h
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 6/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PersonResponse;

@interface PeopleDirectoryResponse : NSObject

@property (nonatomic, strong) NSArray<PersonResponse *> *people;

@end

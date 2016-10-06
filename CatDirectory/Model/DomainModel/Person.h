//
//  Person.h
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 6/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GenderTypeModel.h"

@class Pet;
@class PersonResponse;

@interface Person : NSObject

@property (nonatomic, readonly, copy) NSString *name;
@property (nonatomic, readonly) GenderType gender;
@property (nonatomic, readonly) NSUInteger age;
@property (nonatomic, readonly) NSArray<Pet *> *pets;

- (instancetype)initWithPersonResponse:(PersonResponse *)personResponse;

@end

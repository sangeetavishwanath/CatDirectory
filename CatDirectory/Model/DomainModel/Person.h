//
//  Person.h
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 6/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>
#import "GenderTypeModel.h"

@class Pet;

/**
 This class represents a person and the pets they own.
 */
@interface Person : MTLModel <MTLJSONSerializing>

/**
 The person's name
 */
@property (nonatomic, readonly, copy) NSString *name;

/**
 The person's gender
 */
@property (nonatomic, readonly) GenderType gender;

/**
 The person's age
 */
@property (nonatomic, readonly) NSUInteger age;

/**
 All the pets owned by the person
 */
@property (nonatomic, readonly) NSArray<Pet *> *pets;

@end

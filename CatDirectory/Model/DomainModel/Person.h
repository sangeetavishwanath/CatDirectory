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

@interface Person : MTLModel <MTLJSONSerializing>

@property (nonatomic, readonly, copy) NSString *name;
@property (nonatomic, readonly) GenderType gender;
@property (nonatomic, readonly) NSUInteger age;
@property (nonatomic, readonly) NSArray<Pet *> *pets;

@end

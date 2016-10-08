//
//  Pet.h
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 6/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>
#import "PetTypeModel.h"

/**
 This class represents a pet
 */
@interface Pet : MTLModel <MTLJSONSerializing>

/**
 The pet's name
 */
@property (nonatomic, readonly, copy) NSString *name;

/**
 The pet's type
 */
@property (nonatomic, readonly) PetType petType;

@end

//
//  PetTypeModel.h
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 7/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, PetType) {
    PetTypeUnknown = 0,
    PetTypeCat,
    PetTypeDog,
    PetTypeFish
};

static NSString *const kDogStringRepresentation = @"Dog";
static NSString *const kCatStringRepresentation = @"Cat";
static NSString *const kFishStringRepresentation = @"Fish";
static NSString *const kUnknownPetStringRepresentation = @"Unknown";

//
//  GenderTypeModel.h
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 7/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 Denotes the gender of a person.

 - GenderTypeUnknown: Denotes an unknown gender
 - GenderTypeFemale:  Denotes the female gender
 - GenderTypeMale:    Denotes the male gender
 */
typedef NS_ENUM(NSUInteger, GenderType) {
    GenderTypeUnknown = 0,
    GenderTypeFemale,
    GenderTypeMale
};


static NSString *const kMaleStringRepresentation = @"Male";
static NSString *const kFemaleStringRepresentation = @"Female";
static NSString *const kUnknownGenderStringRepresentation = @"Unknown";

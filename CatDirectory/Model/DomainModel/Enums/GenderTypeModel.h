//
//  GenderTypeModel.h
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 7/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, GenderType) {
    GenderTypeUnknown = 0,
    GenderTypeFemale,
    GenderTypeMale
};

static NSString *const kMaleStringRepresentation = @"Male";
static NSString *const kFemaleStringRepresentation = @"Female";
static NSString *const kUnknownGenderStringRepresentation = @"Unknown";

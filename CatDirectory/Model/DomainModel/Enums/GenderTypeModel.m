//
//  GenderTypeModel.m
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 7/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import "GenderTypeModel.h"

@implementation GenderTypeModel

+ (GenderType)genderTypeFromString:(NSString *)genderAsString
{
    GenderType gender = GenderTypeUnknown;

    if ([genderAsString caseInsensitiveCompare:@"female"] == NSOrderedSame) {
        gender = GenderTypeFemale;
    } else if ([genderAsString caseInsensitiveCompare:@"male"] == NSOrderedSame) {
        gender = GenderTypeMale;
    }

    return gender;
}

@end

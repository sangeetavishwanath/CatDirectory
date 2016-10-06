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
    PetTypeDog
};

@interface PetTypeModel : NSObject

+ (PetType)petTypeFromString:(NSString *)petTypeAsString;

@end

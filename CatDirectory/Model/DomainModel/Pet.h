//
//  Pet.h
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 6/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PetTypeModel.h"

@class PetResponse;

@interface Pet : NSObject

@property (nonatomic, readonly, copy) NSString *name;
@property (nonatomic, readonly) PetType petType;

- (instancetype)initWithPetResponse:(PetResponse *)petResponse;

@end

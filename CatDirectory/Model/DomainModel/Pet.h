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

@interface Pet : MTLModel <MTLJSONSerializing>

@property (nonatomic, readonly, copy) NSString *name;
@property (nonatomic, readonly) PetType petType;

@end

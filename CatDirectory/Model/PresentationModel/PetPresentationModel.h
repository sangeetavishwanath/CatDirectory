//
//  PetPresentationModel.h
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 8/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Pet;

@interface PetPresentationModel : NSObject

- (instancetype)initWithFemaleOwnersPets:(NSArray<Pet *> *)femaleOwnersPets
                          maleOwnersPets:(NSArray<Pet *> *)maleOwnersPets;

- (NSString *)petsClassifiedByOwnerGender;

@end

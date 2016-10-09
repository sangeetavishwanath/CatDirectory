//
//  PetPresentationModel.h
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 8/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Pet;

/**
 This class encapsulates all the information required to visually represent Pets
 */
@interface PetPresentationModel : NSObject

/**
 This method initialises an instance of PetPresentationModel.

 @param femaleOwnersPets The pets whose owners are female
 @param maleOwnersPets   The pets whose owners are male

 @return An instance of type PetPresentationModel
 */
- (instancetype)initWithFemaleOwnersPets:(NSArray<Pet *> *)femaleOwnersPets
                          maleOwnersPets:(NSArray<Pet *> *)maleOwnersPets;

/**
 This method generates a string representation of names of pets classified by their owners' gender
 
 For example:
 
 "Male
 
 Simba
 Garfield
 
 Female 
 
 Max"

 @return a string representation of names of pets classified by their owners' gender
 */
- (NSString *)petsClassifiedByOwnerGender;

@end

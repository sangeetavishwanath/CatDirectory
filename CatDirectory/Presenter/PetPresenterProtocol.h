//
//  PetPresenterProtocol.h
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 8/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PetPresentationModel;

/**
 The block to be invoked on successful retrieval of pets

 @param PetPresentationModel The presentation model for displaying pets
 */
typedef void (^PetRetrievalSuccessHandler)(PetPresentationModel *);

/**
 The block to be invoked on failure retrieving pets

 @param error The error encountered while retrieving pets
 */
typedef void (^PetRetrievalFailureHandler)(NSError *error);

/**
 This protocol defines the functionality that must be implemented by all PetPresenters.
 */
@protocol PetPresenter <NSObject>

/**
 This method is used to retrieve pets classified by their owner's gender.

 @param success The block to be invoked on successful retrieval of pets
 @param failure The block to be invoked on failure retrieving pets
 */
- (void)retrievePetsByOwnersGenderWithSuccess:(PetRetrievalSuccessHandler)success
                                      failure:(PetRetrievalFailureHandler)failure;

@end

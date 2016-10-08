//
//  PetPresenterProtocol.h
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 8/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PetPresentationModel;

typedef void (^PetRetrievalSuccessHandler)(PetPresentationModel *);
typedef void (^PetRetrievalFailureHandler)(NSError *error);

@protocol PetPresenter <NSObject>

- (void)retrievePetsByOwnersGenderWithSuccess:(PetRetrievalSuccessHandler)success
                                      failure:(PetRetrievalFailureHandler)failure;

@end

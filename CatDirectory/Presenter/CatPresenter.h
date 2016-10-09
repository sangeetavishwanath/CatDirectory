//
//  CatPresenter.h
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 8/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PetPresenterProtocol.h"

@class PeopleDirectoryService;

/**
 A presenter for displaying cats
 */
@interface CatPresenter : NSObject <PetPresenter>

/**
 *  Initialise a CatPresenter with the given PeopleDirectoryService
 *
 *  @param peopleDirectoryService The PeopleDirectoryService
 *
 *  @return An instance of CatPresenter
 */
- (instancetype)initWithPeopleDirectoryService:(PeopleDirectoryService *)peopleDirectoryService NS_DESIGNATED_INITIALIZER;

@end

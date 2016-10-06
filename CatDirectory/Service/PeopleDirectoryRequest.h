//
//  PeopleDirectoryRequest.h
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 6/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PeopleDirectoryRequest : NSObject

@property (nonatomic, readonly) NSURL *url;
@property (nonatomic, readonly) NSDictionary *parameters;

@end

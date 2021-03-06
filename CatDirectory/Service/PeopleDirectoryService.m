//
//  PeopleDirectoryService.m
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 6/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import "PeopleDirectoryService.h"

#import <AFNetworking/AFNetworking.h>

#import "PeopleDirectoryRequest.h"
#import "Person.h"

static const NSUInteger kDefaultTimeout = 30;

@interface PeopleDirectoryService ()

@property (nonatomic, strong) AFHTTPSessionManager *sessionManager;

@end

@implementation PeopleDirectoryService

- (instancetype)init
{
    self = [super init];

    if (self) {
        _sessionManager = [self createSessionManager];
    }

    return self;
}

- (void)retrievePeopleDirectoryWithSuccess:(PeopleDirectoryRetrievalSuccessHandler)success
                                   failure:(PeopleDirectoryRetrievalFailureHandler)failure
{
    PeopleDirectoryRequest *request = [[PeopleDirectoryRequest alloc] init];

    [self.sessionManager GET:request.url.absoluteString
                  parameters:request.parameters
                    progress:nil
                     success:^(NSURLSessionDataTask *task, id responseObject) {

                         NSError *error;
                         NSArray<Person *> *people = [MTLJSONAdapter modelsOfClass:Person.class fromJSONArray:responseObject error:&error];

                         if (error) {
                             failure(error);
                         } else {
                             success(people);
                         }
                     }
                     failure:^(NSURLSessionDataTask *task, NSError *httpError) {
                         failure(httpError);
                     }];
}

#pragma mark - Helpers
- (AFHTTPSessionManager *)createSessionManager
{
    NSURLSessionConfiguration *sessionConfig = [NSURLSessionConfiguration defaultSessionConfiguration];

    AFHTTPSessionManager *sessionManager = [[AFHTTPSessionManager alloc] initWithSessionConfiguration:sessionConfig];

    sessionManager.requestSerializer = [[AFJSONRequestSerializer alloc] init];
    sessionManager.requestSerializer.timeoutInterval = kDefaultTimeout;

    [sessionManager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [sessionManager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Accept"];

    sessionManager.responseSerializer = [[AFJSONResponseSerializer alloc] init];

    // Not a good idea in production
    sessionManager.securityPolicy.allowInvalidCertificates = YES;

    return sessionManager;
}

@end

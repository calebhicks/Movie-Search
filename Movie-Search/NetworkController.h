//
//  NetworkController.h
//  Movie-Search
//
//  Created by Caleb Hicks on 6/18/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>

@interface NetworkController : NSObject

+ (NSDictionary *)parametersWithAPIKey:(NSDictionary *)parameters;

+ (AFHTTPSessionManager *)api;

@end

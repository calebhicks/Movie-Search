//
//  NetworkController.m
//  Movie-Search
//
//  Created by Caleb Hicks on 6/18/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "NetworkController.h"

static NSString * const API_KEY = @"cd6b14a87b5efda52de75733955e372c";

@implementation NetworkController

+ (AFHTTPSessionManager *)api{
    static AFHTTPSessionManager *api = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        api = [[AFHTTPSessionManager alloc] initWithBaseURL:[NSURL URLWithString:@"https://api.themoviedb.org/3/"]];
        api.responseSerializer = [AFJSONResponseSerializer serializer];
        api.requestSerializer = [AFJSONRequestSerializer serializer];
    });
    return api;
}

+ (NSDictionary *)parametersWithAPIKey:(NSDictionary *)parameters {

    NSMutableDictionary *parametersWithKey = [[NSMutableDictionary alloc]initWithDictionary:parameters];
    [parametersWithKey setObject:API_KEY forKey:@"api_key"];
    
    return parametersWithKey;
}


@end

//
//  MovieController.h
//  Movie-Search
//
//  Created by Joshua Howland on 6/18/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MovieController : NSObject

+ (MovieController *)sharedInstance;
-(void)searchForMoviesWithNameString:(NSString *)nameString completion:(void (^)(BOOL success))completion;

@property (nonatomic, strong) NSArray *resultMovies;

@end

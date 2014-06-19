//
//  MSResponseTableViewDataSource.m
//  Movie-Search
//
//  Created by Joshua Howland on 6/18/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "MSResponseTableViewDataSource.h"
#import "MovieController.h"
#import <AFNetworking/UIImageView+AFNetworking.h>

static NSString * const cellReuseKey = @"cell";

@interface MSResponseTableViewDataSource () 

@end

@implementation MSResponseTableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[MovieController sharedInstance].resultMovies count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellReuseKey];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellReuseKey];
    }
    
    NSDictionary *movie = [MovieController sharedInstance].resultMovies[indexPath.row];
    cell.textLabel.text = movie[@"title"];
    
    cell.detailTextLabel.text = [NSString stringWithFormat:@"Released:%@, Average Rating: %@", movie[@"release_date"], movie[@"vote_average" ]];
    
    [cell.imageView setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://image.tmdb.org/t/p/w92/%@", movie[@"poster_path"]]]];

    return cell;
}


@end

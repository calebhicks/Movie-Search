//
//  MSMovieDetailViewController.m
//  Movie-Search
//
//  Created by Joshua Howland on 6/18/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "MSMovieDetailViewController.h"
#import <AFNetworking/UIImageView+AFNetworking.h>

@interface MSMovieDetailViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *backdropImage;
@property (weak, nonatomic) IBOutlet UIImageView *posterImage;

@property (weak, nonatomic) IBOutlet UILabel *movieNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *averageRatingLable;
@property (weak, nonatomic) IBOutlet UILabel *releaseDateLabel;

@end

@implementation MSMovieDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated{
    
    self.movieNameLabel.text = [NSString stringWithFormat:@"%@",self.movie[@"title"]];
    self.releaseDateLabel.text = [NSString stringWithFormat:@"Released: %@", self.movie[@"release_date"]];
    self.averageRatingLable.text = [NSString stringWithFormat:@"Avg Rating: %@", self.movie[@"vote_average"]];
    
    [self.posterImage setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://image.tmdb.org/t/p/w92/%@", self.movie[@"poster_path"]]]];
    
    [self.backdropImage setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://image.tmdb.org/t/p/w92/%@", self.movie[@"backdrop_path"]]]];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

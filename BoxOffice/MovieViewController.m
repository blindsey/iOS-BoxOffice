//
//  MovieViewController.m
//  BoxOffice
//
//  Created by Ben Lindsey on 12/14/13.
//  Copyright (c) 2013 Ben Lindsey. All rights reserved.
//

#import "MovieViewController.h"

@interface MovieViewController ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *ratingLabel;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;
@property (weak, nonatomic) IBOutlet UIImageView *posterImage;
@property (weak, nonatomic) IBOutlet UILabel *actorsLabel;

@end

@implementation MovieViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.titleLabel.text = self.movie.title;
    self.ratingLabel.text = self.movie.rating;
    self.actorsLabel.text = self.movie.actors;
    self.synopsisLabel.text = self.movie.synopsis;

    NSURL *url = [NSURL URLWithString:self.movie.imageURL];
    NSData *data = [NSData dataWithContentsOfURL:url];
    self.posterImage.image = [UIImage imageWithData:data];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

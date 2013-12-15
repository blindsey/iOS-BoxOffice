//
//  Movie.m
//  BoxOffice
//
//  Created by Ben Lindsey on 12/14/13.
//  Copyright (c) 2013 Ben Lindsey. All rights reserved.
//

#import "Movie.h"

@implementation Movie {
    NSDictionary *_dictionary;
}

- (id)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (self) {
        _dictionary = dictionary;

        self.title = [dictionary objectForKey:@"title"];
        self.synopsis = [dictionary objectForKey:@"synopsis"];
        self.rating = [dictionary objectForKey:@"mpaa_rating"];

        NSArray *cast = [dictionary objectForKey:@"abridged_cast"];
        NSMutableArray *actors = [NSMutableArray array];
        for (NSDictionary *params in cast) {
            [actors addObject:[params objectForKey:@"name"]];
        }
        self.actors = [actors componentsJoinedByString:@", "];

        self.imageURL = [[dictionary objectForKey:@"posters"] objectForKey:@"detailed"];
    }
    return self;
}

@end

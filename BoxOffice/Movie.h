//
//  Movie.h
//  BoxOffice
//
//  Created by Ben Lindsey on 12/14/13.
//  Copyright (c) 2013 Ben Lindsey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Movie : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *synopsis;
@property (nonatomic, strong) NSString *rating;
@property (nonatomic, strong) NSString *actors;
@property (nonatomic, strong) NSString *imageURL;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end

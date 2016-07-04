//
//  FISLocationsDataStore.h
//  locationTrivia-dataStore
//
//  Created by Eldon Chan on 6/30/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISTrivium.h"
#import "FISLocation.h"

@interface FISLocationsDataStore : NSObject
@property (strong, nonatomic) NSMutableArray *locations;

+ (instancetype)sharedLocationsDataStore;
- (instancetype)init;

@end

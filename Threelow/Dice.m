//
//  Dice.m
//  Threelow
//
//  Created by Jeff Eom on 2016-06-29.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import "Dice.h"
#import <stdlib.h>
#import <time.h>

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self randomizeValue];
    }
    return self;
}

-(void)randomizeValue{
    
    self.currentValue = arc4random() % 5 + 1;
    
}

-(void)printValue{
    
    NSLog(@"%i", self.currentValue);
    
}


@end

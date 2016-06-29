//
//  Dice.h
//  Threelow
//
//  Created by Jeff Eom on 2016-06-29.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property int currentValue;

-(void)randomizeValue;

-(void)printValue;

@end

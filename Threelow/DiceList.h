//
//  DiceList.h
//  Threelow
//
//  Created by Jeff Eom on 2016-06-29.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface DiceList : NSObject

@property NSMutableArray *usersDices;
@property NSMutableArray *collectionOfHeldDice;

-(void)addDice:(Dice *)playerdice;
-(void)holdDiceAtIndex:(NSInteger)index;
-(void)printList;

@end

//
//  DiceList.m
//  Threelow
//
//  Created by Jeff Eom on 2016-06-29.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import "DiceList.h"

@implementation DiceList

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.usersDices = [[NSMutableArray alloc] init];
        self.collectionOfHeldDice = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addDice:(Dice *)playerDice{
    [self.usersDices addObject: playerDice];
}

-(void)holdDiceAtIndex:(NSInteger)index{
    Dice *aDie = self.usersDices[index - 1];
    [self.collectionOfHeldDice addObject: aDie];
}

- (void)printList{
    NSLog(@"Your Collection of held Dices:");
    NSLog(@"^");
    for(Dice *heldDices in self.collectionOfHeldDice){
        NSLog(@"%d", heldDices.currentValue);
    }
    NSLog(@"v");
}

@end

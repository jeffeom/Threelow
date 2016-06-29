//
//  GameController.m
//  Threelow
//
//  Created by Jeff Eom on 2016-06-29.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import "GameController.h"
#import "DiceList.h"

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
//        self.collectionOfHeldDice = [[NSMutableArray alloc] init];
        
        Dice *dice1 = [[Dice alloc] init];
        Dice *dice2 = [[Dice alloc] init];
        Dice *dice3 = [[Dice alloc] init];
        Dice *dice4 = [[Dice alloc] init];
        Dice *dice5 = [[Dice alloc] init];
        
        self.arrayOfDice = @[dice1, dice2, dice3, dice4, dice5];
    }
    
    return self;
}

//- (void)holdDieAtIndex:(NSInteger)index {
//    Dice *aDie = self.arrayOfDice[index];
//    [self holdDie:aDie];
//}
//
//-(void)holdDie:(Dice *)diceNumber{
//    [self.collectionOfHeldDice addObject: diceNumber];
//}

//- (void)printList{
//    for(Dice *heldDices in self.collectionOfHeldDice){
//        NSLog(@"%d", heldDices.currentValue);
//    }
//}

@end

//
//  Grid.h
//  GameOfLife
//
//  Created by 万欣 on 15/1/28.
//  Copyright (c) 2015年 Apportable. All rights reserved.
//

#import "CCSprite.h"
#import "Level.h"
#import "Creature.h"
#import "Target.h"
#import "CCNode.h"
#import "MainScene.h"
#import "EndGame.h"
#import "cocos2d.h"

@interface Grid : CCSprite

@property (nonatomic, assign) int accurate;
@property (nonatomic, assign) int steps;
@property (nonatomic) CCLabelTTF * stepCount;
@property (nonatomic) CCLabelTTF * stepScore;
@property (nonatomic) CCButton * restartBtn;
@property (strong, nonatomic) Level *level;
@property (nonatomic, assign) int numRow;
@property (nonatomic, assign) int numCol;
@property (nonatomic, assign) CGFloat posX;
@property (nonatomic, assign) CGFloat posY;

// - (void)clearCreatures;
- (void)colorAffect:(int) rowNum col:(int)colNum num:(int)serialNum;
- (void) disableAll:(int) pos;

@end

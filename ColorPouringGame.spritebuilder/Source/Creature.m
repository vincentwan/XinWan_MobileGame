//
//  Creature.m
//  GameOfLife
//
//  Created by 万欣 on 15/1/28.
//  Copyright (c) 2015年 Apportable. All rights reserved.
//

#import "Creature.h"


@implementation Creature {

}

- (instancetype)initCreaturewithX:(double) xlen andY:(double) ylen {
    //self = [super initWithImageNamed:@"ColorPouringAssets/Assets/cell.png"];
    //[super setScaleX:(xlen/self.contentSize.width)];
    //[super setScaleY:(ylen/self.contentSize.height)];
    
    CCTexture *colTexture = [CCTexture textureWithFile:@"ColorPouringAssets/Assets/cell.png"];
    
    _xlen = xlen;
    _ylen = ylen;
    
    CCSpriteFrame *frame = [CCSpriteFrame frameWithTexture:colTexture
                                              rectInPixels:CGRectMake(0, 0, 70, 70)
                                                   rotated:NO
                                                    offset:CGPointZero
                                              originalSize:CGSizeMake(70, 70)];
    
    self = [super initWithSpriteFrame: frame];
    [super setScaleX:(xlen/self.contentSize.width)];
    [super setScaleY:(ylen/self.contentSize.height)];
    
    if (self) {
        self.isAlive = NO;
        self.isMutable = YES;
    }
    
    return self;
}


- (void)setIsAlive:(BOOL)newState {
    // Set Alive and Visible
    _isAlive = newState;
    self.visible = _isAlive;
}

- (void)disable {
    // Disable this cell by setting it to alive
    _isAlive = YES;
}

- (void)enable {
    // Disable this cell by setting it to alive
    _isAlive = NO;
}

- (void) setSerialnum:(int) num {
    _serialnum = num;
    if(num >=0 ) {
        [self setCcolor:[ColorHelper setColorWithFile:num]];
    }
    else {
        CCTexture *colTexture = [CCTexture textureWithFile:@"ColorPouringAssets/Assets/full_color_inner.png"];
        CCSpriteFrame *frame = [CCSpriteFrame frameWithTexture:colTexture
                                                  rectInPixels:CGRectMake(0, 0, 614, 614)
                                                       rotated:NO
                                                        offset:CGPointZero
                                                  originalSize:CGSizeMake(614, 614)];
        [self setSpriteFrame: frame];
        self.colorRGBA = [CCColor colorWithRed:1.0 green:1.0 blue:1.0];
        [super setScaleX:(_xlen/self.contentSize.width)];
        [super setScaleY:(_ylen/self.contentSize.height)];
        self.isMutable = NO;
    }
}



- (void)setCcolor:(UIColor *)col {
    //when you create an @property as we did in the .h, an instance variable with a leading underscore is automatically created for you
    self.colorRGBA = [CCColor colorWithUIColor:col];
    //NSLog(@"Here!");
    
    //self.colorRGBA = [CCColor colorWithCcColor3b:<#(ccColor3B)#>];
}


@end

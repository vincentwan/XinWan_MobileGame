//
//  Target.m
//  ColorPouringGame
//
//  Created by 万欣 on 15/3/17.
//  Copyright (c) 2015年 Apportable. All rights reserved.
//

#import "Target.h"

@implementation Target

- (instancetype)initTargetwithX:(double) xlen andY:(double) ylen andImage:(int) serialnum{
    // since we made Creature inherit from CCSprite, 'super' below refers to CCSprite
    self = [super initWithImageNamed:@"ColorPouringAssets/Assets/cell.png"];
    [super setScaleX:(xlen/self.contentSize.width)];
    [super setScaleY:(ylen/self.contentSize.height)];
    self.visible = true;
    NSLog(@"Here! initTargetwithX");
    _ccolor = [_helper setColorWithFile:serialnum];
    return self;
}


- (void)setCcolor:(UIColor *)col {
    //when you create an @property as we did in the .h, an instance variable with a leading underscore is automatically created for you
    _ccolor = [col copy];
    self.colorRGBA = [CCColor colorWithUIColor:_ccolor];
    NSLog(@"Here! setCcolor");
    
    //self.colorRGBA = [CCColor colorWithCcColor3b:<#(ccColor3B)#>];
}




@end

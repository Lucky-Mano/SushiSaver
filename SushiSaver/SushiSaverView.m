//
//  SushiSaverView.m
//  SushiSaver
//
//  Created by Lucky on 2018/02/03.
//  Copyright © 2018年 Lucky. All rights reserved.
//

#import "SushiSaverView.h"

@implementation SushiSaverView

- (instancetype)initWithFrame:(NSRect)frame isPreview:(BOOL)isPreview
{
    self = [super initWithFrame:frame isPreview:isPreview];
    if (self) {
        [self setAnimationTimeInterval:3.0];
    }
    return self;
}

- (void)startAnimation
{
    [super startAnimation];
}

- (void)stopAnimation
{
    [super stopAnimation];
}

- (void)drawRect:(NSRect)rect
{
    [super drawRect:rect];
}

- (void)animateOneFrame
{
    NSRect rect = [self bounds];
    
    NSString *sushi = @"🍣";
    NSMutableDictionary *dictAttr = [NSMutableDictionary dictionary];
    [dictAttr setObject:[NSFont fontWithName:@"ヒラギノ角ゴシック W9" size:128.0] forKey:NSFontAttributeName];
    
    [sushi drawAtPoint:NSMakePoint(SSRandomFloatBetween(0.0, rect.size.width),
                                   SSRandomFloatBetween(0.0, rect.size.height))
        withAttributes:dictAttr];
    return;
}

- (BOOL)hasConfigureSheet
{
    return NO;
}

- (NSWindow*)configureSheet
{
    return nil;
}

@end

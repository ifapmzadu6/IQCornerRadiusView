//
//  IQCornerRadiusView.m
//  Photti
//
//  Created by Keisuke Karijuku on 2014/10/22.
//  Copyright (c) 2014年 Keisuke Karijuku. All rights reserved.
//

#import "IQCornerRadiusView.h"

@interface IQCornerRadiusView ()

@property (strong, nonatomic) CALayer *drawLayer;

@end

@implementation IQCornerRadiusView

- (instancetype)init {
    self = [super init];
    if (self) {
        [self initialization];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initialization];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initialization];
    }
    return self;
}

- (void)initialization {
    self.backgroundColor = [UIColor clearColor];
    
    _drawLayer = [CALayer new];
    _drawLayer.backgroundColor = self.backgroundColor.CGColor;
    _drawLayer.masksToBounds = YES;
}

- (void)setFrame:(CGRect)frame {
    [super setFrame:frame];
    
    _drawLayer.frame = frame;
    [self setNeedsDisplay];
}

- (void)setMyBackgroundColor:(UIColor *)myBackgroundColor {
    _myBackgroundColor = myBackgroundColor;
    
    _drawLayer.backgroundColor = myBackgroundColor.CGColor;
    [self setNeedsDisplay];
}

- (void)setCornerRadius:(CGFloat)cornerRadius {
    _cornerRadius = cornerRadius;
    
    _drawLayer.cornerRadius = cornerRadius;
    [self setNeedsDisplay];
}

- (void)setBorderWidth:(CGFloat)borderWidth {
    _borderWidth = borderWidth;
    
    _drawLayer.borderWidth = borderWidth;
    [self setNeedsDisplay];
}

- (void)setBorderColor:(UIColor *)borderColor {
    _borderColor = borderColor;
    
    _drawLayer.borderColor = borderColor.CGColor;
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    [_drawLayer renderInContext:context];
    UIGraphicsEndImageContext();
}

@end

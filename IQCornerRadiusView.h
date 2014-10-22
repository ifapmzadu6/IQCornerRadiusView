//
//  IQCornerRadiusView.h
//  Photti
//
//  Created by Keisuke Karijuku on 2014/10/22.
//  Copyright (c) 2014年 Keisuke Karijuku. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IQCornerRadiusView : UIView

@property (strong, nonatomic) UIColor *myBackgroundColor;
@property (nonatomic) CGFloat cornerRadius;
@property (nonatomic) CGFloat borderWidth;
@property (strong, nonatomic) UIColor *borderColor;

@end

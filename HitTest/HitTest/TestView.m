//
//  TestView.m
//  HitTest
//
//  Created by shanWu on 16/3/18.
//  Copyright © 2016年 caozhenwei. All rights reserved.
//

#import "TestView.h"

@interface TestView ()

@property (nonatomic, strong) UIView *aView;
@property (nonatomic, strong) UIButton *button;

@end

@implementation TestView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        _aView = [[UIView alloc] initWithFrame:CGRectMake((self.frame.size.width - 200) * 0.5,(self.frame.size.height - 200) * 0.5 , 200, 200)];
        _aView.backgroundColor = [UIColor darkGrayColor];
        [self addSubview:_aView];
        
        _button = [[UIButton alloc] initWithFrame:CGRectMake(-50, -50, 100, 100)];
        [_button addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
        _button.backgroundColor = [UIColor redColor];
        [_aView addSubview:_button];
    }
    return self;
}

- (void)buttonAction {
    NSLog(@"buttonAction");
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    CGPoint hitPoint = [self convertPoint:point toView:self.button];
    if ([self.button pointInside:hitPoint withEvent:event]) {
        return self.button;
    }
    return [super hitTest:point withEvent:event];
}

@end

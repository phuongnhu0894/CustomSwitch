//
//  CustomSwitch.m
//  UISwitch
//
//  Created by Phuong on 11/8/15.
//  Copyright © 2015 Techmaster. All rights reserved.
//

#import "CustomSwitch.h"

@implementation CustomSwitch
{
    UIButton *_buttonON;
    UIButton *_buttonOFF;
}

-(instancetype) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:CGRectMake(frame.origin.x, frame.origin.y,138,64)];
    _buttonOFF = [[UIButton alloc] initWithFrame:CGRectMake(69,0,69,64)];
    _buttonON = [[UIButton alloc] initWithFrame:CGRectMake(0,0,69,64)];
    [_buttonOFF addTarget:self
                   action:@selector(pressOFF)
         forControlEvents:UIControlEventAllTouchEvents];
    [_buttonON addTarget:self
                   action:@selector(pressON)
         forControlEvents:UIControlEventAllTouchEvents];
    [self addSubview:_buttonOFF];
    [self addSubview:_buttonON];
    self.value = false;
    return self;
}
- (void) pressOFF {
    self.value = true;
}
- (void) pressON {
    self.value = false;
}
- (BOOL) getValue {
    return _value;
}
- (void) setValue: (BOOL)value{
        _value = value;
    if (_value)
    {
        [_buttonON setImage:[UIImage imageNamed:@"OnBlack"] forState:normal];
        [_buttonOFF setImage:[UIImage imageNamed:@"OffBlack"] forState:normal];
    } else {
        [_buttonON setImage:[UIImage imageNamed:@"OnWhite"] forState:normal];
        [_buttonOFF setImage:[UIImage imageNamed:@"OffWhite"] forState:normal];

    }
    [self sendActionsForControlEvents:UIControlEventValueChanged];
}
@end

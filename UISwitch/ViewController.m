//
//  ViewController.m
//  UISwitch
//
//  Created by student on 11/5/15.
//  Copyright © 2015 Techmaster. All rights reserved.
//

#import "ViewController.h"
#import "CustomSwitch.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *buttonOn;
@property (weak, nonatomic) IBOutlet UIButton *buttonOff;

@end

@implementation ViewController
{
    CustomSwitch *mySwitch;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //UIImageView *backGroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"cream.jpg"]];
    //[self.view addSubview:backGroundView];
    

//    UIGraphicsBeginImageContext(self.view.frame.size);// set background
//    [[UIImage imageNamed:@"gray.png"] drawInRect:self.view.bounds];
//    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
//    
//    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
  
    mySwitch = [[CustomSwitch alloc] initWithFrame:CGRectMake(0, 0, 138, 64)];
    mySwitch.center = CGPointMake(self.view.bounds.size.width
                                  *0.5, 120);
    [mySwitch addTarget:self action:@selector(switchChange:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:mySwitch];
}
- (void) switchChange: (CustomSwitch*) customSwitch {
    NSLog(@"%d", customSwitch.value);
}
- (IBAction)switchOn:(id)sender  {
    [_buttonOn setImage:[UIImage imageNamed:@"OnWhite"] forState:normal];
    [_buttonOff setImage:[UIImage imageNamed:@"OffWhite"] forState:normal];
    
}
- (IBAction)switchOff:(id)sender {
    [_buttonOn setImage:[UIImage imageNamed:@"OnBlack"] forState:normal];
    [_buttonOff setImage:[UIImage imageNamed:@"OffBlack"] forState:normal];
}



@end

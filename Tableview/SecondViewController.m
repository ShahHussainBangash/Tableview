//
//  SecondViewController.m
//  Tableview
//
//  Created by shah bangash on 2/11/18.
//  Copyright © 2018 Shah Hussain Bangash. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)switchexample:(id)sender {
    
    UISwitch *myswitch = (UISwitch *)sender;
    
    if([myswitch isOn]) {
        
        NSLog(@"Its ON!");
    } else {
        
       NSLog(@"Its OFF!"); 
    }
    
    }
@end

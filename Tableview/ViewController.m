//
//  ViewController.m
//  Tableview
//
//  Created by shah bangash on 30/10/18.
//  Copyright © 2018 Shah Hussain Bangash. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "ThridViewController.h"
#import "FourViewController.h"


@interface ViewController ()

@end

@implementation ViewController

  NSArray *tableData;  /// Instance Varibale Holding Tableview Data
  NSArray *thumbnails;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    tableData = [NSArray arrayWithObjects:@"International Law", @"Computer Scince MCQS", @"English MCQS", @"Islamic MCQS", @"Maths MCQS", @"Padagoy MCQS", nil];
    
    thumbnails = [NSArray arrayWithObjects:@"shah2.png", @"shah3.png", @"shah4.png", @"shah3.png", @"shah2.png", @"shah4.png", nil];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    
//    cell.imageView.image= [UIImage imageNamed:@"shah2.png"];
    
    cell.imageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
    
    if(indexPath.row % 2==0)
        cell.backgroundColor = [UIColor greenColor];
    else
        cell.backgroundColor =[UIColor yellowColor];
    
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    
//    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    
//    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

    return cell;

}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if(indexPath.row == 0){
        
        SecondViewController *vs = [[SecondViewController alloc]initWithNibName:@"SecondViewController" bundle:nil];
        [self.navigationController pushViewController:vs animated:YES];
        
//        NSLog(@"Welcome to Online Soft Teach");
    }
    
    else if(indexPath.row == 1){
        
        ThridViewController *vs = [[ThridViewController alloc]initWithNibName:@"ThridViewController" bundle:nil];
        [self.navigationController pushViewController:vs animated:YES];
        
//        NSLog(@"Hello World");

        
    }
    
    else if(indexPath.row == 2){
        
        FourViewController *vs = [[FourViewController alloc]initWithNibName:@"FourViewController" bundle:nil];
        [self.navigationController pushViewController:vs animated:YES];
        
//        NSLog(@"Welcome to Pakistan");
        
    }
    
    else if(indexPath.row == 3){
        
        UIAlertView *message = [[UIAlertView alloc]initWithTitle:@"Welcome to OST" message:@"Online Soft Teach Company" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        
        [message show];
        
    }


}




- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 100.0;
}



@end

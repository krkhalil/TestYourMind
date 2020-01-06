//
//  ViewController.m
//  TestYourMind
//
//  Created by Macbook on 20/07/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import "ViewController.h"
#import "puzzleVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationController.navigationBar.hidden =true;
   
}

- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBar.hidden =true;
}

- (IBAction)easyButtonTouched:(id)sender
{
    
    puzzleVC * vc = [self.storyboard instantiateViewControllerWithIdentifier:@"puzzleVC"];
    vc.level = @"easy";
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)mediumButtonTouched:(id)sender
{
    puzzleVC * vc = [self.storyboard instantiateViewControllerWithIdentifier:@"puzzleVC"];
    vc.level = @"medium";
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)expertButtonTouched:(id)sender
{
    puzzleVC * vc = [self.storyboard instantiateViewControllerWithIdentifier:@"puzzleVC"];
    vc.level = @"expert";
    [self.navigationController pushViewController:vc animated:YES];
}

@end

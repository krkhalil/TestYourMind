//
//  puzzleVC.m
//  TestYourMind
//
//  Created by Macbook on 21/07/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import "puzzleVC.h"

@interface puzzleVC ()
{
    NSMutableArray * dataArray;
    NSMutableDictionary * data;
    NSDictionary * selected;
}

@property (weak, nonatomic) IBOutlet UIImageView *bgView;

@end

@implementation puzzleVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationController.navigationBar.hidden = false;
    
    selected = [[NSDictionary alloc] init];
    _nextButton.enabled = false;
    
    if ([_level isEqualToString:@"easy"])
    {
        _operatorLabel.text = @"+";
        [self setEasyArray];
    }
    else if ([_level isEqualToString:@"medium"])
    {
        
        _bgView.alpha = 0.4;
        
        _button1.backgroundColor = [UIColor blackColor];
        _button2.backgroundColor = [UIColor blackColor];
        _button3.backgroundColor = [UIColor blackColor];
        _button4.backgroundColor = [UIColor blackColor];
        
        _operatorLabel.text = @"-";
        [self setMediumArray];
    }
    else if ([_level isEqualToString:@"expert"])
    {
        _bgView.alpha = 0.6;
        
        _button1.backgroundColor = [UIColor purpleColor];
        _button2.backgroundColor = [UIColor purpleColor];
        _button3.backgroundColor = [UIColor purpleColor];
        _button4.backgroundColor = [UIColor purpleColor];
        
        _operatorLabel.text = @"*";
        [self setExpertArray];
    }
    
    [self setScreen];
    
  
}

- (IBAction)button1Touched:(id)sender
{
    if ([_button1.titleLabel.text isEqualToString:[selected valueForKey:@"result"]])
    {
        _resultLabel.text = @"Correct...Press Next";
        _resultLabel.textColor = [UIColor blackColor];
    }
    else
    {
        _resultLabel.text = @"Incorrect...Press Next";
        _resultLabel.textColor = [UIColor redColor];
    }
    
    [self disableButtons];
    
}

- (IBAction)button2Touched:(id)sender
{
    if ([_button2.titleLabel.text isEqualToString:[selected valueForKey:@"result"]])
    {
        _resultLabel.text = @"Correct...Press Next";
        _resultLabel.textColor = [UIColor blackColor];
    }
    else
    {
        _resultLabel.textColor = [UIColor redColor];
        _resultLabel.text = @"Incorrect...Press Next";
    }
    
    [self disableButtons];
}

- (IBAction)button3Touched:(id)sender
{
    if ([_button3.titleLabel.text isEqualToString:[selected valueForKey:@"result"]])
    {
        _resultLabel.text = @"Correct...Press Next";
        _resultLabel.textColor = [UIColor blackColor];
    }
    else
    {
        _resultLabel.textColor = [UIColor redColor];
        _resultLabel.text = @"Incorrect...Press Next";
    }
    
    [self disableButtons];
}

- (IBAction)button4Touched:(id)sender
{
    if ([_button4.titleLabel.text isEqualToString:[selected valueForKey:@"result"]])
    {
        _resultLabel.text = @"Correct...Press Next";
        _resultLabel.textColor = [UIColor blackColor];
    }
    else
    {
        _resultLabel.textColor = [UIColor redColor];
        _resultLabel.text = @"Incorrect...Press Next";
    }
    
    [self disableButtons];
}

- (IBAction)nextButtonTouched:(id)sender
{
    [self setScreen];
}

-(void)setScreen
{
    NSDictionary * d = [dataArray objectAtIndex:arc4random()%dataArray.count ];
    
    selected = d;
    _number1Label.text = [d objectForKey:@"number1"];
    _number2Label.text = [d objectForKey:@"number2"];
    [_button1 setTitle:[d objectForKey:@"a1"] forState:UIControlStateNormal ];
    [_button2 setTitle:[d objectForKey:@"a2"] forState:UIControlStateNormal ];
    [_button3 setTitle:[d objectForKey:@"a3"] forState:UIControlStateNormal ];
    [_button4 setTitle:[d objectForKey:@"a4"] forState:UIControlStateNormal ];
    
    _resultLabel.text = @"Select Any Option";
    _resultLabel.textColor = [UIColor blackColor];
    
    [self enableButtons];
}

-(void)disableButtons
{
    _button1.enabled = false;
    _button2.enabled = false;
    _button3.enabled = false;
    _button4.enabled = false;
    
    _nextButton.enabled = true;

}

-(void) enableButtons
{
    _button1.enabled = true;
    _button2.enabled = true;
    _button3.enabled = true;
    _button4.enabled = true;
    
    _nextButton.enabled = false;
}

-(void)setEasyArray
{
    dataArray = [[NSMutableArray alloc] init];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"2" forKey:@"number1"];
    [data setValue:@"4" forKey:@"number2"];
    [data setValue:@"5" forKey:@"a1"];
    [data setValue:@"4" forKey:@"a2"];
    [data setValue:@"3" forKey:@"a3"];
    [data setValue:@"6" forKey:@"a4"];
    [data setValue:@"6" forKey:@"result"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"3" forKey:@"number1"];
    [data setValue:@"4" forKey:@"number2"];
    [data setValue:@"5" forKey:@"a1"];
    [data setValue:@"4" forKey:@"a2"];
    [data setValue:@"7" forKey:@"a3"];
    [data setValue:@"6" forKey:@"a4"];
    [data setValue:@"7" forKey:@"result"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"3" forKey:@"number1"];
    [data setValue:@"1" forKey:@"number2"];
    [data setValue:@"5" forKey:@"a1"];
    [data setValue:@"4" forKey:@"a2"];
    [data setValue:@"7" forKey:@"a3"];
    [data setValue:@"6" forKey:@"a4"];
    [data setValue:@"4" forKey:@"result"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"7" forKey:@"number1"];
    [data setValue:@"1" forKey:@"number2"];
    [data setValue:@"8" forKey:@"a1"];
    [data setValue:@"4" forKey:@"a2"];
    [data setValue:@"7" forKey:@"a3"];
    [data setValue:@"6" forKey:@"a4"];
    [data setValue:@"8" forKey:@"result"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"7" forKey:@"number1"];
    [data setValue:@"5" forKey:@"number2"];
    [data setValue:@"18" forKey:@"a1"];
    [data setValue:@"12" forKey:@"a2"];
    [data setValue:@"17" forKey:@"a3"];
    [data setValue:@"16" forKey:@"a4"];
    [data setValue:@"12" forKey:@"result"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"7" forKey:@"number1"];
    [data setValue:@"2" forKey:@"number2"];
    [data setValue:@"8" forKey:@"a1"];
    [data setValue:@"4" forKey:@"a2"];
    [data setValue:@"9" forKey:@"a3"];
    [data setValue:@"6" forKey:@"a4"];
    [data setValue:@"9" forKey:@"result"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"2" forKey:@"number1"];
    [data setValue:@"2" forKey:@"number2"];
    [data setValue:@"8" forKey:@"a1"];
    [data setValue:@"4" forKey:@"a2"];
    [data setValue:@"9" forKey:@"a3"];
    [data setValue:@"6" forKey:@"a4"];
    [data setValue:@"4" forKey:@"result"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"2" forKey:@"number1"];
    [data setValue:@"6" forKey:@"number2"];
    [data setValue:@"8" forKey:@"a1"];
    [data setValue:@"4" forKey:@"a2"];
    [data setValue:@"9" forKey:@"a3"];
    [data setValue:@"6" forKey:@"a4"];
    [data setValue:@"8" forKey:@"result"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"12" forKey:@"number1"];
    [data setValue:@"6" forKey:@"number2"];
    [data setValue:@"18" forKey:@"a1"];
    [data setValue:@"4" forKey:@"a2"];
    [data setValue:@"9" forKey:@"a3"];
    [data setValue:@"6" forKey:@"a4"];
    [data setValue:@"18" forKey:@"result"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"12" forKey:@"number1"];
    [data setValue:@"3" forKey:@"number2"];
    [data setValue:@"18" forKey:@"a1"];
    [data setValue:@"14" forKey:@"a2"];
    [data setValue:@"15" forKey:@"a3"];
    [data setValue:@"6" forKey:@"a4"];
    [data setValue:@"15" forKey:@"result"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"2" forKey:@"number1"];
    [data setValue:@"10" forKey:@"number2"];
    [data setValue:@"12" forKey:@"a1"];
    [data setValue:@"14" forKey:@"a2"];
    [data setValue:@"15" forKey:@"a3"];
    [data setValue:@"6" forKey:@"a4"];
    [data setValue:@"12" forKey:@"result"];
    [dataArray addObject:data];
    
}


-(void)setMediumArray
{
    dataArray = [[NSMutableArray alloc] init];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"6" forKey:@"number1"];
    [data setValue:@"4" forKey:@"number2"];
    [data setValue:@"5" forKey:@"a1"];
    [data setValue:@"4" forKey:@"a2"];
    [data setValue:@"3" forKey:@"a3"];
    [data setValue:@"2" forKey:@"a4"];
    [data setValue:@"2" forKey:@"result"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"3" forKey:@"number1"];
    [data setValue:@"2" forKey:@"number2"];
    [data setValue:@"5" forKey:@"a1"];
    [data setValue:@"4" forKey:@"a2"];
    [data setValue:@"1" forKey:@"a3"];
    [data setValue:@"6" forKey:@"a4"];
    [data setValue:@"1" forKey:@"result"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"6" forKey:@"number1"];
    [data setValue:@"2" forKey:@"number2"];
    [data setValue:@"5" forKey:@"a1"];
    [data setValue:@"4" forKey:@"a2"];
    [data setValue:@"7" forKey:@"a3"];
    [data setValue:@"6" forKey:@"a4"];
    [data setValue:@"4" forKey:@"result"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"7" forKey:@"number1"];
    [data setValue:@"1" forKey:@"number2"];
    [data setValue:@"8" forKey:@"a1"];
    [data setValue:@"4" forKey:@"a2"];
    [data setValue:@"7" forKey:@"a3"];
    [data setValue:@"6" forKey:@"a4"];
    [data setValue:@"6" forKey:@"result"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"7" forKey:@"number1"];
    [data setValue:@"5" forKey:@"number2"];
    [data setValue:@"8" forKey:@"a1"];
    [data setValue:@"2" forKey:@"a2"];
    [data setValue:@"7" forKey:@"a3"];
    [data setValue:@"6" forKey:@"a4"];
    [data setValue:@"2" forKey:@"result"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"17" forKey:@"number1"];
    [data setValue:@"2" forKey:@"number2"];
    [data setValue:@"18" forKey:@"a1"];
    [data setValue:@"15" forKey:@"a2"];
    [data setValue:@"19" forKey:@"a3"];
    [data setValue:@"16" forKey:@"a4"];
    [data setValue:@"15" forKey:@"result"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"12" forKey:@"number1"];
    [data setValue:@"2" forKey:@"number2"];
    [data setValue:@"10" forKey:@"a1"];
    [data setValue:@"14" forKey:@"a2"];
    [data setValue:@"19" forKey:@"a3"];
    [data setValue:@"16" forKey:@"a4"];
    [data setValue:@"10" forKey:@"result"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"2" forKey:@"number1"];
    [data setValue:@"6" forKey:@"number2"];
    [data setValue:@"-8" forKey:@"a1"];
    [data setValue:@"-4" forKey:@"a2"];
    [data setValue:@"-9" forKey:@"a3"];
    [data setValue:@"-6" forKey:@"a4"];
    [data setValue:@"-4" forKey:@"result"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"12" forKey:@"number1"];
    [data setValue:@"6" forKey:@"number2"];
    [data setValue:@"18" forKey:@"a1"];
    [data setValue:@"4" forKey:@"a2"];
    [data setValue:@"9" forKey:@"a3"];
    [data setValue:@"6" forKey:@"a4"];
    [data setValue:@"6" forKey:@"result"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"12" forKey:@"number1"];
    [data setValue:@"3" forKey:@"number2"];
    [data setValue:@"8" forKey:@"a1"];
    [data setValue:@"9" forKey:@"a2"];
    [data setValue:@"15" forKey:@"a3"];
    [data setValue:@"6" forKey:@"a4"];
    [data setValue:@"9" forKey:@"result"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"2" forKey:@"number1"];
    [data setValue:@"10" forKey:@"number2"];
    [data setValue:@"-8" forKey:@"a1"];
    [data setValue:@"-12" forKey:@"a2"];
    [data setValue:@"12" forKey:@"a3"];
    [data setValue:@"-6" forKey:@"a4"];
    [data setValue:@"-8" forKey:@"result"];
    [dataArray addObject:data];
    
}


-(void)setExpertArray
{
    dataArray = [[NSMutableArray alloc] init];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"6" forKey:@"number1"];
    [data setValue:@"4" forKey:@"number2"];
    [data setValue:@"25" forKey:@"a1"];
    [data setValue:@"24" forKey:@"a2"];
    [data setValue:@"23" forKey:@"a3"];
    [data setValue:@"22" forKey:@"a4"];
    [data setValue:@"24" forKey:@"result"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"3" forKey:@"number1"];
    [data setValue:@"2" forKey:@"number2"];
    [data setValue:@"5" forKey:@"a1"];
    [data setValue:@"4" forKey:@"a2"];
    [data setValue:@"1" forKey:@"a3"];
    [data setValue:@"6" forKey:@"a4"];
    [data setValue:@"6" forKey:@"result"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"6" forKey:@"number1"];
    [data setValue:@"2" forKey:@"number2"];
    [data setValue:@"15" forKey:@"a1"];
    [data setValue:@"14" forKey:@"a2"];
    [data setValue:@"17" forKey:@"a3"];
    [data setValue:@"12" forKey:@"a4"];
    [data setValue:@"12" forKey:@"result"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"7" forKey:@"number1"];
    [data setValue:@"1" forKey:@"number2"];
    [data setValue:@"8" forKey:@"a1"];
    [data setValue:@"4" forKey:@"a2"];
    [data setValue:@"7" forKey:@"a3"];
    [data setValue:@"6" forKey:@"a4"];
    [data setValue:@"7" forKey:@"result"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"7" forKey:@"number1"];
    [data setValue:@"5" forKey:@"number2"];
    [data setValue:@"38" forKey:@"a1"];
    [data setValue:@"32" forKey:@"a2"];
    [data setValue:@"37" forKey:@"a3"];
    [data setValue:@"35" forKey:@"a4"];
    [data setValue:@"35" forKey:@"result"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"17" forKey:@"number1"];
    [data setValue:@"2" forKey:@"number2"];
    [data setValue:@"34" forKey:@"a1"];
    [data setValue:@"35" forKey:@"a2"];
    [data setValue:@"29" forKey:@"a3"];
    [data setValue:@"46" forKey:@"a4"];
    [data setValue:@"34" forKey:@"result"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"12" forKey:@"number1"];
    [data setValue:@"2" forKey:@"number2"];
    [data setValue:@"20" forKey:@"a1"];
    [data setValue:@"24" forKey:@"a2"];
    [data setValue:@"29" forKey:@"a3"];
    [data setValue:@"26" forKey:@"a4"];
    [data setValue:@"24" forKey:@"result"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"2" forKey:@"number1"];
    [data setValue:@"16" forKey:@"number2"];
    [data setValue:@"32" forKey:@"a1"];
    [data setValue:@"33" forKey:@"a2"];
    [data setValue:@"34" forKey:@"a3"];
    [data setValue:@"42" forKey:@"a4"];
    [data setValue:@"32" forKey:@"result"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"10" forKey:@"number1"];
    [data setValue:@"2" forKey:@"number2"];
    [data setValue:@"20" forKey:@"a1"];
    [data setValue:@"24" forKey:@"a2"];
    [data setValue:@"10" forKey:@"a3"];
    [data setValue:@"15" forKey:@"a4"];
    [data setValue:@"20" forKey:@"result"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"12" forKey:@"number1"];
    [data setValue:@"3" forKey:@"number2"];
    [data setValue:@"34" forKey:@"a1"];
    [data setValue:@"36" forKey:@"a2"];
    [data setValue:@"35" forKey:@"a3"];
    [data setValue:@"38" forKey:@"a4"];
    [data setValue:@"36" forKey:@"result"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"20" forKey:@"number1"];
    [data setValue:@"10" forKey:@"number2"];
    [data setValue:@"200" forKey:@"a1"];
    [data setValue:@"100" forKey:@"a2"];
    [data setValue:@"300" forKey:@"a3"];
    [data setValue:@"150" forKey:@"a4"];
    [data setValue:@"200" forKey:@"result"];
    [dataArray addObject:data];
    
}

@end

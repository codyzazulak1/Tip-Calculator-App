//
//  ViewController.m
//  Tip Calculator
//
//  Created by Cody Zazulak on 2015-07-10.
//  Copyright (c) 2015 Cody Zazulak. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calculateTip:(UIButton *)sender {
    float total = [self.billAmountTextField.text floatValue];
    float tipPercent = [self.tipPercentageTextField.text floatValue]/100;
    float tipAmount = total*tipPercent;
    float billTotal = total + tipAmount;
    
    [self.tipAmountLabel setText:[NSString stringWithFormat:@"Total: $%.2f", billTotal]];
}
- (IBAction)resetButtonPressed:(UIButton *)sender {
    self.billAmountTextField.text = @"";
    self.tipPercentageTextField.text = @"";
    [self.tipAmountLabel setText:[NSString stringWithFormat:@"Total: $0.00"]];
}

@end

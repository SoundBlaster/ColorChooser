//
//  TableViewController.m
//  ColorChooser
//
//  Created by Sound Blaster on 13.08.13.
//  Copyright (c) 2013 Sound Blaster. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (id)initWithStyle:(UITableViewStyle)style {
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)configureView {
    // Update the user interface for the detail item.
    [self changeValue:nil];
    [self bgChangeValue:nil];
    [self switchChanged:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self configureView];
}

- (IBAction)changeValue:(id)sender {
    UILabel *targetLabel;
    NSString *formatString = @"%1.2f";
    if (sender == self.rSlider) {
        targetLabel = self.rLabel;
        formatString = @"R: %1.2f";
    }
    
    if (sender == self.gSlider) {
        targetLabel = self.gLabel;
        formatString = @"G: %1.2f";
    }
    
    if (sender == self.bSlider) {
        targetLabel = self.bLabel;
        formatString = @"B: %1.2f";
    }

    if (sender == self.aSlider) {
        targetLabel = self.aLabel;
        formatString = @"A: %1.2f";
    }
    
    [targetLabel setText:[NSString stringWithFormat:formatString, ((UISlider*)sender).value]];
    
    _color = [UIColor colorWithRed:self.rSlider.value
                             green:self.gSlider.value
                              blue:self.bSlider.value
                             alpha:self.aSlider.value];
    
    self.navigationController.navigationBar.barTintColor = _color;
    [self.controlView setBackgroundColor:_color];
}

- (IBAction)bgChangeValue:(id)sender {
    UILabel *targetLabel;
    NSString *formatString = @"%1.2f";
    if (sender == self.rBgSlider) {
        targetLabel = self.rBgLabel;
        formatString = @"R: %1.2f";
    }
    
    if (sender == self.gBgSlider) {
        targetLabel = self.gBgLabel;
        formatString = @"G: %1.2f";
    }
    
    if (sender == self.bBgSlider) {
        targetLabel = self.bBgLabel;
        formatString = @"B: %1.2f";
    }
    
    [targetLabel setText:[NSString stringWithFormat:formatString, ((UISlider*)sender).value]];
    
    UIColor *color = [UIColor colorWithRed:self.rBgSlider.value
                                     green:self.gBgSlider.value
                                      blue:self.bBgSlider.value
                                     alpha:1.0];
    [self.tableView setBackgroundColor:color];
}

- (IBAction)switchChanged:(id)sender {
    if (sender == self.translucentSwitcher) {
        NSLog(@"%@",self.translucentSwitcher.on?@"YES":@"NO");
        [self.navigationController.navigationBar setTranslucent:self.translucentSwitcher.on];
    }
    
    if (sender == self.blackNavBarSwitcher) {
        NSLog(@"%@",self.blackNavBarSwitcher.on?@"YES":@"NO");
        [self.navigationController.navigationBar setBarStyle:self.blackNavBarSwitcher.on?UIBarStyleBlack:UIBarStyleDefault];
    }
}


@end

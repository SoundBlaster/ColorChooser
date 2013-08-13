//
//  TableViewController.h
//  ColorChooser
//
//  Created by Sound Blaster on 13.08.13.
//  Copyright (c) 2013 Sound Blaster. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController {
UIColor *_color;
}

@property (weak, nonatomic) IBOutlet UISlider *rSlider;
@property (weak, nonatomic) IBOutlet UISlider *gSlider;
@property (weak, nonatomic) IBOutlet UISlider *bSlider;
@property (weak, nonatomic) IBOutlet UISlider *aSlider;
@property (weak, nonatomic) IBOutlet UILabel *rLabel;
@property (weak, nonatomic) IBOutlet UILabel *gLabel;
@property (weak, nonatomic) IBOutlet UILabel *bLabel;
@property (weak, nonatomic) IBOutlet UILabel *aLabel;
@property (weak, nonatomic) IBOutlet UIView *controlView;

@property (weak, nonatomic) IBOutlet UISlider *rBgSlider;
@property (weak, nonatomic) IBOutlet UISlider *gBgSlider;
@property (weak, nonatomic) IBOutlet UISlider *bBgSlider;
@property (weak, nonatomic) IBOutlet UILabel *rBgLabel;
@property (weak, nonatomic) IBOutlet UILabel *gBgLabel;
@property (weak, nonatomic) IBOutlet UILabel *bBgLabel;

@property (weak, nonatomic) IBOutlet UISwitch *translucentSwitcher;
@property (weak, nonatomic) IBOutlet UISwitch *blackNavBarSwitcher;

- (IBAction)changeValue:(id)sender;
- (IBAction)bgChangeValue:(id)sender;
- (IBAction)switchChanged:(id)sender;

@end

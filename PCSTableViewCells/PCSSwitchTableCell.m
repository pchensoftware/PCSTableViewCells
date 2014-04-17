//====================================================================================================
// Author: Peter Chen
// Created: 4/17/14
// Copyright 2014 Peter Chen
//====================================================================================================

#import "PCSSwitchTableCell.h"

@interface PCSSwitchTableCell()

@property (nonatomic, strong) UISwitch *switcher;

@end

@implementation PCSSwitchTableCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
   if ((self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])) {
      self.switcher = [[UISwitch alloc] init];
      self.accessoryView = self.switcher;
      
      [self.switcher addTarget:self action:@selector(_switchValueChanged) forControlEvents:UIControlEventValueChanged];
   }
   return self;
}

- (void)_switchValueChanged {
   [self.delegate switchTableCellDidChangeSwitchValue:self];
}

@end

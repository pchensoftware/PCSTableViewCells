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
   }
   return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
   [super setSelected:selected animated:animated];
}

@end

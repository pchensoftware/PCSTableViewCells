//====================================================================================================
// Author: Peter Chen
// Created: 4/17/14
// Copyright 2014 Peter Chen
//====================================================================================================

#import <UIKit/UIKit.h>

@class PCSSwitchTableCell;

@protocol PCSSwitchTableCellDelegate <NSObject>
- (void)switchTableCellDidChangeSwitchValue:(PCSSwitchTableCell *)cell;
@end

@interface PCSSwitchTableCell : UITableViewCell

@property (nonatomic, readonly) UISwitch *switcher;
@property (nonatomic, weak) id<PCSSwitchTableCellDelegate> delegate;

@end

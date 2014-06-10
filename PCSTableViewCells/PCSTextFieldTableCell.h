//====================================================================================================
// Author: Peter Chen
// Created: 6/10/14
// Copyright 2014 Hidoodle
//====================================================================================================

#import <UIKit/UIKit.h>

@class PCSTextFieldTableCell;

@protocol PCSTextFieldTableCellDelegate <NSObject>
- (void)textFieldTableCellDidChangeText:(PCSTextFieldTableCell *)cell;
@end

@interface PCSTextFieldTableCell : UITableViewCell

@property (nonatomic, readonly) UITextField *textField;
@property (nonatomic, weak) id<PCSTextFieldTableCellDelegate> delegate;

@end

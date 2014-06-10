//====================================================================================================
// Author: Peter Chen
// Created: 6/10/14
// Copyright 2014 Hidoodle
//====================================================================================================

#import "PCSTextFieldTableCell.h"

@interface PCSTextFieldTableCell()

@property (nonatomic, strong) UITextField *textField;

@end

@implementation PCSTextFieldTableCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
   if ((self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])) {
      self.textField = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, self.contentView.width / 2, self.contentView.height)];
      self.textField.textAlignment = NSTextAlignmentRight;
      self.accessoryView = self.textField;
      
      [self.textField addTarget:self action:@selector(_textFieldValueChanged) forControlEvents:UIControlEventEditingChanged];
   }
   return self;
}

- (void)_textFieldValueChanged {
   [self.delegate textFieldTableCellDidChangeText:self];
}

@end

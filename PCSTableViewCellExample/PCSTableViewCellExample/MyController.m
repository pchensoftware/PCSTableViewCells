//====================================================================================================
// Author: Peter Chen
// Created: 4/17/14
// Copyright 2014 Peter Chen
//====================================================================================================

#import "MyController.h"
#import "PCSSwitchTableCell.h"

typedef NS_ENUM(int, Sections) {
   Section_Hello,
   Section_Count
};

typedef NS_ENUM(int, Row) {
   Row_Switch,
   Row_Count,
};

@interface MyController()



@end

@implementation MyController

- (id)init {
   if ((self = [super initWithStyle:UITableViewStylePlain])) {
   }
   return self;
}

- (void)viewDidLoad {
   [super viewDidLoad];
   [self.tableView registerClass:[PCSSwitchTableCell class] forCellReuseIdentifier:@"SwitchCell"];
}

//====================================================================================================
#pragma mark - Table view
//====================================================================================================

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
   return Section_Count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
   return Row_Count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   if (Row_Switch == indexPath.row) {
      PCSSwitchTableCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SwitchCell" forIndexPath:indexPath];
      cell.textLabel.text = @"Switch";
      cell.switcher.on = YES;
      [cell.switcher addTarget:self action:@selector(_switchChanged:) forControlEvents:UIControlEventValueChanged];
      return cell;
   }
   
   return [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"_oops_"];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
   if (Section_Hello == indexPath.section) {
      
   }
}

//====================================================================================================
#pragma mark - Events
//====================================================================================================

- (void)_switchChanged:(UISwitch *)switcher {
   NSLog(@"Changed value to %d for switch %@", switcher.on, switcher);
}


@end

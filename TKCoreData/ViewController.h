//
//  ViewController.h
//  TKCoreData
//
//  Created by Felix ITs 04 on 10/11/16.
//  Copyright © 2016 Tushar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *empIdTextField;
@property (weak, nonatomic) IBOutlet UITextField *empNameTextField;

- (IBAction)saveButton:(id)sender;


@end


//
//  ViewController.m
//  TKCoreData
//
//  Created by Felix ITs 04 on 10/11/16.
//  Copyright © 2016 Tushar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}



-(NSManagedObjectContext *)managedObjectContext
{
    NSManagedObjectContext *context = nil;
    
    id delegate=[[UIApplication sharedApplication]delegate];
    
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context =[delegate managedObjectContext];
        
    }
    return context;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveButton:(id)sender {
    
    NSString *nameString =_empNameTextField.text;
    NSString *idString =_empIdTextField.text;
    
    if (nameString.length>0) {
        if (idString.length>0) {
            
            
            NSManagedObjectContext *context = [self managedObjectContext];
            
            NSManagedObject *saveObject = [NSEntityDescription insertNewObjectForEntityForName:@"Employee" inManagedObjectContext:context];
            
            [saveObject setValue:nameString forKey:@"empName"];
            [saveObject setValue:idString forKey:@"empID"];
            
            NSError *error;
            
            if ([context save:&error]) {
                NSLog(@"Saved");
                
            }
            else {
                NSLog(@"Unable to save : %@",error.localizedDescription);
            }

            NSFetchRequest *fetchRequest = [[NSFetchRequest  alloc]initWithEntityName:@"Employee"];
            
            NSArray * result = [self.managedObjectContext executeFetchRequest:fetchRequest
                                                                        error:nil];
            for (Employee * d in result)
            {
                NSLog(@"%@\t%@",d.empName,d.empID);
               
           
        }
            
        }
    }
    
    
    
}
@end

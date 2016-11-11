//
//  Employee+CoreDataProperties.h
//  TKCoreData
//
//  Created by Felix ITs 04 on 10/11/16.
//  Copyright © 2016 Tushar. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Employee.h"

NS_ASSUME_NONNULL_BEGIN

@interface Employee (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *empName;
@property (nullable, nonatomic, retain) NSString *empID;
@property (nullable, nonatomic, retain) NSManagedObject *emptodept;

@end

NS_ASSUME_NONNULL_END

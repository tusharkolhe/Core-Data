//
//  Department+CoreDataProperties.h
//  TKCoreData
//
//  Created by Felix ITs 04 on 10/11/16.
//  Copyright © 2016 Tushar. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Department.h"

NS_ASSUME_NONNULL_BEGIN

@interface Department (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *dName;
@property (nullable, nonatomic, retain) NSString *dId;
@property (nullable, nonatomic, retain) Employee *depttoemp;

@end

NS_ASSUME_NONNULL_END

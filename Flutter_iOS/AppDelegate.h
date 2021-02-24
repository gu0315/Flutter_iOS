//
//  AppDelegate.h
//  Flutter_iOS
//
//  Created by 顾钱想 on 2021/2/24.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end


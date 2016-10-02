//
//  DropItBehaviour.h
//  DropIt
//
//  Created by Jean-Paul Gorman on 02/10/2016.
//  Copyright © 2016 Jean-Paul Gorman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DropItBehaviour : UIDynamicBehavior

- (void)addItem:(id <UIDynamicItem>)item;
- (void)removeItem:(id <UIDynamicItem>)item;

@end

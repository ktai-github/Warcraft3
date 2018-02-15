//
//  Barracks.m
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import "Barracks.h"

@implementation Barracks

- (instancetype)init
{
  self = [super init];
  if (self) {
    self.gold = 1000;
    self.food = 80;
  }
  return self;
}

-(Footman *)trainFootman
{
  if ((self.food < 2) || (self.gold < 135)) {
    return Nil;
  } else {
    self.gold -= 135;
    self.food -= 2;
    return [[Footman alloc] init];
  }
  
}

- (BOOL)canTrainFootman{
  if ((self.food < 2) || (self.gold < 135)) {
    return false;
  }
  return true;
}

-(Peasant *)trainPeasant
{
  if ((self.food < 5) || (self.gold < 90)) {
    return Nil;
  } else {
    self.gold -= 90;
    self.food -= 5;
    return [[Peasant alloc] init];
  }
  
}

- (BOOL)canTrainPeasant{
  if ((self.food < 5) || (self.gold < 90)) {
    return false;
  }
  return true;
}

@end

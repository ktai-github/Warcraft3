//
//  Barracks.m
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import "Barracks.h"

@implementation Barracks

-(instancetype)init{
  _gold = 1000;
  _food = 80;
  return self;
}

- (Footman *) trainFootman {
  if (self.canTrainFootman) {
    self.gold -= 135;
    self.food -= 2;
    Footman *footman = [[Footman alloc] init];
    return footman;
  } else {
    return NULL;
  }
}

- (BOOL) canTrainFootman {
  if (self.food < 2 || self.gold < 135) {
    return FALSE;
  } else {
    return TRUE;
  }
}

- (Peasant *) trainPeasant {
  if (self.canTrainPeasant) {
    self.gold -= 90;
    self.food -= 5;
    Peasant *peasant = [[Peasant alloc] init];
    return peasant;
  } else {
    return NULL;
  }
}

- (BOOL) canTrainPeasant {
  if (self.food < 5 || self.gold < 90) {
    return FALSE;
  } else {
    return TRUE;
  }
}

@end

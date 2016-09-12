///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGAccessLevel.h"
#import "DBSHARINGMemberPermission.h"
#import "DBSHARINGMembershipInfo.h"
#import "DBSHARINGUserInfo.h"
#import "DBSHARINGUserMembershipInfo.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGUserMembershipInfo

#pragma mark - Constructors

- (instancetype)initWithAccessType:(DBSHARINGAccessLevel *)accessType
                              user:(DBSHARINGUserInfo *)user
                       permissions:(NSArray<DBSHARINGMemberPermission *> *)permissions
                          initials:(NSString *)initials
                       isInherited:(NSNumber *)isInherited {
  [DBStoneValidators
   nullableValidator:[DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil]](permissions);

  self = [super initWithAccessType:accessType permissions:permissions initials:initials isInherited:isInherited];
  if (self) {
    _user = user;
  }
  return self;
}

- (instancetype)initWithAccessType:(DBSHARINGAccessLevel *)accessType user:(DBSHARINGUserInfo *)user {
  return [self initWithAccessType:accessType user:user permissions:nil initials:nil isInherited:nil];
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBSHARINGUserMembershipInfoSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBSHARINGUserMembershipInfoSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBSHARINGUserMembershipInfoSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBSHARINGUserMembershipInfoSerializer

+ (NSDictionary *)serialize:(DBSHARINGUserMembershipInfo *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"access_type"] = [DBSHARINGAccessLevelSerializer serialize:valueObj.accessType];
  jsonDict[@"user"] = [DBSHARINGUserInfoSerializer serialize:valueObj.user];
  if (valueObj.permissions) {
    jsonDict[@"permissions"] = [DBArraySerializer serialize:valueObj.permissions
                                                  withBlock:^id(id elem) {
                                                    return [DBSHARINGMemberPermissionSerializer serialize:elem];
                                                  }];
  }
  if (valueObj.initials) {
    jsonDict[@"initials"] = valueObj.initials;
  }
  jsonDict[@"is_inherited"] = valueObj.isInherited;

  return jsonDict;
}

+ (DBSHARINGUserMembershipInfo *)deserialize:(NSDictionary *)valueDict {
  DBSHARINGAccessLevel *accessType = [DBSHARINGAccessLevelSerializer deserialize:valueDict[@"access_type"]];
  DBSHARINGUserInfo *user = [DBSHARINGUserInfoSerializer deserialize:valueDict[@"user"]];
  NSArray<DBSHARINGMemberPermission *> *permissions =
      valueDict[@"permissions"] ? [DBArraySerializer deserialize:valueDict[@"permissions"]
                                                       withBlock:^id(id elem) {
                                                         return [DBSHARINGMemberPermissionSerializer deserialize:elem];
                                                       }]
                                : nil;
  NSString *initials = valueDict[@"initials"] ?: nil;
  NSNumber *isInherited = valueDict[@"is_inherited"];

  return [[DBSHARINGUserMembershipInfo alloc] initWithAccessType:accessType
                                                            user:user
                                                     permissions:permissions
                                                        initials:initials
                                                     isInherited:isInherited];
}

@end

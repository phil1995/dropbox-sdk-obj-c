///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGSharedLinkSettingsError.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGSharedLinkSettingsError

#pragma mark - Constructors

- (instancetype)initWithInvalidSettings {
  self = [super init];
  if (self) {
    _tag = DBSHARINGSharedLinkSettingsErrorInvalidSettings;
  }
  return self;
}

- (instancetype)initWithNotAuthorized {
  self = [super init];
  if (self) {
    _tag = DBSHARINGSharedLinkSettingsErrorNotAuthorized;
  }
  return self;
}

#pragma mark - Instance field accessors

#pragma mark - Tag state methods

- (BOOL)isInvalidSettings {
  return _tag == DBSHARINGSharedLinkSettingsErrorInvalidSettings;
}

- (BOOL)isNotAuthorized {
  return _tag == DBSHARINGSharedLinkSettingsErrorNotAuthorized;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBSHARINGSharedLinkSettingsErrorInvalidSettings:
    return @"DBSHARINGSharedLinkSettingsErrorInvalidSettings";
  case DBSHARINGSharedLinkSettingsErrorNotAuthorized:
    return @"DBSHARINGSharedLinkSettingsErrorNotAuthorized";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBSHARINGSharedLinkSettingsErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBSHARINGSharedLinkSettingsErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBSHARINGSharedLinkSettingsErrorSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBSHARINGSharedLinkSettingsErrorSerializer

+ (NSDictionary *)serialize:(DBSHARINGSharedLinkSettingsError *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isInvalidSettings]) {
    jsonDict[@".tag"] = @"invalid_settings";
  } else if ([valueObj isNotAuthorized]) {
    jsonDict[@".tag"] = @"not_authorized";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag"
                                   reason:@"Object not properly initialized. Tag has an unknown value."
                                 userInfo:nil]);
  }

  return jsonDict;
}

+ (DBSHARINGSharedLinkSettingsError *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"invalid_settings"]) {
    return [[DBSHARINGSharedLinkSettingsError alloc] initWithInvalidSettings];
  } else if ([tag isEqualToString:@"not_authorized"]) {
    return [[DBSHARINGSharedLinkSettingsError alloc] initWithNotAuthorized];
  }

  @throw([NSException
      exceptionWithName:@"InvalidTag"
                 reason:[NSString stringWithFormat:@"Tag has an invalid value: \"%@\".", valueDict[@".tag"]]
               userInfo:nil]);
}

@end

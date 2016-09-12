///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGSharePathError.h"
#import "DBSHARINGSharedFolderMetadata.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGSharePathError

@synthesize alreadyShared = _alreadyShared;

#pragma mark - Constructors

- (instancetype)initWithIsFile {
  self = [super init];
  if (self) {
    _tag = DBSHARINGSharePathErrorIsFile;
  }
  return self;
}

- (instancetype)initWithInsideSharedFolder {
  self = [super init];
  if (self) {
    _tag = DBSHARINGSharePathErrorInsideSharedFolder;
  }
  return self;
}

- (instancetype)initWithContainsSharedFolder {
  self = [super init];
  if (self) {
    _tag = DBSHARINGSharePathErrorContainsSharedFolder;
  }
  return self;
}

- (instancetype)initWithIsAppFolder {
  self = [super init];
  if (self) {
    _tag = DBSHARINGSharePathErrorIsAppFolder;
  }
  return self;
}

- (instancetype)initWithInsideAppFolder {
  self = [super init];
  if (self) {
    _tag = DBSHARINGSharePathErrorInsideAppFolder;
  }
  return self;
}

- (instancetype)initWithIsPublicFolder {
  self = [super init];
  if (self) {
    _tag = DBSHARINGSharePathErrorIsPublicFolder;
  }
  return self;
}

- (instancetype)initWithInsidePublicFolder {
  self = [super init];
  if (self) {
    _tag = DBSHARINGSharePathErrorInsidePublicFolder;
  }
  return self;
}

- (instancetype)initWithAlreadyShared:(DBSHARINGSharedFolderMetadata *)alreadyShared {
  self = [super init];
  if (self) {
    _tag = DBSHARINGSharePathErrorAlreadyShared;
    _alreadyShared = alreadyShared;
  }
  return self;
}

- (instancetype)initWithInvalidPath {
  self = [super init];
  if (self) {
    _tag = DBSHARINGSharePathErrorInvalidPath;
  }
  return self;
}

- (instancetype)initWithIsOsxPackage {
  self = [super init];
  if (self) {
    _tag = DBSHARINGSharePathErrorIsOsxPackage;
  }
  return self;
}

- (instancetype)initWithInsideOsxPackage {
  self = [super init];
  if (self) {
    _tag = DBSHARINGSharePathErrorInsideOsxPackage;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBSHARINGSharePathErrorOther;
  }
  return self;
}

#pragma mark - Instance field accessors

- (DBSHARINGSharedFolderMetadata *)alreadyShared {
  if (![self isAlreadyShared]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBSHARINGSharePathErrorAlreadyShared, but was %@.", [self tagName]];
  }
  return _alreadyShared;
}

#pragma mark - Tag state methods

- (BOOL)isIsFile {
  return _tag == DBSHARINGSharePathErrorIsFile;
}

- (BOOL)isInsideSharedFolder {
  return _tag == DBSHARINGSharePathErrorInsideSharedFolder;
}

- (BOOL)isContainsSharedFolder {
  return _tag == DBSHARINGSharePathErrorContainsSharedFolder;
}

- (BOOL)isIsAppFolder {
  return _tag == DBSHARINGSharePathErrorIsAppFolder;
}

- (BOOL)isInsideAppFolder {
  return _tag == DBSHARINGSharePathErrorInsideAppFolder;
}

- (BOOL)isIsPublicFolder {
  return _tag == DBSHARINGSharePathErrorIsPublicFolder;
}

- (BOOL)isInsidePublicFolder {
  return _tag == DBSHARINGSharePathErrorInsidePublicFolder;
}

- (BOOL)isAlreadyShared {
  return _tag == DBSHARINGSharePathErrorAlreadyShared;
}

- (BOOL)isInvalidPath {
  return _tag == DBSHARINGSharePathErrorInvalidPath;
}

- (BOOL)isIsOsxPackage {
  return _tag == DBSHARINGSharePathErrorIsOsxPackage;
}

- (BOOL)isInsideOsxPackage {
  return _tag == DBSHARINGSharePathErrorInsideOsxPackage;
}

- (BOOL)isOther {
  return _tag == DBSHARINGSharePathErrorOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBSHARINGSharePathErrorIsFile:
    return @"DBSHARINGSharePathErrorIsFile";
  case DBSHARINGSharePathErrorInsideSharedFolder:
    return @"DBSHARINGSharePathErrorInsideSharedFolder";
  case DBSHARINGSharePathErrorContainsSharedFolder:
    return @"DBSHARINGSharePathErrorContainsSharedFolder";
  case DBSHARINGSharePathErrorIsAppFolder:
    return @"DBSHARINGSharePathErrorIsAppFolder";
  case DBSHARINGSharePathErrorInsideAppFolder:
    return @"DBSHARINGSharePathErrorInsideAppFolder";
  case DBSHARINGSharePathErrorIsPublicFolder:
    return @"DBSHARINGSharePathErrorIsPublicFolder";
  case DBSHARINGSharePathErrorInsidePublicFolder:
    return @"DBSHARINGSharePathErrorInsidePublicFolder";
  case DBSHARINGSharePathErrorAlreadyShared:
    return @"DBSHARINGSharePathErrorAlreadyShared";
  case DBSHARINGSharePathErrorInvalidPath:
    return @"DBSHARINGSharePathErrorInvalidPath";
  case DBSHARINGSharePathErrorIsOsxPackage:
    return @"DBSHARINGSharePathErrorIsOsxPackage";
  case DBSHARINGSharePathErrorInsideOsxPackage:
    return @"DBSHARINGSharePathErrorInsideOsxPackage";
  case DBSHARINGSharePathErrorOther:
    return @"DBSHARINGSharePathErrorOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBSHARINGSharePathErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBSHARINGSharePathErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBSHARINGSharePathErrorSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBSHARINGSharePathErrorSerializer

+ (NSDictionary *)serialize:(DBSHARINGSharePathError *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isIsFile]) {
    jsonDict[@".tag"] = @"is_file";
  } else if ([valueObj isInsideSharedFolder]) {
    jsonDict[@".tag"] = @"inside_shared_folder";
  } else if ([valueObj isContainsSharedFolder]) {
    jsonDict[@".tag"] = @"contains_shared_folder";
  } else if ([valueObj isIsAppFolder]) {
    jsonDict[@".tag"] = @"is_app_folder";
  } else if ([valueObj isInsideAppFolder]) {
    jsonDict[@".tag"] = @"inside_app_folder";
  } else if ([valueObj isIsPublicFolder]) {
    jsonDict[@".tag"] = @"is_public_folder";
  } else if ([valueObj isInsidePublicFolder]) {
    jsonDict[@".tag"] = @"inside_public_folder";
  } else if ([valueObj isAlreadyShared]) {
    jsonDict[@"already_shared"] =
        [[DBSHARINGSharedFolderMetadataSerializer serialize:valueObj.alreadyShared] mutableCopy];
    jsonDict[@".tag"] = @"already_shared";
  } else if ([valueObj isInvalidPath]) {
    jsonDict[@".tag"] = @"invalid_path";
  } else if ([valueObj isIsOsxPackage]) {
    jsonDict[@".tag"] = @"is_osx_package";
  } else if ([valueObj isInsideOsxPackage]) {
    jsonDict[@".tag"] = @"inside_osx_package";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag"
                                   reason:@"Object not properly initialized. Tag has an unknown value."
                                 userInfo:nil]);
  }

  return jsonDict;
}

+ (DBSHARINGSharePathError *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"is_file"]) {
    return [[DBSHARINGSharePathError alloc] initWithIsFile];
  } else if ([tag isEqualToString:@"inside_shared_folder"]) {
    return [[DBSHARINGSharePathError alloc] initWithInsideSharedFolder];
  } else if ([tag isEqualToString:@"contains_shared_folder"]) {
    return [[DBSHARINGSharePathError alloc] initWithContainsSharedFolder];
  } else if ([tag isEqualToString:@"is_app_folder"]) {
    return [[DBSHARINGSharePathError alloc] initWithIsAppFolder];
  } else if ([tag isEqualToString:@"inside_app_folder"]) {
    return [[DBSHARINGSharePathError alloc] initWithInsideAppFolder];
  } else if ([tag isEqualToString:@"is_public_folder"]) {
    return [[DBSHARINGSharePathError alloc] initWithIsPublicFolder];
  } else if ([tag isEqualToString:@"inside_public_folder"]) {
    return [[DBSHARINGSharePathError alloc] initWithInsidePublicFolder];
  } else if ([tag isEqualToString:@"already_shared"]) {
    DBSHARINGSharedFolderMetadata *alreadyShared = [DBSHARINGSharedFolderMetadataSerializer deserialize:valueDict];
    return [[DBSHARINGSharePathError alloc] initWithAlreadyShared:alreadyShared];
  } else if ([tag isEqualToString:@"invalid_path"]) {
    return [[DBSHARINGSharePathError alloc] initWithInvalidPath];
  } else if ([tag isEqualToString:@"is_osx_package"]) {
    return [[DBSHARINGSharePathError alloc] initWithIsOsxPackage];
  } else if ([tag isEqualToString:@"inside_osx_package"]) {
    return [[DBSHARINGSharePathError alloc] initWithInsideOsxPackage];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBSHARINGSharePathError alloc] initWithOther];
  }

  @throw([NSException
      exceptionWithName:@"InvalidTag"
                 reason:[NSString stringWithFormat:@"Tag has an invalid value: \"%@\".", valueDict[@".tag"]]
               userInfo:nil]);
}

@end

///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSerializableProtocol.h"
#import <Foundation/Foundation.h>

#pragma mark - API Object

///
/// The `GroupsListArg` struct.
///
/// This class implements the `DBSerializable` protocol (serialize and deserialize instance
/// methods), which is required for all Obj-C SDK API route objects.
///
@interface DBTEAMGroupsListArg : NSObject <DBSerializable>

#pragma mark - Instance fields

/// Number of results to return per call.
@property(nonatomic, readonly) NSNumber * _Nonnull limit;

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param limit Number of results to return per call.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithLimit:(NSNumber * _Nullable)limit;

///
/// Convenience constructor (exposes only non-nullable instance variables with no default value).
///
///
/// @return An initialized instance.
///
- (nonnull instancetype)init;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `GroupsListArg` struct.
///
@interface DBTEAMGroupsListArgSerializer : NSObject

///
/// Serializes `DBTEAMGroupsListArg` instances.
///
/// @param instance An instance of the `DBTEAMGroupsListArg` API object.
///
/// @return A json-compatible dictionary representation of the `DBTEAMGroupsListArg` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBTEAMGroupsListArg * _Nonnull)instance;

///
/// Deserializes `DBTEAMGroupsListArg` instances.
///
/// @param dict A json-compatible dictionary representation of the `DBTEAMGroupsListArg` API object.
///
/// @return An instantiation of the `DBTEAMGroupsListArg` object.
///
+ (DBTEAMGroupsListArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end

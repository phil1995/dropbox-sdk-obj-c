///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSerializableProtocol.h"
#import <Foundation/Foundation.h>

@class DBSHARINGFileAction;
@class DBSHARINGPermissionDeniedReason;

#pragma mark - API Object

///
/// The `FilePermission` struct.
///
/// Whether the user is allowed to take the sharing action on the file.
///
/// This class implements the `DBSerializable` protocol (serialize and deserialize instance
/// methods), which is required for all Obj-C SDK API route objects.
///
@interface DBSHARINGFilePermission : NSObject <DBSerializable>

#pragma mark - Instance fields

/// The action that the user may wish to take on the file.
@property(nonatomic, readonly) DBSHARINGFileAction * _Nonnull action;

/// True if the user is allowed to take the action.
@property(nonatomic, readonly) NSNumber * _Nonnull allow;

/// The reason why the user is denied the permission. Not present if the action is allowed
@property(nonatomic, readonly) DBSHARINGPermissionDeniedReason * _Nullable reason;

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param action The action that the user may wish to take on the file.
/// @param allow True if the user is allowed to take the action.
/// @param reason The reason why the user is denied the permission. Not present if the action is
/// allowed
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithAction:(DBSHARINGFileAction * _Nonnull)action
                                 allow:(NSNumber * _Nonnull)allow
                                reason:(DBSHARINGPermissionDeniedReason * _Nullable)reason;

///
/// Convenience constructor (exposes only non-nullable instance variables with no default value).
///
/// @param action The action that the user may wish to take on the file.
/// @param allow True if the user is allowed to take the action.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithAction:(DBSHARINGFileAction * _Nonnull)action allow:(NSNumber * _Nonnull)allow;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `FilePermission` struct.
///
@interface DBSHARINGFilePermissionSerializer : NSObject

///
/// Serializes `DBSHARINGFilePermission` instances.
///
/// @param instance An instance of the `DBSHARINGFilePermission` API object.
///
/// @return A json-compatible dictionary representation of the `DBSHARINGFilePermission` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBSHARINGFilePermission * _Nonnull)instance;

///
/// Deserializes `DBSHARINGFilePermission` instances.
///
/// @param dict A json-compatible dictionary representation of the `DBSHARINGFilePermission` API
/// object.
///
/// @return An instantiation of the `DBSHARINGFilePermission` object.
///
+ (DBSHARINGFilePermission * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end

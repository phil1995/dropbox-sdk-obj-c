///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSerializableProtocol.h"
#import <Foundation/Foundation.h>

#pragma mark - API Object

///
/// The `EmmState` union.
///
/// This class implements the `DBSerializable` protocol (serialize and deserialize instance
/// methods), which is required for all Obj-C SDK API route objects.
///
@interface DBTEAMPOLICIESEmmState : NSObject <DBSerializable>

#pragma mark - Instance fields

/// The `DBTEAMPOLICIESEmmStateTag` enum type represents the possible tag states with which the
/// `DBTEAMPOLICIESEmmState` union can exist.
typedef NS_ENUM(NSInteger, DBTEAMPOLICIESEmmStateTag) {
  /// Emm token is disabled
  DBTEAMPOLICIESEmmStateDisabled,

  /// Emm token is optional
  DBTEAMPOLICIESEmmStateOptional,

  /// Emm token is required
  DBTEAMPOLICIESEmmStateRequired,

  /// (no description).
  DBTEAMPOLICIESEmmStateOther,

};

/// Represents the union's current tag state.
@property(nonatomic, readonly) DBTEAMPOLICIESEmmStateTag tag;

#pragma mark - Constructors

///
/// Initializes union class with tag state of "disabled".
///
/// Description of the "disabled" tag state: Emm token is disabled
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithDisabled;

///
/// Initializes union class with tag state of "optional".
///
/// Description of the "optional" tag state: Emm token is optional
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithOptional;

///
/// Initializes union class with tag state of "required".
///
/// Description of the "required" tag state: Emm token is required
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithRequired;

///
/// Initializes union class with tag state of "other".
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithOther;

#pragma mark - Tag state methods

///
/// Retrieves whether the union's current tag state has value "disabled".
///
/// @return Whether the union's current tag state has value "disabled".
///
- (BOOL)isDisabled;

///
/// Retrieves whether the union's current tag state has value "optional".
///
/// @return Whether the union's current tag state has value "optional".
///
- (BOOL)isOptional;

///
/// Retrieves whether the union's current tag state has value "required".
///
/// @return Whether the union's current tag state has value "required".
///
- (BOOL)isRequired;

///
/// Retrieves whether the union's current tag state has value "other".
///
/// @return Whether the union's current tag state has value "other".
///
- (BOOL)isOther;

///
/// Retrieves string value of union's current tag state.
///
/// @return A human-readable string representing the union's current tag state.
///
- (NSString * _Nonnull)tagName;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `DBTEAMPOLICIESEmmState` union.
///
@interface DBTEAMPOLICIESEmmStateSerializer : NSObject

///
/// Serializes `DBTEAMPOLICIESEmmState` instances.
///
/// @param instance An instance of the `DBTEAMPOLICIESEmmState` API object.
///
/// @return A json-compatible dictionary representation of the `DBTEAMPOLICIESEmmState` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBTEAMPOLICIESEmmState * _Nonnull)instance;

///
/// Deserializes `DBTEAMPOLICIESEmmState` instances.
///
/// @param dict A json-compatible dictionary representation of the `DBTEAMPOLICIESEmmState` API
/// object.
///
/// @return An instantiation of the `DBTEAMPOLICIESEmmState` object.
///
+ (DBTEAMPOLICIESEmmState * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end

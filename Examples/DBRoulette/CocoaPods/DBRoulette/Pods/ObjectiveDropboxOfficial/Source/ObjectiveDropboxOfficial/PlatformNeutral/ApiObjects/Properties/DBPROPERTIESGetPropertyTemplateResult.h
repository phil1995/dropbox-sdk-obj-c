///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBPROPERTIESPropertyGroupTemplate.h"
#import "DBSerializableProtocol.h"
#import <Foundation/Foundation.h>

@class DBPROPERTIESPropertyFieldTemplate;

#pragma mark - API Object

///
/// The `GetPropertyTemplateResult` struct.
///
/// The Property template for the specified template.
///
/// This class implements the `DBSerializable` protocol (serialize and deserialize instance
/// methods), which is required for all Obj-C SDK API route objects.
///
@interface DBPROPERTIESGetPropertyTemplateResult : DBPROPERTIESPropertyGroupTemplate <DBSerializable>

#pragma mark - Instance fields

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param name A display name for the property template. Property template names can be up to 256
/// bytes.
/// @param description_ Description for new property template. Property template descriptions can be
/// up to 1024 bytes.
/// @param fields This is a list of custom properties associated with a property template. There can
/// be up to 64 properties in a single property template.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithName:(NSString * _Nonnull)name
                        description_:(NSString * _Nonnull)description_
                              fields:(NSArray<DBPROPERTIESPropertyFieldTemplate *> * _Nonnull)fields;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `GetPropertyTemplateResult` struct.
///
@interface DBPROPERTIESGetPropertyTemplateResultSerializer : NSObject

///
/// Serializes `DBPROPERTIESGetPropertyTemplateResult` instances.
///
/// @param instance An instance of the `DBPROPERTIESGetPropertyTemplateResult` API object.
///
/// @return A json-compatible dictionary representation of the
/// `DBPROPERTIESGetPropertyTemplateResult` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBPROPERTIESGetPropertyTemplateResult * _Nonnull)instance;

///
/// Deserializes `DBPROPERTIESGetPropertyTemplateResult` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBPROPERTIESGetPropertyTemplateResult` API object.
///
/// @return An instantiation of the `DBPROPERTIESGetPropertyTemplateResult` object.
///
+ (DBPROPERTIESGetPropertyTemplateResult * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end

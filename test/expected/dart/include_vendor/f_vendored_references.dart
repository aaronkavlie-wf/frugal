// Autogenerated by Frugal Compiler (2.22.2)
// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart' as thrift;
import 'package:include_vendor/include_vendor.dart' as t_include_vendor;
import 'package:some_vendored_place/vendor_namespace.dart' as t_vendor_namespace;
import 'package:excepts/excepts.dart' as t_excepts;

class VendoredReferences implements thrift.TBase {
  static final thrift.TStruct _STRUCT_DESC = new thrift.TStruct("VendoredReferences");
  static final thrift.TField _REFERENCE_VENDORED_CONST_FIELD_DESC = new thrift.TField("reference_vendored_const", thrift.TType.I32, 1);
  static final thrift.TField _REFERENCE_VENDORED_ENUM_FIELD_DESC = new thrift.TField("reference_vendored_enum", thrift.TType.I32, 2);

  int reference_vendored_const;
  static const int REFERENCE_VENDORED_CONST = 1;
  int reference_vendored_enum;
  static const int REFERENCE_VENDORED_ENUM = 2;


  VendoredReferences() {
    this.reference_vendored_const = t_vendor_namespace.VendorNamespaceConstants.a_const;
    this.reference_vendored_enum = t_vendor_namespace.MyEnum.TWO;
  }

  @deprecated
  bool isSetReference_vendored_const() => reference_vendored_const == null;

  @deprecated
  unsetReference_vendored_const() => reference_vendored_const = null;

  @deprecated
  bool isSetReference_vendored_enum() => reference_vendored_enum == null;

  @deprecated
  unsetReference_vendored_enum() => reference_vendored_enum = null;

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case REFERENCE_VENDORED_CONST:
        return this.reference_vendored_const;
      case REFERENCE_VENDORED_ENUM:
        return this.reference_vendored_enum;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch(fieldID) {
      case REFERENCE_VENDORED_CONST:
        if (value == null) {
          reference_vendored_const = null;
        } else if (value is int) {
          reference_vendored_const = value;
        }

        break;

      case REFERENCE_VENDORED_ENUM:
        if (value == null) {
          reference_vendored_enum = null;
        } else if (value is int) {
          reference_vendored_enum = value;
        }

        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if the field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch(fieldID) {
      case REFERENCE_VENDORED_CONST:
        return reference_vendored_const == null;

      case REFERENCE_VENDORED_ENUM:
        return reference_vendored_enum == null;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  read(thrift.TProtocol iprot) {
    thrift.TField field;
    iprot.readStructBegin();
    while(true) {
      field = iprot.readFieldBegin();
      if(field.type == thrift.TType.STOP) {
        break;
      }
      switch(field.id) {
        case REFERENCE_VENDORED_CONST:
          if(field.type == thrift.TType.I32) {
            reference_vendored_const = iprot.readI32();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case REFERENCE_VENDORED_ENUM:
          if(field.type == thrift.TType.I32) {
            reference_vendored_enum = iprot.readI32();
            reference_vendored_enum = null;
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          thrift.TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    validate();
  }

  write(thrift.TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    if(reference_vendored_const != null) {
      oprot.writeFieldBegin(_REFERENCE_VENDORED_CONST_FIELD_DESC);
      oprot.writeI32(reference_vendored_const);
      oprot.writeFieldEnd();
    }
    if(reference_vendored_enum != null) {
      oprot.writeFieldBegin(_REFERENCE_VENDORED_ENUM_FIELD_DESC);
      oprot.writeI32(reference_vendored_enum);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("VendoredReferences(");

    if(Reference_vendored_const != null) {
      ret.write("reference_vendored_const:");
      ret.write(this.reference_vendored_const);
    }

    if(Reference_vendored_enum != null) {
      ret.write(", ");
      ret.write("reference_vendored_enum:");
      String reference_vendored_enum_name = t_vendor_namespace.MyEnum.VALUES_TO_NAMES[this.reference_vendored_enum];
      if(reference_vendored_enum_name != null) {
        ret.write(reference_vendored_enum_name);
        ret.write(" (");
      }
      ret.write(this.reference_vendored_enum);
      if(reference_vendored_enum_name != null) {
        ret.write(")");
      }
    }

    ret.write(")");

    return ret.toString();
  }

  bool operator ==(Object o) {
    if(o == null || !(o is VendoredReferences)) {
      return false;
    }
    VendoredReferences other = o as VendoredReferences;
    return this.reference_vendored_const == other.reference_vendored_const
      && this.reference_vendored_enum == other.reference_vendored_enum;
  }

  int get hashCode {
    var value = 17;
    value = (value * 31) ^ reference_vendored_const.hashCode;
    value = (value * 31) ^ reference_vendored_enum.hashCode;
    return value;
  }

  VendoredReferences clone({
    int reference_vendored_const: null,
    int reference_vendored_enum: null,
  }) {
    return new VendoredReferences()
      ..reference_vendored_const = reference_vendored_const ?? this.reference_vendored_const
      ..reference_vendored_enum = reference_vendored_enum ?? this.reference_vendored_enum;
  }

  validate() {
    if(reference_vendored_enum != null && !t_vendor_namespace.MyEnum.VALID_VALUES.contains(reference_vendored_enum)) {
      throw new thrift.TProtocolError(thrift.TProtocolErrorType.INVALID_DATA, "The field 'reference_vendored_enum' has been assigned the invalid value $reference_vendored_enum");
    }
  }
}

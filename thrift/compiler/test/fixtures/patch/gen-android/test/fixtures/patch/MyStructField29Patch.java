/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
package test.fixtures.patch;

import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;
import java.util.Set;
import java.util.HashSet;
import java.util.Collections;
import java.util.BitSet;
import java.util.Arrays;
import com.facebook.thrift.*;
import com.facebook.thrift.annotations.*;
import com.facebook.thrift.async.*;
import com.facebook.thrift.meta_data.*;
import com.facebook.thrift.server.*;
import com.facebook.thrift.transport.*;
import com.facebook.thrift.protocol.*;

@SuppressWarnings({ "unused", "serial" })
public class MyStructField29Patch implements TBase, java.io.Serializable, Cloneable {
  private static final TStruct STRUCT_DESC = new TStruct("MyStructField29Patch");
  private static final TField ASSIGN_FIELD_DESC = new TField("assign", TType.LIST, (short)1);
  private static final TField CLEAR_FIELD_DESC = new TField("clear", TType.BOOL, (short)2);
  private static final TField PATCH_FIELD_DESC = new TField("patch", TType.MAP, (short)3);
  private static final TField PREPEND_FIELD_DESC = new TField("prepend", TType.LIST, (short)8);
  private static final TField APPEND_FIELD_DESC = new TField("append", TType.LIST, (short)9);

  /**
   * Assigns to a (set) value.
   * 
   * If set, all other operations are ignored.
   * 
   * Note: Optional and union fields must be set before assigned.
   * 
   */
  public final List<Map<String,Integer>> assign;
  /**
   * Clears a value. Applies first.
   */
  public final Boolean clear;
  /**
   * Patches list values by index. Applies second.
   */
  public final Map<Integer,MyStructField29Patch1> patch;
  /**
   * Prepends to the front of a given list.
   */
  public final List<Map<String,Integer>> prepend;
  /**
   * Appends to the back of a given list.
   */
  public final List<Map<String,Integer>> append;
  public static final int ASSIGN = 1;
  public static final int CLEAR = 2;
  public static final int PATCH = 3;
  public static final int PREPEND = 8;
  public static final int APPEND = 9;

  public MyStructField29Patch(
      List<Map<String,Integer>> assign,
      Boolean clear,
      Map<Integer,MyStructField29Patch1> patch,
      List<Map<String,Integer>> prepend,
      List<Map<String,Integer>> append) {
    this.assign = assign;
    this.clear = clear;
    this.patch = patch;
    this.prepend = prepend;
    this.append = append;
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public MyStructField29Patch(MyStructField29Patch other) {
    if (other.isSetAssign()) {
      this.assign = TBaseHelper.deepCopy(other.assign);
    } else {
      this.assign = null;
    }
    if (other.isSetClear()) {
      this.clear = TBaseHelper.deepCopy(other.clear);
    } else {
      this.clear = null;
    }
    if (other.isSetPatch()) {
      this.patch = TBaseHelper.deepCopy(other.patch);
    } else {
      this.patch = null;
    }
    if (other.isSetPrepend()) {
      this.prepend = TBaseHelper.deepCopy(other.prepend);
    } else {
      this.prepend = null;
    }
    if (other.isSetAppend()) {
      this.append = TBaseHelper.deepCopy(other.append);
    } else {
      this.append = null;
    }
  }

  public MyStructField29Patch deepCopy() {
    return new MyStructField29Patch(this);
  }

  /**
   * Assigns to a (set) value.
   * 
   * If set, all other operations are ignored.
   * 
   * Note: Optional and union fields must be set before assigned.
   * 
   */
  public List<Map<String,Integer>> getAssign() {
    return this.assign;
  }

  // Returns true if field assign is set (has been assigned a value) and false otherwise
  public boolean isSetAssign() {
    return this.assign != null;
  }

  /**
   * Clears a value. Applies first.
   */
  public Boolean isClear() {
    return this.clear;
  }

  // Returns true if field clear is set (has been assigned a value) and false otherwise
  public boolean isSetClear() {
    return this.clear != null;
  }

  /**
   * Patches list values by index. Applies second.
   */
  public Map<Integer,MyStructField29Patch1> getPatch() {
    return this.patch;
  }

  // Returns true if field patch is set (has been assigned a value) and false otherwise
  public boolean isSetPatch() {
    return this.patch != null;
  }

  /**
   * Prepends to the front of a given list.
   */
  public List<Map<String,Integer>> getPrepend() {
    return this.prepend;
  }

  // Returns true if field prepend is set (has been assigned a value) and false otherwise
  public boolean isSetPrepend() {
    return this.prepend != null;
  }

  /**
   * Appends to the back of a given list.
   */
  public List<Map<String,Integer>> getAppend() {
    return this.append;
  }

  // Returns true if field append is set (has been assigned a value) and false otherwise
  public boolean isSetAppend() {
    return this.append != null;
  }

  @Override
  public boolean equals(Object _that) {
    if (_that == null)
      return false;
    if (this == _that)
      return true;
    if (!(_that instanceof MyStructField29Patch))
      return false;
    MyStructField29Patch that = (MyStructField29Patch)_that;

    if (!TBaseHelper.equalsNobinary(this.isSetAssign(), that.isSetAssign(), this.assign, that.assign)) { return false; }

    if (!TBaseHelper.equalsNobinary(this.isSetClear(), that.isSetClear(), this.clear, that.clear)) { return false; }

    if (!TBaseHelper.equalsNobinary(this.isSetPatch(), that.isSetPatch(), this.patch, that.patch)) { return false; }

    if (!TBaseHelper.equalsNobinary(this.isSetPrepend(), that.isSetPrepend(), this.prepend, that.prepend)) { return false; }

    if (!TBaseHelper.equalsNobinary(this.isSetAppend(), that.isSetAppend(), this.append, that.append)) { return false; }

    return true;
  }

  @Override
  public int hashCode() {
    return Arrays.deepHashCode(new Object[] {assign, clear, patch, prepend, append});
  }

  // This is required to satisfy the TBase interface, but can't be implemented on immutable struture.
  public void read(TProtocol iprot) throws TException {
    throw new TException("unimplemented in android immutable structure");
  }

  public static MyStructField29Patch deserialize(TProtocol iprot) throws TException {
    List<Map<String,Integer>> tmp_assign = null;
    Boolean tmp_clear = null;
    Map<Integer,MyStructField29Patch1> tmp_patch = null;
    List<Map<String,Integer>> tmp_prepend = null;
    List<Map<String,Integer>> tmp_append = null;
    TField __field;
    iprot.readStructBegin();
    while (true)
    {
      __field = iprot.readFieldBegin();
      if (__field.type == TType.STOP) {
        break;
      }
      switch (__field.id)
      {
        case ASSIGN:
          if (__field.type == TType.LIST) {
            {
              TList _list95 = iprot.readListBegin();
              tmp_assign = new ArrayList<Map<String,Integer>>(Math.max(0, _list95.size));
              for (int _i96 = 0; 
                   (_list95.size < 0) ? iprot.peekList() : (_i96 < _list95.size); 
                   ++_i96)
              {
                Map<String,Integer> _elem97;
                {
                  TMap _map98 = iprot.readMapBegin();
                  _elem97 = new HashMap<String,Integer>(Math.max(0, 2*_map98.size));
                  for (int _i99 = 0; 
                       (_map98.size < 0) ? iprot.peekMap() : (_i99 < _map98.size); 
                       ++_i99)
                  {
                    String _key100;
                    Integer _val101;
                    _key100 = iprot.readString();
                    _val101 = iprot.readI32();
                    _elem97.put(_key100, _val101);
                  }
                  iprot.readMapEnd();
                }
                tmp_assign.add(_elem97);
              }
              iprot.readListEnd();
            }
          } else {
            TProtocolUtil.skip(iprot, __field.type);
          }
          break;
        case CLEAR:
          if (__field.type == TType.BOOL) {
            tmp_clear = iprot.readBool();
          } else {
            TProtocolUtil.skip(iprot, __field.type);
          }
          break;
        case PATCH:
          if (__field.type == TType.MAP) {
            {
              TMap _map102 = iprot.readMapBegin();
              tmp_patch = new HashMap<Integer,MyStructField29Patch1>(Math.max(0, 2*_map102.size));
              for (int _i103 = 0; 
                   (_map102.size < 0) ? iprot.peekMap() : (_i103 < _map102.size); 
                   ++_i103)
              {
                Integer _key104;
                MyStructField29Patch1 _val105;
                _key104 = iprot.readI32();
                _val105 = MyStructField29Patch1.deserialize(iprot);
                tmp_patch.put(_key104, _val105);
              }
              iprot.readMapEnd();
            }
          } else {
            TProtocolUtil.skip(iprot, __field.type);
          }
          break;
        case PREPEND:
          if (__field.type == TType.LIST) {
            {
              TList _list106 = iprot.readListBegin();
              tmp_prepend = new ArrayList<Map<String,Integer>>(Math.max(0, _list106.size));
              for (int _i107 = 0; 
                   (_list106.size < 0) ? iprot.peekList() : (_i107 < _list106.size); 
                   ++_i107)
              {
                Map<String,Integer> _elem108;
                {
                  TMap _map109 = iprot.readMapBegin();
                  _elem108 = new HashMap<String,Integer>(Math.max(0, 2*_map109.size));
                  for (int _i110 = 0; 
                       (_map109.size < 0) ? iprot.peekMap() : (_i110 < _map109.size); 
                       ++_i110)
                  {
                    String _key111;
                    Integer _val112;
                    _key111 = iprot.readString();
                    _val112 = iprot.readI32();
                    _elem108.put(_key111, _val112);
                  }
                  iprot.readMapEnd();
                }
                tmp_prepend.add(_elem108);
              }
              iprot.readListEnd();
            }
          } else {
            TProtocolUtil.skip(iprot, __field.type);
          }
          break;
        case APPEND:
          if (__field.type == TType.LIST) {
            {
              TList _list113 = iprot.readListBegin();
              tmp_append = new ArrayList<Map<String,Integer>>(Math.max(0, _list113.size));
              for (int _i114 = 0; 
                   (_list113.size < 0) ? iprot.peekList() : (_i114 < _list113.size); 
                   ++_i114)
              {
                Map<String,Integer> _elem115;
                {
                  TMap _map116 = iprot.readMapBegin();
                  _elem115 = new HashMap<String,Integer>(Math.max(0, 2*_map116.size));
                  for (int _i117 = 0; 
                       (_map116.size < 0) ? iprot.peekMap() : (_i117 < _map116.size); 
                       ++_i117)
                  {
                    String _key118;
                    Integer _val119;
                    _key118 = iprot.readString();
                    _val119 = iprot.readI32();
                    _elem115.put(_key118, _val119);
                  }
                  iprot.readMapEnd();
                }
                tmp_append.add(_elem115);
              }
              iprot.readListEnd();
            }
          } else {
            TProtocolUtil.skip(iprot, __field.type);
          }
          break;
        default:
          TProtocolUtil.skip(iprot, __field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    MyStructField29Patch _that;
    _that = new MyStructField29Patch(
      tmp_assign
      ,tmp_clear
      ,tmp_patch
      ,tmp_prepend
      ,tmp_append
    );
    _that.validate();
    return _that;
  }

  public void write(TProtocol oprot) throws TException {
    validate();

    oprot.writeStructBegin(STRUCT_DESC);
    if (this.assign != null) {
      if (isSetAssign()) {
        oprot.writeFieldBegin(ASSIGN_FIELD_DESC);
        {
          oprot.writeListBegin(new TList(TType.MAP, this.assign.size()));
          for (Map<String,Integer> _iter120 : this.assign)          {
            {
              oprot.writeMapBegin(new TMap(TType.STRING, TType.I32, _iter120.size()));
              for (Map.Entry<String, Integer> _iter121 : _iter120.entrySet())              {
                oprot.writeString(_iter121.getKey());
                oprot.writeI32(_iter121.getValue());
              }
              oprot.writeMapEnd();
            }
          }
          oprot.writeListEnd();
        }
        oprot.writeFieldEnd();
      }
    }
    if (this.clear != null) {
      oprot.writeFieldBegin(CLEAR_FIELD_DESC);
      oprot.writeBool(this.clear);
      oprot.writeFieldEnd();
    }
    if (this.patch != null) {
      oprot.writeFieldBegin(PATCH_FIELD_DESC);
      {
        oprot.writeMapBegin(new TMap(TType.I32, TType.STRUCT, this.patch.size()));
        for (Map.Entry<Integer, MyStructField29Patch1> _iter122 : this.patch.entrySet())        {
          oprot.writeI32(_iter122.getKey());
          _iter122.getValue().write(oprot);
        }
        oprot.writeMapEnd();
      }
      oprot.writeFieldEnd();
    }
    if (this.prepend != null) {
      oprot.writeFieldBegin(PREPEND_FIELD_DESC);
      {
        oprot.writeListBegin(new TList(TType.MAP, this.prepend.size()));
        for (Map<String,Integer> _iter123 : this.prepend)        {
          {
            oprot.writeMapBegin(new TMap(TType.STRING, TType.I32, _iter123.size()));
            for (Map.Entry<String, Integer> _iter124 : _iter123.entrySet())            {
              oprot.writeString(_iter124.getKey());
              oprot.writeI32(_iter124.getValue());
            }
            oprot.writeMapEnd();
          }
        }
        oprot.writeListEnd();
      }
      oprot.writeFieldEnd();
    }
    if (this.append != null) {
      oprot.writeFieldBegin(APPEND_FIELD_DESC);
      {
        oprot.writeListBegin(new TList(TType.MAP, this.append.size()));
        for (Map<String,Integer> _iter125 : this.append)        {
          {
            oprot.writeMapBegin(new TMap(TType.STRING, TType.I32, _iter125.size()));
            for (Map.Entry<String, Integer> _iter126 : _iter125.entrySet())            {
              oprot.writeString(_iter126.getKey());
              oprot.writeI32(_iter126.getValue());
            }
            oprot.writeMapEnd();
          }
        }
        oprot.writeListEnd();
      }
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  @Override
  public String toString() {
    return toString(1, true);
  }

  @Override
  public String toString(int indent, boolean prettyPrint) {
    return TBaseHelper.toStringHelper(this, indent, prettyPrint);
  }

  public void validate() throws TException {
    // check for required fields
  }

}


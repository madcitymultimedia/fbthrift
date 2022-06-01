#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#
cimport cython as __cython
from cython.operator cimport dereference as deref
from libcpp.memory cimport make_unique, unique_ptr, shared_ptr
from thrift.py3.types cimport assign_unique_ptr, assign_shared_ptr, assign_shared_const_ptr

cimport thrift.py3.types
from thrift.py3.types cimport (
    reset_field as __reset_field,
    StructFieldsSetter as __StructFieldsSetter
)

from thrift.py3.types cimport const_pointer_cast


@__cython.auto_pickle(False)
cdef class __MyStruct_FieldsSetter(__StructFieldsSetter):

    @staticmethod
    cdef __MyStruct_FieldsSetter _fbthrift_create(_terse_write_types.cMyStruct* struct_cpp_obj):
        cdef __MyStruct_FieldsSetter __fbthrift_inst = __MyStruct_FieldsSetter.__new__(__MyStruct_FieldsSetter)
        __fbthrift_inst._struct_cpp_obj = struct_cpp_obj
        return __fbthrift_inst

    cdef void set_field(__MyStruct_FieldsSetter self, const char* name, object value) except *:
        cdef __cstring_view cname = __cstring_view(name)
        cdef cumap[__cstring_view, __MyStruct_FieldsSetterFunc].iterator found = self._setters.find(cname)
        if found == self._setters.end():
            raise TypeError(f"invalid field name {name.decode('utf-8')}")
        deref(found).second(self, value)


@__cython.auto_pickle(False)
cdef class __StructLevelTerseStruct_FieldsSetter(__StructFieldsSetter):

    @staticmethod
    cdef __StructLevelTerseStruct_FieldsSetter _fbthrift_create(_terse_write_types.cStructLevelTerseStruct* struct_cpp_obj):
        cdef __StructLevelTerseStruct_FieldsSetter __fbthrift_inst = __StructLevelTerseStruct_FieldsSetter.__new__(__StructLevelTerseStruct_FieldsSetter)
        __fbthrift_inst._struct_cpp_obj = struct_cpp_obj
        __fbthrift_inst._setters[__cstring_view(<const char*>"bool_field")] = __StructLevelTerseStruct_FieldsSetter._set_field_0
        __fbthrift_inst._setters[__cstring_view(<const char*>"byte_field")] = __StructLevelTerseStruct_FieldsSetter._set_field_1
        __fbthrift_inst._setters[__cstring_view(<const char*>"short_field")] = __StructLevelTerseStruct_FieldsSetter._set_field_2
        __fbthrift_inst._setters[__cstring_view(<const char*>"int_field")] = __StructLevelTerseStruct_FieldsSetter._set_field_3
        __fbthrift_inst._setters[__cstring_view(<const char*>"long_field")] = __StructLevelTerseStruct_FieldsSetter._set_field_4
        __fbthrift_inst._setters[__cstring_view(<const char*>"float_field")] = __StructLevelTerseStruct_FieldsSetter._set_field_5
        __fbthrift_inst._setters[__cstring_view(<const char*>"double_field")] = __StructLevelTerseStruct_FieldsSetter._set_field_6
        __fbthrift_inst._setters[__cstring_view(<const char*>"string_field")] = __StructLevelTerseStruct_FieldsSetter._set_field_7
        __fbthrift_inst._setters[__cstring_view(<const char*>"binary_field")] = __StructLevelTerseStruct_FieldsSetter._set_field_8
        __fbthrift_inst._setters[__cstring_view(<const char*>"enum_field")] = __StructLevelTerseStruct_FieldsSetter._set_field_9
        __fbthrift_inst._setters[__cstring_view(<const char*>"list_field")] = __StructLevelTerseStruct_FieldsSetter._set_field_10
        __fbthrift_inst._setters[__cstring_view(<const char*>"set_field")] = __StructLevelTerseStruct_FieldsSetter._set_field_11
        __fbthrift_inst._setters[__cstring_view(<const char*>"map_field")] = __StructLevelTerseStruct_FieldsSetter._set_field_12
        __fbthrift_inst._setters[__cstring_view(<const char*>"struct_field")] = __StructLevelTerseStruct_FieldsSetter._set_field_13
        return __fbthrift_inst

    cdef void set_field(__StructLevelTerseStruct_FieldsSetter self, const char* name, object value) except *:
        cdef __cstring_view cname = __cstring_view(name)
        cdef cumap[__cstring_view, __StructLevelTerseStruct_FieldsSetterFunc].iterator found = self._setters.find(cname)
        if found == self._setters.end():
            raise TypeError(f"invalid field name {name.decode('utf-8')}")
        deref(found).second(self, value)

    cdef void _set_field_0(self, _fbthrift_value) except *:
        # for field bool_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cStructLevelTerseStruct](deref(self._struct_cpp_obj), 0)
            return
        if not isinstance(_fbthrift_value, bool):
            raise TypeError(f'bool_field is not a { bool !r}.')
        deref(self._struct_cpp_obj).bool_field_ref().assign(_fbthrift_value)

    cdef void _set_field_1(self, _fbthrift_value) except *:
        # for field byte_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cStructLevelTerseStruct](deref(self._struct_cpp_obj), 1)
            return
        if not isinstance(_fbthrift_value, int):
            raise TypeError(f'byte_field is not a { int !r}.')
        _fbthrift_value = <cint8_t> _fbthrift_value
        deref(self._struct_cpp_obj).byte_field_ref().assign(_fbthrift_value)

    cdef void _set_field_2(self, _fbthrift_value) except *:
        # for field short_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cStructLevelTerseStruct](deref(self._struct_cpp_obj), 2)
            return
        if not isinstance(_fbthrift_value, int):
            raise TypeError(f'short_field is not a { int !r}.')
        _fbthrift_value = <cint16_t> _fbthrift_value
        deref(self._struct_cpp_obj).short_field_ref().assign(_fbthrift_value)

    cdef void _set_field_3(self, _fbthrift_value) except *:
        # for field int_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cStructLevelTerseStruct](deref(self._struct_cpp_obj), 3)
            return
        if not isinstance(_fbthrift_value, int):
            raise TypeError(f'int_field is not a { int !r}.')
        _fbthrift_value = <cint32_t> _fbthrift_value
        deref(self._struct_cpp_obj).int_field_ref().assign(_fbthrift_value)

    cdef void _set_field_4(self, _fbthrift_value) except *:
        # for field long_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cStructLevelTerseStruct](deref(self._struct_cpp_obj), 4)
            return
        if not isinstance(_fbthrift_value, int):
            raise TypeError(f'long_field is not a { int !r}.')
        _fbthrift_value = <cint64_t> _fbthrift_value
        deref(self._struct_cpp_obj).long_field_ref().assign(_fbthrift_value)

    cdef void _set_field_5(self, _fbthrift_value) except *:
        # for field float_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cStructLevelTerseStruct](deref(self._struct_cpp_obj), 5)
            return
        if not isinstance(_fbthrift_value, (float, int)):
            raise TypeError(f'float_field is not a { float !r}.')
        deref(self._struct_cpp_obj).float_field_ref().assign(_fbthrift_value)

    cdef void _set_field_6(self, _fbthrift_value) except *:
        # for field double_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cStructLevelTerseStruct](deref(self._struct_cpp_obj), 6)
            return
        if not isinstance(_fbthrift_value, (float, int)):
            raise TypeError(f'double_field is not a { float !r}.')
        deref(self._struct_cpp_obj).double_field_ref().assign(_fbthrift_value)

    cdef void _set_field_7(self, _fbthrift_value) except *:
        # for field string_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cStructLevelTerseStruct](deref(self._struct_cpp_obj), 7)
            return
        if not isinstance(_fbthrift_value, str):
            raise TypeError(f'string_field is not a { str !r}.')
        deref(self._struct_cpp_obj).string_field_ref().assign(cmove(bytes_to_string(_fbthrift_value.encode('utf-8'))))

    cdef void _set_field_8(self, _fbthrift_value) except *:
        # for field binary_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cStructLevelTerseStruct](deref(self._struct_cpp_obj), 8)
            return
        if not isinstance(_fbthrift_value, bytes):
            raise TypeError(f'binary_field is not a { bytes !r}.')
        deref(self._struct_cpp_obj).binary_field_ref().assign(cmove(bytes_to_string(_fbthrift_value)))

    cdef void _set_field_9(self, _fbthrift_value) except *:
        # for field enum_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cStructLevelTerseStruct](deref(self._struct_cpp_obj), 9)
            return
        if not isinstance(_fbthrift_value, _terse_write_types.MyEnum):
            raise TypeError(f'field enum_field value: {repr(_fbthrift_value)} is not of the enum type { _terse_write_types.MyEnum }.')
        deref(self._struct_cpp_obj).enum_field_ref().assign(<_terse_write_types.cMyEnum><int>_fbthrift_value)

    cdef void _set_field_10(self, _fbthrift_value) except *:
        # for field list_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cStructLevelTerseStruct](deref(self._struct_cpp_obj), 10)
            return
        deref(self._struct_cpp_obj).list_field_ref().assign(deref(_terse_write_types.List__i16(_fbthrift_value)._cpp_obj))

    cdef void _set_field_11(self, _fbthrift_value) except *:
        # for field set_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cStructLevelTerseStruct](deref(self._struct_cpp_obj), 11)
            return
        deref(self._struct_cpp_obj).set_field_ref().assign(deref(_terse_write_types.Set__i16(_fbthrift_value)._cpp_obj))

    cdef void _set_field_12(self, _fbthrift_value) except *:
        # for field map_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cStructLevelTerseStruct](deref(self._struct_cpp_obj), 12)
            return
        deref(self._struct_cpp_obj).map_field_ref().assign(deref(_terse_write_types.Map__i16_i16(_fbthrift_value)._cpp_obj))

    cdef void _set_field_13(self, _fbthrift_value) except *:
        # for field struct_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cStructLevelTerseStruct](deref(self._struct_cpp_obj), 13)
            return
        if not isinstance(_fbthrift_value, _terse_write_types.MyStruct):
            raise TypeError(f'struct_field is not a { _terse_write_types.MyStruct !r}.')
        deref(self._struct_cpp_obj).struct_field_ref().assign(deref((<_terse_write_types.MyStruct?> _fbthrift_value)._cpp_obj))


@__cython.auto_pickle(False)
cdef class __FieldLevelTerseStruct_FieldsSetter(__StructFieldsSetter):

    @staticmethod
    cdef __FieldLevelTerseStruct_FieldsSetter _fbthrift_create(_terse_write_types.cFieldLevelTerseStruct* struct_cpp_obj):
        cdef __FieldLevelTerseStruct_FieldsSetter __fbthrift_inst = __FieldLevelTerseStruct_FieldsSetter.__new__(__FieldLevelTerseStruct_FieldsSetter)
        __fbthrift_inst._struct_cpp_obj = struct_cpp_obj
        __fbthrift_inst._setters[__cstring_view(<const char*>"terse_bool_field")] = __FieldLevelTerseStruct_FieldsSetter._set_field_0
        __fbthrift_inst._setters[__cstring_view(<const char*>"terse_byte_field")] = __FieldLevelTerseStruct_FieldsSetter._set_field_1
        __fbthrift_inst._setters[__cstring_view(<const char*>"terse_short_field")] = __FieldLevelTerseStruct_FieldsSetter._set_field_2
        __fbthrift_inst._setters[__cstring_view(<const char*>"terse_int_field")] = __FieldLevelTerseStruct_FieldsSetter._set_field_3
        __fbthrift_inst._setters[__cstring_view(<const char*>"terse_long_field")] = __FieldLevelTerseStruct_FieldsSetter._set_field_4
        __fbthrift_inst._setters[__cstring_view(<const char*>"terse_float_field")] = __FieldLevelTerseStruct_FieldsSetter._set_field_5
        __fbthrift_inst._setters[__cstring_view(<const char*>"terse_double_field")] = __FieldLevelTerseStruct_FieldsSetter._set_field_6
        __fbthrift_inst._setters[__cstring_view(<const char*>"terse_string_field")] = __FieldLevelTerseStruct_FieldsSetter._set_field_7
        __fbthrift_inst._setters[__cstring_view(<const char*>"terse_binary_field")] = __FieldLevelTerseStruct_FieldsSetter._set_field_8
        __fbthrift_inst._setters[__cstring_view(<const char*>"terse_enum_field")] = __FieldLevelTerseStruct_FieldsSetter._set_field_9
        __fbthrift_inst._setters[__cstring_view(<const char*>"terse_list_field")] = __FieldLevelTerseStruct_FieldsSetter._set_field_10
        __fbthrift_inst._setters[__cstring_view(<const char*>"terse_set_field")] = __FieldLevelTerseStruct_FieldsSetter._set_field_11
        __fbthrift_inst._setters[__cstring_view(<const char*>"terse_map_field")] = __FieldLevelTerseStruct_FieldsSetter._set_field_12
        __fbthrift_inst._setters[__cstring_view(<const char*>"terse_struct_field")] = __FieldLevelTerseStruct_FieldsSetter._set_field_13
        __fbthrift_inst._setters[__cstring_view(<const char*>"bool_field")] = __FieldLevelTerseStruct_FieldsSetter._set_field_14
        __fbthrift_inst._setters[__cstring_view(<const char*>"byte_field")] = __FieldLevelTerseStruct_FieldsSetter._set_field_15
        __fbthrift_inst._setters[__cstring_view(<const char*>"short_field")] = __FieldLevelTerseStruct_FieldsSetter._set_field_16
        __fbthrift_inst._setters[__cstring_view(<const char*>"int_field")] = __FieldLevelTerseStruct_FieldsSetter._set_field_17
        __fbthrift_inst._setters[__cstring_view(<const char*>"long_field")] = __FieldLevelTerseStruct_FieldsSetter._set_field_18
        __fbthrift_inst._setters[__cstring_view(<const char*>"float_field")] = __FieldLevelTerseStruct_FieldsSetter._set_field_19
        __fbthrift_inst._setters[__cstring_view(<const char*>"double_field")] = __FieldLevelTerseStruct_FieldsSetter._set_field_20
        __fbthrift_inst._setters[__cstring_view(<const char*>"string_field")] = __FieldLevelTerseStruct_FieldsSetter._set_field_21
        __fbthrift_inst._setters[__cstring_view(<const char*>"binary_field")] = __FieldLevelTerseStruct_FieldsSetter._set_field_22
        __fbthrift_inst._setters[__cstring_view(<const char*>"enum_field")] = __FieldLevelTerseStruct_FieldsSetter._set_field_23
        __fbthrift_inst._setters[__cstring_view(<const char*>"list_field")] = __FieldLevelTerseStruct_FieldsSetter._set_field_24
        __fbthrift_inst._setters[__cstring_view(<const char*>"set_field")] = __FieldLevelTerseStruct_FieldsSetter._set_field_25
        __fbthrift_inst._setters[__cstring_view(<const char*>"map_field")] = __FieldLevelTerseStruct_FieldsSetter._set_field_26
        __fbthrift_inst._setters[__cstring_view(<const char*>"struct_field")] = __FieldLevelTerseStruct_FieldsSetter._set_field_27
        return __fbthrift_inst

    cdef void set_field(__FieldLevelTerseStruct_FieldsSetter self, const char* name, object value) except *:
        cdef __cstring_view cname = __cstring_view(name)
        cdef cumap[__cstring_view, __FieldLevelTerseStruct_FieldsSetterFunc].iterator found = self._setters.find(cname)
        if found == self._setters.end():
            raise TypeError(f"invalid field name {name.decode('utf-8')}")
        deref(found).second(self, value)

    cdef void _set_field_0(self, _fbthrift_value) except *:
        # for field terse_bool_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cFieldLevelTerseStruct](deref(self._struct_cpp_obj), 0)
            return
        if not isinstance(_fbthrift_value, bool):
            raise TypeError(f'terse_bool_field is not a { bool !r}.')
        deref(self._struct_cpp_obj).terse_bool_field_ref().assign(_fbthrift_value)

    cdef void _set_field_1(self, _fbthrift_value) except *:
        # for field terse_byte_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cFieldLevelTerseStruct](deref(self._struct_cpp_obj), 1)
            return
        if not isinstance(_fbthrift_value, int):
            raise TypeError(f'terse_byte_field is not a { int !r}.')
        _fbthrift_value = <cint8_t> _fbthrift_value
        deref(self._struct_cpp_obj).terse_byte_field_ref().assign(_fbthrift_value)

    cdef void _set_field_2(self, _fbthrift_value) except *:
        # for field terse_short_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cFieldLevelTerseStruct](deref(self._struct_cpp_obj), 2)
            return
        if not isinstance(_fbthrift_value, int):
            raise TypeError(f'terse_short_field is not a { int !r}.')
        _fbthrift_value = <cint16_t> _fbthrift_value
        deref(self._struct_cpp_obj).terse_short_field_ref().assign(_fbthrift_value)

    cdef void _set_field_3(self, _fbthrift_value) except *:
        # for field terse_int_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cFieldLevelTerseStruct](deref(self._struct_cpp_obj), 3)
            return
        if not isinstance(_fbthrift_value, int):
            raise TypeError(f'terse_int_field is not a { int !r}.')
        _fbthrift_value = <cint32_t> _fbthrift_value
        deref(self._struct_cpp_obj).terse_int_field_ref().assign(_fbthrift_value)

    cdef void _set_field_4(self, _fbthrift_value) except *:
        # for field terse_long_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cFieldLevelTerseStruct](deref(self._struct_cpp_obj), 4)
            return
        if not isinstance(_fbthrift_value, int):
            raise TypeError(f'terse_long_field is not a { int !r}.')
        _fbthrift_value = <cint64_t> _fbthrift_value
        deref(self._struct_cpp_obj).terse_long_field_ref().assign(_fbthrift_value)

    cdef void _set_field_5(self, _fbthrift_value) except *:
        # for field terse_float_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cFieldLevelTerseStruct](deref(self._struct_cpp_obj), 5)
            return
        if not isinstance(_fbthrift_value, (float, int)):
            raise TypeError(f'terse_float_field is not a { float !r}.')
        deref(self._struct_cpp_obj).terse_float_field_ref().assign(_fbthrift_value)

    cdef void _set_field_6(self, _fbthrift_value) except *:
        # for field terse_double_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cFieldLevelTerseStruct](deref(self._struct_cpp_obj), 6)
            return
        if not isinstance(_fbthrift_value, (float, int)):
            raise TypeError(f'terse_double_field is not a { float !r}.')
        deref(self._struct_cpp_obj).terse_double_field_ref().assign(_fbthrift_value)

    cdef void _set_field_7(self, _fbthrift_value) except *:
        # for field terse_string_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cFieldLevelTerseStruct](deref(self._struct_cpp_obj), 7)
            return
        if not isinstance(_fbthrift_value, str):
            raise TypeError(f'terse_string_field is not a { str !r}.')
        deref(self._struct_cpp_obj).terse_string_field_ref().assign(cmove(bytes_to_string(_fbthrift_value.encode('utf-8'))))

    cdef void _set_field_8(self, _fbthrift_value) except *:
        # for field terse_binary_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cFieldLevelTerseStruct](deref(self._struct_cpp_obj), 8)
            return
        if not isinstance(_fbthrift_value, bytes):
            raise TypeError(f'terse_binary_field is not a { bytes !r}.')
        deref(self._struct_cpp_obj).terse_binary_field_ref().assign(cmove(bytes_to_string(_fbthrift_value)))

    cdef void _set_field_9(self, _fbthrift_value) except *:
        # for field terse_enum_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cFieldLevelTerseStruct](deref(self._struct_cpp_obj), 9)
            return
        if not isinstance(_fbthrift_value, _terse_write_types.MyEnum):
            raise TypeError(f'field terse_enum_field value: {repr(_fbthrift_value)} is not of the enum type { _terse_write_types.MyEnum }.')
        deref(self._struct_cpp_obj).terse_enum_field_ref().assign(<_terse_write_types.cMyEnum><int>_fbthrift_value)

    cdef void _set_field_10(self, _fbthrift_value) except *:
        # for field terse_list_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cFieldLevelTerseStruct](deref(self._struct_cpp_obj), 10)
            return
        deref(self._struct_cpp_obj).terse_list_field_ref().assign(deref(_terse_write_types.List__i16(_fbthrift_value)._cpp_obj))

    cdef void _set_field_11(self, _fbthrift_value) except *:
        # for field terse_set_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cFieldLevelTerseStruct](deref(self._struct_cpp_obj), 11)
            return
        deref(self._struct_cpp_obj).terse_set_field_ref().assign(deref(_terse_write_types.Set__i16(_fbthrift_value)._cpp_obj))

    cdef void _set_field_12(self, _fbthrift_value) except *:
        # for field terse_map_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cFieldLevelTerseStruct](deref(self._struct_cpp_obj), 12)
            return
        deref(self._struct_cpp_obj).terse_map_field_ref().assign(deref(_terse_write_types.Map__i16_i16(_fbthrift_value)._cpp_obj))

    cdef void _set_field_13(self, _fbthrift_value) except *:
        # for field terse_struct_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cFieldLevelTerseStruct](deref(self._struct_cpp_obj), 13)
            return
        if not isinstance(_fbthrift_value, _terse_write_types.MyStruct):
            raise TypeError(f'terse_struct_field is not a { _terse_write_types.MyStruct !r}.')
        deref(self._struct_cpp_obj).terse_struct_field_ref().assign(deref((<_terse_write_types.MyStruct?> _fbthrift_value)._cpp_obj))

    cdef void _set_field_14(self, _fbthrift_value) except *:
        # for field bool_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cFieldLevelTerseStruct](deref(self._struct_cpp_obj), 14)
            return
        if not isinstance(_fbthrift_value, bool):
            raise TypeError(f'bool_field is not a { bool !r}.')
        deref(self._struct_cpp_obj).bool_field_ref().assign(_fbthrift_value)

    cdef void _set_field_15(self, _fbthrift_value) except *:
        # for field byte_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cFieldLevelTerseStruct](deref(self._struct_cpp_obj), 15)
            return
        if not isinstance(_fbthrift_value, int):
            raise TypeError(f'byte_field is not a { int !r}.')
        _fbthrift_value = <cint8_t> _fbthrift_value
        deref(self._struct_cpp_obj).byte_field_ref().assign(_fbthrift_value)

    cdef void _set_field_16(self, _fbthrift_value) except *:
        # for field short_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cFieldLevelTerseStruct](deref(self._struct_cpp_obj), 16)
            return
        if not isinstance(_fbthrift_value, int):
            raise TypeError(f'short_field is not a { int !r}.')
        _fbthrift_value = <cint16_t> _fbthrift_value
        deref(self._struct_cpp_obj).short_field_ref().assign(_fbthrift_value)

    cdef void _set_field_17(self, _fbthrift_value) except *:
        # for field int_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cFieldLevelTerseStruct](deref(self._struct_cpp_obj), 17)
            return
        if not isinstance(_fbthrift_value, int):
            raise TypeError(f'int_field is not a { int !r}.')
        _fbthrift_value = <cint32_t> _fbthrift_value
        deref(self._struct_cpp_obj).int_field_ref().assign(_fbthrift_value)

    cdef void _set_field_18(self, _fbthrift_value) except *:
        # for field long_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cFieldLevelTerseStruct](deref(self._struct_cpp_obj), 18)
            return
        if not isinstance(_fbthrift_value, int):
            raise TypeError(f'long_field is not a { int !r}.')
        _fbthrift_value = <cint64_t> _fbthrift_value
        deref(self._struct_cpp_obj).long_field_ref().assign(_fbthrift_value)

    cdef void _set_field_19(self, _fbthrift_value) except *:
        # for field float_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cFieldLevelTerseStruct](deref(self._struct_cpp_obj), 19)
            return
        if not isinstance(_fbthrift_value, (float, int)):
            raise TypeError(f'float_field is not a { float !r}.')
        deref(self._struct_cpp_obj).float_field_ref().assign(_fbthrift_value)

    cdef void _set_field_20(self, _fbthrift_value) except *:
        # for field double_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cFieldLevelTerseStruct](deref(self._struct_cpp_obj), 20)
            return
        if not isinstance(_fbthrift_value, (float, int)):
            raise TypeError(f'double_field is not a { float !r}.')
        deref(self._struct_cpp_obj).double_field_ref().assign(_fbthrift_value)

    cdef void _set_field_21(self, _fbthrift_value) except *:
        # for field string_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cFieldLevelTerseStruct](deref(self._struct_cpp_obj), 21)
            return
        if not isinstance(_fbthrift_value, str):
            raise TypeError(f'string_field is not a { str !r}.')
        deref(self._struct_cpp_obj).string_field_ref().assign(cmove(bytes_to_string(_fbthrift_value.encode('utf-8'))))

    cdef void _set_field_22(self, _fbthrift_value) except *:
        # for field binary_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cFieldLevelTerseStruct](deref(self._struct_cpp_obj), 22)
            return
        if not isinstance(_fbthrift_value, bytes):
            raise TypeError(f'binary_field is not a { bytes !r}.')
        deref(self._struct_cpp_obj).binary_field_ref().assign(cmove(bytes_to_string(_fbthrift_value)))

    cdef void _set_field_23(self, _fbthrift_value) except *:
        # for field enum_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cFieldLevelTerseStruct](deref(self._struct_cpp_obj), 23)
            return
        if not isinstance(_fbthrift_value, _terse_write_types.MyEnum):
            raise TypeError(f'field enum_field value: {repr(_fbthrift_value)} is not of the enum type { _terse_write_types.MyEnum }.')
        deref(self._struct_cpp_obj).enum_field_ref().assign(<_terse_write_types.cMyEnum><int>_fbthrift_value)

    cdef void _set_field_24(self, _fbthrift_value) except *:
        # for field list_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cFieldLevelTerseStruct](deref(self._struct_cpp_obj), 24)
            return
        deref(self._struct_cpp_obj).list_field_ref().assign(deref(_terse_write_types.List__i16(_fbthrift_value)._cpp_obj))

    cdef void _set_field_25(self, _fbthrift_value) except *:
        # for field set_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cFieldLevelTerseStruct](deref(self._struct_cpp_obj), 25)
            return
        deref(self._struct_cpp_obj).set_field_ref().assign(deref(_terse_write_types.Set__i16(_fbthrift_value)._cpp_obj))

    cdef void _set_field_26(self, _fbthrift_value) except *:
        # for field map_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cFieldLevelTerseStruct](deref(self._struct_cpp_obj), 26)
            return
        deref(self._struct_cpp_obj).map_field_ref().assign(deref(_terse_write_types.Map__i16_i16(_fbthrift_value)._cpp_obj))

    cdef void _set_field_27(self, _fbthrift_value) except *:
        # for field struct_field
        if _fbthrift_value is None:
            __reset_field[_terse_write_types.cFieldLevelTerseStruct](deref(self._struct_cpp_obj), 27)
            return
        if not isinstance(_fbthrift_value, _terse_write_types.MyStruct):
            raise TypeError(f'struct_field is not a { _terse_write_types.MyStruct !r}.')
        deref(self._struct_cpp_obj).struct_field_ref().assign(deref((<_terse_write_types.MyStruct?> _fbthrift_value)._cpp_obj))


#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#
cimport cython as __cython
from cpython.object cimport PyTypeObject, Py_LT, Py_LE, Py_EQ, Py_NE, Py_GT, Py_GE
from libcpp.memory cimport shared_ptr, make_shared, unique_ptr, make_unique
from libcpp.string cimport string
from libcpp cimport bool as cbool
from libcpp.iterator cimport inserter as cinserter
from cpython cimport bool as pbool
from cython.operator cimport dereference as deref, preincrement as inc, address as ptr_address
import thrift.py3.types
cimport thrift.py3.types
cimport thrift.py3.exceptions
from thrift.py3.std_libcpp cimport sv_to_str as __sv_to_str, string_view as __cstring_view
from thrift.py3.types cimport (
    cSetOp as __cSetOp,
    richcmp as __richcmp,
    set_op as __set_op,
    setcmp as __setcmp,
    list_index as __list_index,
    list_count as __list_count,
    list_slice as __list_slice,
    list_getitem as __list_getitem,
    set_iter as __set_iter,
    map_iter as __map_iter,
    map_contains as __map_contains,
    map_getitem as __map_getitem,
    reference_shared_ptr as __reference_shared_ptr,
    get_field_name_by_index as __get_field_name_by_index,
    reset_field as __reset_field,
    translate_cpp_enum_to_python,
    SetMetaClass as __SetMetaClass,
    const_pointer_cast,
    constant_shared_ptr,
    NOTSET as __NOTSET,
    EnumData as __EnumData,
    EnumFlagsData as __EnumFlagsData,
    UnionTypeEnumData as __UnionTypeEnumData,
    createEnumDataForUnionType as __createEnumDataForUnionType,
)
cimport thrift.py3.std_libcpp as std_libcpp
cimport thrift.py3.serializer as serializer
import folly.iobuf as _fbthrift_iobuf
from folly.optional cimport cOptional
from folly.memory cimport to_shared_ptr as __to_shared_ptr
from folly.range cimport Range as __cRange

import sys
from collections.abc import Sequence, Set, Mapping, Iterable
import weakref as __weakref
import builtins as _builtins
cimport facebook.thrift.annotation.thrift.types as _facebook_thrift_annotation_thrift_types
import facebook.thrift.annotation.thrift.types as _facebook_thrift_annotation_thrift_types

cimport terse_write.types_reflection as _types_reflection


cdef __EnumData __MyEnum_enum_data  = __EnumData._fbthrift_create(thrift.py3.types.createEnumData[cMyEnum](), MyEnum)


@__cython.internal
@__cython.auto_pickle(False)
cdef class __MyEnumMeta(thrift.py3.types.EnumMeta):
    def _fbthrift_get_by_value(cls, int value):
        return __MyEnum_enum_data.get_by_value(value)

    def _fbthrift_get_all_names(cls):
        return __MyEnum_enum_data.get_all_names()

    def __len__(cls):
        return __MyEnum_enum_data.size()

    def __getattribute__(cls, str name not None):
        if name.startswith("__") or name.startswith("_fbthrift_") or name == "mro":
            return super().__getattribute__(name)
        return __MyEnum_enum_data.get_by_name(name)


@__cython.final
@__cython.auto_pickle(False)
cdef class MyEnum(thrift.py3.types.CompiledEnum):
    cdef get_by_name(self, str name):
        return __MyEnum_enum_data.get_by_name(name)


    @staticmethod
    def __get_metadata__():
        cdef __fbthrift_cThriftMetadata meta
        EnumMetadata[cMyEnum].gen(meta)
        return __MetadataBox.box(cmove(meta))

    @staticmethod
    def __get_thrift_name__():
        return "terse_write.MyEnum"


__SetMetaClass(<PyTypeObject*> MyEnum, <PyTypeObject*> __MyEnumMeta)



@__cython.auto_pickle(False)
cdef class MyStruct(thrift.py3.types.Struct):
    def __init__(MyStruct self, **kwargs):
        self._cpp_obj = make_shared[cMyStruct]()
        self._fields_setter = _fbthrift_types_fields.__MyStruct_FieldsSetter._fbthrift_create(self._cpp_obj.get())
        super().__init__(**kwargs)

    def __call__(MyStruct self, **kwargs):
        return self

    cdef void _fbthrift_set_field(self, str name, object value) except *:
        self._fields_setter.set_field(name.encode("utf-8"), value)

    cdef object _fbthrift_isset(self):
        return thrift.py3.types._IsSet("MyStruct", {
        })

    @staticmethod
    cdef _fbthrift_create(shared_ptr[cMyStruct] cpp_obj):
        __fbthrift_inst = <MyStruct>MyStruct.__new__(MyStruct)
        __fbthrift_inst._cpp_obj = cmove(cpp_obj)
        return __fbthrift_inst


    def __hash__(MyStruct self):
        return super().__hash__()

    def __repr__(MyStruct self):
        return super().__repr__()

    def __str__(MyStruct self):
        return super().__str__()


    def __copy__(MyStruct self):
        cdef shared_ptr[cMyStruct] cpp_obj = make_shared[cMyStruct](
            deref(self._cpp_obj)
        )
        return MyStruct._fbthrift_create(cmove(cpp_obj))

    def __richcmp__(self, other, int op):
        r = self._fbthrift_cmp_sametype(other, op)
        return __richcmp[cMyStruct](
            self._cpp_obj,
            (<MyStruct>other)._cpp_obj,
            op,
        ) if r is None else r

    @staticmethod
    def __get_reflection__():
        return _types_reflection.get_reflection__MyStruct()

    @staticmethod
    def __get_metadata__():
        cdef __fbthrift_cThriftMetadata meta
        StructMetadata[cMyStruct].gen(meta)
        return __MetadataBox.box(cmove(meta))

    @staticmethod
    def __get_thrift_name__():
        return "terse_write.MyStruct"

    cdef __cstring_view _fbthrift_get_field_name_by_index(self, size_t idx):
        return __get_field_name_by_index[cMyStruct](idx)

    def __cinit__(self):
        self._fbthrift_struct_size = 0

    cdef _fbthrift_iobuf.IOBuf _fbthrift_serialize(MyStruct self, __Protocol proto):
        cdef unique_ptr[_fbthrift_iobuf.cIOBuf] data
        with nogil:
            data = cmove(serializer.cserialize[cMyStruct](self._cpp_obj.get(), proto))
        return _fbthrift_iobuf.from_unique_ptr(cmove(data))

    cdef cuint32_t _fbthrift_deserialize(MyStruct self, const _fbthrift_iobuf.cIOBuf* buf, __Protocol proto) except? 0:
        cdef cuint32_t needed
        self._cpp_obj = make_shared[cMyStruct]()
        with nogil:
            needed = serializer.cdeserialize[cMyStruct](buf, self._cpp_obj.get(), proto)
        return needed


@__cython.auto_pickle(False)
cdef class StructLevelTerseStruct(thrift.py3.types.Struct):
    def __init__(StructLevelTerseStruct self, **kwargs):
        self._cpp_obj = make_shared[cStructLevelTerseStruct]()
        self._fields_setter = _fbthrift_types_fields.__StructLevelTerseStruct_FieldsSetter._fbthrift_create(self._cpp_obj.get())
        super().__init__(**kwargs)

    def __call__(StructLevelTerseStruct self, **kwargs):
        if not kwargs:
            return self
        cdef StructLevelTerseStruct __fbthrift_inst = StructLevelTerseStruct.__new__(StructLevelTerseStruct)
        __fbthrift_inst._cpp_obj = make_shared[cStructLevelTerseStruct](deref(self._cpp_obj))
        __fbthrift_inst._fields_setter = _fbthrift_types_fields.__StructLevelTerseStruct_FieldsSetter._fbthrift_create(__fbthrift_inst._cpp_obj.get())
        for __fbthrift_name, _fbthrift_value in kwargs.items():
            __fbthrift_inst._fbthrift_set_field(__fbthrift_name, _fbthrift_value)
        return __fbthrift_inst

    cdef void _fbthrift_set_field(self, str name, object value) except *:
        self._fields_setter.set_field(name.encode("utf-8"), value)

    cdef object _fbthrift_isset(self):
        return thrift.py3.types._IsSet("StructLevelTerseStruct", {
          "bool_field": deref(self._cpp_obj).bool_field_ref().has_value(),
          "byte_field": deref(self._cpp_obj).byte_field_ref().has_value(),
          "short_field": deref(self._cpp_obj).short_field_ref().has_value(),
          "int_field": deref(self._cpp_obj).int_field_ref().has_value(),
          "long_field": deref(self._cpp_obj).long_field_ref().has_value(),
          "float_field": deref(self._cpp_obj).float_field_ref().has_value(),
          "double_field": deref(self._cpp_obj).double_field_ref().has_value(),
          "string_field": deref(self._cpp_obj).string_field_ref().has_value(),
          "binary_field": deref(self._cpp_obj).binary_field_ref().has_value(),
          "enum_field": deref(self._cpp_obj).enum_field_ref().has_value(),
          "list_field": deref(self._cpp_obj).list_field_ref().has_value(),
          "set_field": deref(self._cpp_obj).set_field_ref().has_value(),
          "map_field": deref(self._cpp_obj).map_field_ref().has_value(),
          "struct_field": deref(self._cpp_obj).struct_field_ref().has_value(),
        })

    @staticmethod
    cdef _fbthrift_create(shared_ptr[cStructLevelTerseStruct] cpp_obj):
        __fbthrift_inst = <StructLevelTerseStruct>StructLevelTerseStruct.__new__(StructLevelTerseStruct)
        __fbthrift_inst._cpp_obj = cmove(cpp_obj)
        return __fbthrift_inst

    cdef inline bool_field_impl(self):

        return <pbool> deref(self._cpp_obj).bool_field_ref().value()

    @property
    def bool_field(self):
        return self.bool_field_impl()

    cdef inline byte_field_impl(self):

        return deref(self._cpp_obj).byte_field_ref().value()

    @property
    def byte_field(self):
        return self.byte_field_impl()

    cdef inline short_field_impl(self):

        return deref(self._cpp_obj).short_field_ref().value()

    @property
    def short_field(self):
        return self.short_field_impl()

    cdef inline int_field_impl(self):

        return deref(self._cpp_obj).int_field_ref().value()

    @property
    def int_field(self):
        return self.int_field_impl()

    cdef inline long_field_impl(self):

        return deref(self._cpp_obj).long_field_ref().value()

    @property
    def long_field(self):
        return self.long_field_impl()

    cdef inline float_field_impl(self):

        return deref(self._cpp_obj).float_field_ref().value()

    @property
    def float_field(self):
        return self.float_field_impl()

    cdef inline double_field_impl(self):

        return deref(self._cpp_obj).double_field_ref().value()

    @property
    def double_field(self):
        return self.double_field_impl()

    cdef inline string_field_impl(self):

        return (<bytes>deref(self._cpp_obj).string_field_ref().value()).decode('UTF-8')

    @property
    def string_field(self):
        return self.string_field_impl()

    cdef inline binary_field_impl(self):

        return deref(self._cpp_obj).binary_field_ref().value()

    @property
    def binary_field(self):
        return self.binary_field_impl()

    cdef inline enum_field_impl(self):

        if self.__fbthrift_cached_enum_field is None:
            self.__fbthrift_cached_enum_field = translate_cpp_enum_to_python(MyEnum, <int>(deref(self._cpp_obj).enum_field_ref().value()))
        return self.__fbthrift_cached_enum_field

    @property
    def enum_field(self):
        return self.enum_field_impl()

    cdef inline list_field_impl(self):

        if self.__fbthrift_cached_list_field is None:
            self.__fbthrift_cached_list_field = List__i16._fbthrift_create(__reference_shared_ptr(deref(self._cpp_obj).list_field_ref().ref(), self._cpp_obj))
        return self.__fbthrift_cached_list_field

    @property
    def list_field(self):
        return self.list_field_impl()

    cdef inline set_field_impl(self):

        if self.__fbthrift_cached_set_field is None:
            self.__fbthrift_cached_set_field = Set__i16._fbthrift_create(__reference_shared_ptr(deref(self._cpp_obj).set_field_ref().ref(), self._cpp_obj))
        return self.__fbthrift_cached_set_field

    @property
    def set_field(self):
        return self.set_field_impl()

    cdef inline map_field_impl(self):

        if self.__fbthrift_cached_map_field is None:
            self.__fbthrift_cached_map_field = Map__i16_i16._fbthrift_create(__reference_shared_ptr(deref(self._cpp_obj).map_field_ref().ref(), self._cpp_obj))
        return self.__fbthrift_cached_map_field

    @property
    def map_field(self):
        return self.map_field_impl()

    cdef inline struct_field_impl(self):

        if self.__fbthrift_cached_struct_field is None:
            self.__fbthrift_cached_struct_field = MyStruct._fbthrift_create(__reference_shared_ptr(deref(self._cpp_obj).struct_field_ref().ref(), self._cpp_obj))
        return self.__fbthrift_cached_struct_field

    @property
    def struct_field(self):
        return self.struct_field_impl()


    def __hash__(StructLevelTerseStruct self):
        return super().__hash__()

    def __repr__(StructLevelTerseStruct self):
        return super().__repr__()

    def __str__(StructLevelTerseStruct self):
        return super().__str__()


    def __copy__(StructLevelTerseStruct self):
        cdef shared_ptr[cStructLevelTerseStruct] cpp_obj = make_shared[cStructLevelTerseStruct](
            deref(self._cpp_obj)
        )
        return StructLevelTerseStruct._fbthrift_create(cmove(cpp_obj))

    def __richcmp__(self, other, int op):
        r = self._fbthrift_cmp_sametype(other, op)
        return __richcmp[cStructLevelTerseStruct](
            self._cpp_obj,
            (<StructLevelTerseStruct>other)._cpp_obj,
            op,
        ) if r is None else r

    @staticmethod
    def __get_reflection__():
        return _types_reflection.get_reflection__StructLevelTerseStruct()

    @staticmethod
    def __get_metadata__():
        cdef __fbthrift_cThriftMetadata meta
        StructMetadata[cStructLevelTerseStruct].gen(meta)
        return __MetadataBox.box(cmove(meta))

    @staticmethod
    def __get_thrift_name__():
        return "terse_write.StructLevelTerseStruct"

    cdef __cstring_view _fbthrift_get_field_name_by_index(self, size_t idx):
        return __get_field_name_by_index[cStructLevelTerseStruct](idx)

    def __cinit__(self):
        self._fbthrift_struct_size = 14

    cdef _fbthrift_iobuf.IOBuf _fbthrift_serialize(StructLevelTerseStruct self, __Protocol proto):
        cdef unique_ptr[_fbthrift_iobuf.cIOBuf] data
        with nogil:
            data = cmove(serializer.cserialize[cStructLevelTerseStruct](self._cpp_obj.get(), proto))
        return _fbthrift_iobuf.from_unique_ptr(cmove(data))

    cdef cuint32_t _fbthrift_deserialize(StructLevelTerseStruct self, const _fbthrift_iobuf.cIOBuf* buf, __Protocol proto) except? 0:
        cdef cuint32_t needed
        self._cpp_obj = make_shared[cStructLevelTerseStruct]()
        with nogil:
            needed = serializer.cdeserialize[cStructLevelTerseStruct](buf, self._cpp_obj.get(), proto)
        return needed


@__cython.auto_pickle(False)
cdef class FieldLevelTerseStruct(thrift.py3.types.Struct):
    def __init__(FieldLevelTerseStruct self, **kwargs):
        self._cpp_obj = make_shared[cFieldLevelTerseStruct]()
        self._fields_setter = _fbthrift_types_fields.__FieldLevelTerseStruct_FieldsSetter._fbthrift_create(self._cpp_obj.get())
        super().__init__(**kwargs)

    def __call__(FieldLevelTerseStruct self, **kwargs):
        if not kwargs:
            return self
        cdef FieldLevelTerseStruct __fbthrift_inst = FieldLevelTerseStruct.__new__(FieldLevelTerseStruct)
        __fbthrift_inst._cpp_obj = make_shared[cFieldLevelTerseStruct](deref(self._cpp_obj))
        __fbthrift_inst._fields_setter = _fbthrift_types_fields.__FieldLevelTerseStruct_FieldsSetter._fbthrift_create(__fbthrift_inst._cpp_obj.get())
        for __fbthrift_name, _fbthrift_value in kwargs.items():
            __fbthrift_inst._fbthrift_set_field(__fbthrift_name, _fbthrift_value)
        return __fbthrift_inst

    cdef void _fbthrift_set_field(self, str name, object value) except *:
        self._fields_setter.set_field(name.encode("utf-8"), value)

    cdef object _fbthrift_isset(self):
        return thrift.py3.types._IsSet("FieldLevelTerseStruct", {
          "terse_bool_field": deref(self._cpp_obj).terse_bool_field_ref().has_value(),
          "terse_byte_field": deref(self._cpp_obj).terse_byte_field_ref().has_value(),
          "terse_short_field": deref(self._cpp_obj).terse_short_field_ref().has_value(),
          "terse_int_field": deref(self._cpp_obj).terse_int_field_ref().has_value(),
          "terse_long_field": deref(self._cpp_obj).terse_long_field_ref().has_value(),
          "terse_float_field": deref(self._cpp_obj).terse_float_field_ref().has_value(),
          "terse_double_field": deref(self._cpp_obj).terse_double_field_ref().has_value(),
          "terse_string_field": deref(self._cpp_obj).terse_string_field_ref().has_value(),
          "terse_binary_field": deref(self._cpp_obj).terse_binary_field_ref().has_value(),
          "terse_enum_field": deref(self._cpp_obj).terse_enum_field_ref().has_value(),
          "terse_list_field": deref(self._cpp_obj).terse_list_field_ref().has_value(),
          "terse_set_field": deref(self._cpp_obj).terse_set_field_ref().has_value(),
          "terse_map_field": deref(self._cpp_obj).terse_map_field_ref().has_value(),
          "terse_struct_field": deref(self._cpp_obj).terse_struct_field_ref().has_value(),
          "bool_field": deref(self._cpp_obj).bool_field_ref().has_value(),
          "byte_field": deref(self._cpp_obj).byte_field_ref().has_value(),
          "short_field": deref(self._cpp_obj).short_field_ref().has_value(),
          "int_field": deref(self._cpp_obj).int_field_ref().has_value(),
          "long_field": deref(self._cpp_obj).long_field_ref().has_value(),
          "float_field": deref(self._cpp_obj).float_field_ref().has_value(),
          "double_field": deref(self._cpp_obj).double_field_ref().has_value(),
          "string_field": deref(self._cpp_obj).string_field_ref().has_value(),
          "binary_field": deref(self._cpp_obj).binary_field_ref().has_value(),
          "enum_field": deref(self._cpp_obj).enum_field_ref().has_value(),
          "list_field": deref(self._cpp_obj).list_field_ref().has_value(),
          "set_field": deref(self._cpp_obj).set_field_ref().has_value(),
          "map_field": deref(self._cpp_obj).map_field_ref().has_value(),
          "struct_field": deref(self._cpp_obj).struct_field_ref().has_value(),
        })

    @staticmethod
    cdef _fbthrift_create(shared_ptr[cFieldLevelTerseStruct] cpp_obj):
        __fbthrift_inst = <FieldLevelTerseStruct>FieldLevelTerseStruct.__new__(FieldLevelTerseStruct)
        __fbthrift_inst._cpp_obj = cmove(cpp_obj)
        return __fbthrift_inst

    cdef inline terse_bool_field_impl(self):

        return <pbool> deref(self._cpp_obj).terse_bool_field_ref().value()

    @property
    def terse_bool_field(self):
        return self.terse_bool_field_impl()

    cdef inline terse_byte_field_impl(self):

        return deref(self._cpp_obj).terse_byte_field_ref().value()

    @property
    def terse_byte_field(self):
        return self.terse_byte_field_impl()

    cdef inline terse_short_field_impl(self):

        return deref(self._cpp_obj).terse_short_field_ref().value()

    @property
    def terse_short_field(self):
        return self.terse_short_field_impl()

    cdef inline terse_int_field_impl(self):

        return deref(self._cpp_obj).terse_int_field_ref().value()

    @property
    def terse_int_field(self):
        return self.terse_int_field_impl()

    cdef inline terse_long_field_impl(self):

        return deref(self._cpp_obj).terse_long_field_ref().value()

    @property
    def terse_long_field(self):
        return self.terse_long_field_impl()

    cdef inline terse_float_field_impl(self):

        return deref(self._cpp_obj).terse_float_field_ref().value()

    @property
    def terse_float_field(self):
        return self.terse_float_field_impl()

    cdef inline terse_double_field_impl(self):

        return deref(self._cpp_obj).terse_double_field_ref().value()

    @property
    def terse_double_field(self):
        return self.terse_double_field_impl()

    cdef inline terse_string_field_impl(self):

        return (<bytes>deref(self._cpp_obj).terse_string_field_ref().value()).decode('UTF-8')

    @property
    def terse_string_field(self):
        return self.terse_string_field_impl()

    cdef inline terse_binary_field_impl(self):

        return deref(self._cpp_obj).terse_binary_field_ref().value()

    @property
    def terse_binary_field(self):
        return self.terse_binary_field_impl()

    cdef inline terse_enum_field_impl(self):

        if self.__fbthrift_cached_terse_enum_field is None:
            self.__fbthrift_cached_terse_enum_field = translate_cpp_enum_to_python(MyEnum, <int>(deref(self._cpp_obj).terse_enum_field_ref().value()))
        return self.__fbthrift_cached_terse_enum_field

    @property
    def terse_enum_field(self):
        return self.terse_enum_field_impl()

    cdef inline terse_list_field_impl(self):

        if self.__fbthrift_cached_terse_list_field is None:
            self.__fbthrift_cached_terse_list_field = List__i16._fbthrift_create(__reference_shared_ptr(deref(self._cpp_obj).terse_list_field_ref().ref(), self._cpp_obj))
        return self.__fbthrift_cached_terse_list_field

    @property
    def terse_list_field(self):
        return self.terse_list_field_impl()

    cdef inline terse_set_field_impl(self):

        if self.__fbthrift_cached_terse_set_field is None:
            self.__fbthrift_cached_terse_set_field = Set__i16._fbthrift_create(__reference_shared_ptr(deref(self._cpp_obj).terse_set_field_ref().ref(), self._cpp_obj))
        return self.__fbthrift_cached_terse_set_field

    @property
    def terse_set_field(self):
        return self.terse_set_field_impl()

    cdef inline terse_map_field_impl(self):

        if self.__fbthrift_cached_terse_map_field is None:
            self.__fbthrift_cached_terse_map_field = Map__i16_i16._fbthrift_create(__reference_shared_ptr(deref(self._cpp_obj).terse_map_field_ref().ref(), self._cpp_obj))
        return self.__fbthrift_cached_terse_map_field

    @property
    def terse_map_field(self):
        return self.terse_map_field_impl()

    cdef inline terse_struct_field_impl(self):

        if self.__fbthrift_cached_terse_struct_field is None:
            self.__fbthrift_cached_terse_struct_field = MyStruct._fbthrift_create(__reference_shared_ptr(deref(self._cpp_obj).terse_struct_field_ref().ref(), self._cpp_obj))
        return self.__fbthrift_cached_terse_struct_field

    @property
    def terse_struct_field(self):
        return self.terse_struct_field_impl()

    cdef inline bool_field_impl(self):

        return <pbool> deref(self._cpp_obj).bool_field_ref().value()

    @property
    def bool_field(self):
        return self.bool_field_impl()

    cdef inline byte_field_impl(self):

        return deref(self._cpp_obj).byte_field_ref().value()

    @property
    def byte_field(self):
        return self.byte_field_impl()

    cdef inline short_field_impl(self):

        return deref(self._cpp_obj).short_field_ref().value()

    @property
    def short_field(self):
        return self.short_field_impl()

    cdef inline int_field_impl(self):

        return deref(self._cpp_obj).int_field_ref().value()

    @property
    def int_field(self):
        return self.int_field_impl()

    cdef inline long_field_impl(self):

        return deref(self._cpp_obj).long_field_ref().value()

    @property
    def long_field(self):
        return self.long_field_impl()

    cdef inline float_field_impl(self):

        return deref(self._cpp_obj).float_field_ref().value()

    @property
    def float_field(self):
        return self.float_field_impl()

    cdef inline double_field_impl(self):

        return deref(self._cpp_obj).double_field_ref().value()

    @property
    def double_field(self):
        return self.double_field_impl()

    cdef inline string_field_impl(self):

        return (<bytes>deref(self._cpp_obj).string_field_ref().value()).decode('UTF-8')

    @property
    def string_field(self):
        return self.string_field_impl()

    cdef inline binary_field_impl(self):

        return deref(self._cpp_obj).binary_field_ref().value()

    @property
    def binary_field(self):
        return self.binary_field_impl()

    cdef inline enum_field_impl(self):

        if self.__fbthrift_cached_enum_field is None:
            self.__fbthrift_cached_enum_field = translate_cpp_enum_to_python(MyEnum, <int>(deref(self._cpp_obj).enum_field_ref().value()))
        return self.__fbthrift_cached_enum_field

    @property
    def enum_field(self):
        return self.enum_field_impl()

    cdef inline list_field_impl(self):

        if self.__fbthrift_cached_list_field is None:
            self.__fbthrift_cached_list_field = List__i16._fbthrift_create(__reference_shared_ptr(deref(self._cpp_obj).list_field_ref().ref(), self._cpp_obj))
        return self.__fbthrift_cached_list_field

    @property
    def list_field(self):
        return self.list_field_impl()

    cdef inline set_field_impl(self):

        if self.__fbthrift_cached_set_field is None:
            self.__fbthrift_cached_set_field = Set__i16._fbthrift_create(__reference_shared_ptr(deref(self._cpp_obj).set_field_ref().ref(), self._cpp_obj))
        return self.__fbthrift_cached_set_field

    @property
    def set_field(self):
        return self.set_field_impl()

    cdef inline map_field_impl(self):

        if self.__fbthrift_cached_map_field is None:
            self.__fbthrift_cached_map_field = Map__i16_i16._fbthrift_create(__reference_shared_ptr(deref(self._cpp_obj).map_field_ref().ref(), self._cpp_obj))
        return self.__fbthrift_cached_map_field

    @property
    def map_field(self):
        return self.map_field_impl()

    cdef inline struct_field_impl(self):

        if self.__fbthrift_cached_struct_field is None:
            self.__fbthrift_cached_struct_field = MyStruct._fbthrift_create(__reference_shared_ptr(deref(self._cpp_obj).struct_field_ref().ref(), self._cpp_obj))
        return self.__fbthrift_cached_struct_field

    @property
    def struct_field(self):
        return self.struct_field_impl()


    def __hash__(FieldLevelTerseStruct self):
        return super().__hash__()

    def __repr__(FieldLevelTerseStruct self):
        return super().__repr__()

    def __str__(FieldLevelTerseStruct self):
        return super().__str__()


    def __copy__(FieldLevelTerseStruct self):
        cdef shared_ptr[cFieldLevelTerseStruct] cpp_obj = make_shared[cFieldLevelTerseStruct](
            deref(self._cpp_obj)
        )
        return FieldLevelTerseStruct._fbthrift_create(cmove(cpp_obj))

    def __richcmp__(self, other, int op):
        r = self._fbthrift_cmp_sametype(other, op)
        return __richcmp[cFieldLevelTerseStruct](
            self._cpp_obj,
            (<FieldLevelTerseStruct>other)._cpp_obj,
            op,
        ) if r is None else r

    @staticmethod
    def __get_reflection__():
        return _types_reflection.get_reflection__FieldLevelTerseStruct()

    @staticmethod
    def __get_metadata__():
        cdef __fbthrift_cThriftMetadata meta
        StructMetadata[cFieldLevelTerseStruct].gen(meta)
        return __MetadataBox.box(cmove(meta))

    @staticmethod
    def __get_thrift_name__():
        return "terse_write.FieldLevelTerseStruct"

    cdef __cstring_view _fbthrift_get_field_name_by_index(self, size_t idx):
        return __get_field_name_by_index[cFieldLevelTerseStruct](idx)

    def __cinit__(self):
        self._fbthrift_struct_size = 28

    cdef _fbthrift_iobuf.IOBuf _fbthrift_serialize(FieldLevelTerseStruct self, __Protocol proto):
        cdef unique_ptr[_fbthrift_iobuf.cIOBuf] data
        with nogil:
            data = cmove(serializer.cserialize[cFieldLevelTerseStruct](self._cpp_obj.get(), proto))
        return _fbthrift_iobuf.from_unique_ptr(cmove(data))

    cdef cuint32_t _fbthrift_deserialize(FieldLevelTerseStruct self, const _fbthrift_iobuf.cIOBuf* buf, __Protocol proto) except? 0:
        cdef cuint32_t needed
        self._cpp_obj = make_shared[cFieldLevelTerseStruct]()
        with nogil:
            needed = serializer.cdeserialize[cFieldLevelTerseStruct](buf, self._cpp_obj.get(), proto)
        return needed


@__cython.auto_pickle(False)
cdef class List__i16(thrift.py3.types.List):
    def __init__(self, items=None):
        if isinstance(items, List__i16):
            self._cpp_obj = (<List__i16> items)._cpp_obj
        else:
            self._cpp_obj = List__i16._make_instance(items)

    @staticmethod
    cdef _fbthrift_create(shared_ptr[vector[cint16_t]] c_items):
        __fbthrift_inst = <List__i16>List__i16.__new__(List__i16)
        __fbthrift_inst._cpp_obj = cmove(c_items)
        return __fbthrift_inst

    def __copy__(List__i16 self):
        cdef shared_ptr[vector[cint16_t]] cpp_obj = make_shared[vector[cint16_t]](
            deref(self._cpp_obj)
        )
        return List__i16._fbthrift_create(cmove(cpp_obj))

    def __len__(self):
        return deref(self._cpp_obj).size()

    @staticmethod
    cdef shared_ptr[vector[cint16_t]] _make_instance(object items) except *:
        cdef shared_ptr[vector[cint16_t]] c_inst = make_shared[vector[cint16_t]]()
        if items is not None:
            for item in items:
                if not isinstance(item, int):
                    raise TypeError(f"{item!r} is not of type int")
                item = <cint16_t> item
                deref(c_inst).push_back(item)
        return c_inst

    cdef _get_slice(self, slice index_obj):
        cdef int start, stop, step
        start, stop, step = index_obj.indices(deref(self._cpp_obj).size())
        return List__i16._fbthrift_create(
            __list_slice[vector[cint16_t]](self._cpp_obj, start, stop, step)
        )

    cdef _get_single_item(self, size_t index):
        cdef cint16_t citem = 0
        __list_getitem(self._cpp_obj, index, citem)
        return citem

    cdef _check_item_type(self, item):
        if not self or item is None:
            return
        if isinstance(item, int):
            return item

    def index(self, item, start=0, stop=None):
        err = ValueError(f'{item} is not in list')
        item = self._check_item_type(item)
        if item is None:
            raise err
        cdef (int, int, int) indices = slice(start, stop).indices(deref(self._cpp_obj).size())
        cdef cint16_t citem = item
        cdef std_libcpp.optional[size_t] found = __list_index[vector[cint16_t]](self._cpp_obj, indices[0], indices[1], citem)
        if not found.has_value():
            raise err
        return found.value()

    def count(self, item):
        item = self._check_item_type(item)
        if item is None:
            return 0
        cdef cint16_t citem = item
        return __list_count[vector[cint16_t]](self._cpp_obj, citem)

    @staticmethod
    def __get_reflection__():
        return _types_reflection.get_reflection__List__i16()


Sequence.register(List__i16)

@__cython.auto_pickle(False)
cdef class Set__i16(thrift.py3.types.Set):
    def __init__(self, items=None):
        if isinstance(items, Set__i16):
            self._cpp_obj = (<Set__i16> items)._cpp_obj
        else:
            self._cpp_obj = Set__i16._make_instance(items)

    @staticmethod
    cdef _fbthrift_create(shared_ptr[cset[cint16_t]] c_items):
        __fbthrift_inst = <Set__i16>Set__i16.__new__(Set__i16)
        __fbthrift_inst._cpp_obj = cmove(c_items)
        return __fbthrift_inst

    def __copy__(Set__i16 self):
        cdef shared_ptr[cset[cint16_t]] cpp_obj = make_shared[cset[cint16_t]](
            deref(self._cpp_obj)
        )
        return Set__i16._fbthrift_create(cmove(cpp_obj))

    def __len__(self):
        return deref(self._cpp_obj).size()

    @staticmethod
    cdef shared_ptr[cset[cint16_t]] _make_instance(object items) except *:
        cdef shared_ptr[cset[cint16_t]] c_inst = make_shared[cset[cint16_t]]()
        if items is not None:
            for item in items:
                if not isinstance(item, int):
                    raise TypeError(f"{item!r} is not of type int")
                item = <cint16_t> item
                deref(c_inst).insert(item)
        return c_inst

    def __contains__(self, item):
        if not self or item is None:
            return False
        if not isinstance(item, int):
            return False
        return pbool(deref(self._cpp_obj).count(item))


    def __iter__(self):
        if not self:
            return
        cdef __set_iter[cset[cint16_t]] itr = __set_iter[cset[cint16_t]](self._cpp_obj)
        cdef cint16_t citem = 0
        for i in range(deref(self._cpp_obj).size()):
            itr.genNext(self._cpp_obj, citem)
            yield citem

    def __hash__(self):
        return super().__hash__()

    def __richcmp__(self, other, int op):
        if isinstance(other, Set__i16):
            # C level comparisons
            return __setcmp(
                self._cpp_obj,
                (<Set__i16> other)._cpp_obj,
                op,
            )
        return self._fbthrift_py_richcmp(other, op)

    cdef _fbthrift_do_set_op(self, other, __cSetOp op):
        if not isinstance(other, Set__i16):
            other = Set__i16(other)
        cdef shared_ptr[cset[cint16_t]] result
        return Set__i16._fbthrift_create(__set_op[cset[cint16_t]](
            self._cpp_obj,
            (<Set__i16>other)._cpp_obj,
            op,
        ))

    @staticmethod
    def __get_reflection__():
        return _types_reflection.get_reflection__Set__i16()


Set.register(Set__i16)

@__cython.auto_pickle(False)
cdef class Map__i16_i16(thrift.py3.types.Map):
    def __init__(self, items=None):
        if isinstance(items, Map__i16_i16):
            self._cpp_obj = (<Map__i16_i16> items)._cpp_obj
        else:
            self._cpp_obj = Map__i16_i16._make_instance(items)

    @staticmethod
    cdef _fbthrift_create(shared_ptr[cmap[cint16_t,cint16_t]] c_items):
        __fbthrift_inst = <Map__i16_i16>Map__i16_i16.__new__(Map__i16_i16)
        __fbthrift_inst._cpp_obj = cmove(c_items)
        return __fbthrift_inst

    def __copy__(Map__i16_i16 self):
        cdef shared_ptr[cmap[cint16_t,cint16_t]] cpp_obj = make_shared[cmap[cint16_t,cint16_t]](
            deref(self._cpp_obj)
        )
        return Map__i16_i16._fbthrift_create(cmove(cpp_obj))

    def __len__(self):
        return deref(self._cpp_obj).size()

    @staticmethod
    cdef shared_ptr[cmap[cint16_t,cint16_t]] _make_instance(object items) except *:
        cdef shared_ptr[cmap[cint16_t,cint16_t]] c_inst = make_shared[cmap[cint16_t,cint16_t]]()
        if items is not None:
            for key, item in items.items():
                if not isinstance(key, int):
                    raise TypeError(f"{key!r} is not of type int")
                key = <cint16_t> key
                if not isinstance(item, int):
                    raise TypeError(f"{item!r} is not of type int")
                item = <cint16_t> item

                deref(c_inst)[key] = item
        return c_inst

    cdef _check_key_type(self, key):
        if not self or key is None:
            return
        if isinstance(key, int):
            return key

    def __getitem__(self, key):
        err = KeyError(f'{key}')
        key = self._check_key_type(key)
        if key is None:
            raise err
        cdef cint16_t ckey = key
        if not __map_contains(self._cpp_obj, ckey):
            raise err
        cdef cint16_t citem = 0
        __map_getitem(self._cpp_obj, ckey, citem)
        return citem

    def __iter__(self):
        if not self:
            return
        cdef __map_iter[cmap[cint16_t,cint16_t]] itr = __map_iter[cmap[cint16_t,cint16_t]](self._cpp_obj)
        cdef cint16_t citem = 0
        for i in range(deref(self._cpp_obj).size()):
            itr.genNextKey(self._cpp_obj, citem)
            yield citem

    def __contains__(self, key):
        key = self._check_key_type(key)
        if key is None:
            return False
        cdef cint16_t ckey = key
        return __map_contains(self._cpp_obj, ckey)

    def values(self):
        if not self:
            return
        cdef __map_iter[cmap[cint16_t,cint16_t]] itr = __map_iter[cmap[cint16_t,cint16_t]](self._cpp_obj)
        cdef cint16_t citem = 0
        for i in range(deref(self._cpp_obj).size()):
            itr.genNextValue(self._cpp_obj, citem)
            yield citem

    def items(self):
        if not self:
            return
        cdef __map_iter[cmap[cint16_t,cint16_t]] itr = __map_iter[cmap[cint16_t,cint16_t]](self._cpp_obj)
        cdef cint16_t ckey = 0
        cdef cint16_t citem = 0
        for i in range(deref(self._cpp_obj).size()):
            itr.genNextItem(self._cpp_obj, ckey, citem)
            yield (ckey, citem)

    @staticmethod
    def __get_reflection__():
        return _types_reflection.get_reflection__Map__i16_i16()

Mapping.register(Map__i16_i16)


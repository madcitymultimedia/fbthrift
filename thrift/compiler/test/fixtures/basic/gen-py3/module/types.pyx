#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#
cimport cython as __cython
from cpython.bytes cimport PyBytes_AsStringAndSize
from cpython.object cimport PyTypeObject, Py_LT, Py_LE, Py_EQ, Py_NE, Py_GT, Py_GE
from libcpp.memory cimport shared_ptr, make_shared, unique_ptr, make_unique
from libcpp.string cimport string
from libcpp cimport bool as cbool
from libcpp.iterator cimport inserter as cinserter
from libcpp.utility cimport move as cmove
from cpython cimport bool as pbool
from cython.operator cimport dereference as deref, preincrement as inc, address as ptr_address
import thrift.py3.types
cimport thrift.py3.types
cimport thrift.py3.exceptions
from thrift.py3.types cimport (
    translate_cpp_enum_to_python,
    SetMetaClass as __SetMetaClass,
    constant_shared_ptr,
    default_inst,
    NOTSET as __NOTSET,
    EnumData as __EnumData,
    EnumFlagsData as __EnumFlagsData,
    UnionTypeEnumData as __UnionTypeEnumData,
    createEnumDataForUnionType as __createEnumDataForUnionType,
)
cimport thrift.py3.std_libcpp as std_libcpp
cimport thrift.py3.serializer as serializer
import folly.iobuf as __iobuf
from folly.optional cimport cOptional

import sys
from collections.abc import Sequence, Set, Mapping, Iterable
import weakref as __weakref
import builtins as _builtins

cimport module.types_reflection as _types_reflection


cdef __EnumData __MyEnum_enum_data  = __EnumData.create(thrift.py3.types.createEnumData[cMyEnum](), MyEnum)


@__cython.internal
@__cython.auto_pickle(False)
cdef class __MyEnumMeta(thrift.py3.types.EnumMeta):

    def __get_by_name(cls, str name):
        return __MyEnum_enum_data.get_by_name(name)

    def __get_by_value(cls, int value):
        return __MyEnum_enum_data.get_by_value(value)

    def __get_all_names(cls):
        return __MyEnum_enum_data.get_all_names()

    def __len__(cls):
        return __MyEnum_enum_data.size()


@__cython.final
@__cython.auto_pickle(False)
cdef class MyEnum(thrift.py3.types.CompiledEnum):
    cdef get_by_name(self, str name):
        return __MyEnum_enum_data.get_by_name(name)



__SetMetaClass(<PyTypeObject*> MyEnum, <PyTypeObject*> __MyEnumMeta)



cdef __UnionTypeEnumData __MyUnion_union_type_enum_data  = __UnionTypeEnumData.create(
    __createEnumDataForUnionType[cMyUnion](),
    __MyUnionType,
)


@__cython.internal
@__cython.auto_pickle(False)
cdef class __MyUnion_Union_TypeMeta(thrift.py3.types.EnumMeta):

    def __get_by_name(cls, str name):
        return __MyUnion_union_type_enum_data.get_by_name(name)

    def __get_by_value(cls, int value):
        return __MyUnion_union_type_enum_data.get_by_value(value)

    def __get_all_names(cls):
        return __MyUnion_union_type_enum_data.get_all_names()

    def __len__(cls):
        return __MyUnion_union_type_enum_data.size()


@__cython.final
@__cython.auto_pickle(False)
cdef class __MyUnionType(thrift.py3.types.CompiledEnum):
    cdef get_by_name(self, str name):
        return __MyUnion_union_type_enum_data.get_by_name(name)


__SetMetaClass(<PyTypeObject*> __MyUnionType, <PyTypeObject*> __MyUnion_Union_TypeMeta)


@__cython.auto_pickle(False)
cdef class MyStruct(thrift.py3.types.Struct):

    def __init__(
        MyStruct self, *,
        MyIntField=None,
        str MyStringField=None,
        MyDataItem MyDataField=None,
        MyEnum myEnum=None
    ):
        if MyIntField is not None:
            if not isinstance(MyIntField, int):
                raise TypeError(f'MyIntField is not a { int !r}.')
            MyIntField = <cint64_t> MyIntField

        self._cpp_obj = __fbthrift_move(MyStruct._make_instance(
          NULL,
          NULL,
          MyIntField,
          MyStringField,
          MyDataField,
          myEnum,
        ))

    def __call__(
        MyStruct self,
        MyIntField=__NOTSET,
        MyStringField=__NOTSET,
        MyDataField=__NOTSET,
        myEnum=__NOTSET
    ):
        ___NOTSET = __NOTSET  # Cheaper for larger structs
        cdef bint[4] __isNOTSET  # so make_instance is typed

        __fbthrift_changed = False
        if MyIntField is ___NOTSET:
            __isNOTSET[0] = True
            MyIntField = None
        else:
            __isNOTSET[0] = False
            __fbthrift_changed = True

        if MyStringField is ___NOTSET:
            __isNOTSET[1] = True
            MyStringField = None
        else:
            __isNOTSET[1] = False
            __fbthrift_changed = True

        if MyDataField is ___NOTSET:
            __isNOTSET[2] = True
            MyDataField = None
        else:
            __isNOTSET[2] = False
            __fbthrift_changed = True

        if myEnum is ___NOTSET:
            __isNOTSET[3] = True
            myEnum = None
        else:
            __isNOTSET[3] = False
            __fbthrift_changed = True


        if not __fbthrift_changed:
            return self

        if MyIntField is not None:
            if not isinstance(MyIntField, int):
                raise TypeError(f'MyIntField is not a { int !r}.')
            MyIntField = <cint64_t> MyIntField

        if MyStringField is not None:
            if not isinstance(MyStringField, str):
                raise TypeError(f'MyStringField is not a { str !r}.')

        if MyDataField is not None:
            if not isinstance(MyDataField, MyDataItem):
                raise TypeError(f'MyDataField is not a { MyDataItem !r}.')

        if myEnum is not None:
            if not isinstance(myEnum, MyEnum):
                raise TypeError(f'field myEnum value: { myEnum !r} is not of the enum type { MyEnum }.')

        __fbthrift_inst = <MyStruct>MyStruct.__new__(MyStruct)
        __fbthrift_inst._cpp_obj = __fbthrift_move(MyStruct._make_instance(
          self._cpp_obj.get(),
          __isNOTSET,
          MyIntField,
          MyStringField,
          MyDataField,
          myEnum,
        ))
        return __fbthrift_inst

    @staticmethod
    cdef unique_ptr[cMyStruct] _make_instance(
        cMyStruct* base_instance,
        bint* __isNOTSET,
        object MyIntField ,
        str MyStringField ,
        MyDataItem MyDataField ,
        MyEnum myEnum 
    ) except *:
        cdef unique_ptr[cMyStruct] c_inst
        if base_instance:
            c_inst = make_unique[cMyStruct](deref(base_instance))
        else:
            c_inst = make_unique[cMyStruct]()

        if base_instance:
            # Convert None's to default value. (or unset)
            if not __isNOTSET[0] and MyIntField is None:
                deref(c_inst).MyIntField_ref().assign(default_inst[cMyStruct]().MyIntField_ref().value())
                deref(c_inst).__isset.MyIntField = False
                pass

            if not __isNOTSET[1] and MyStringField is None:
                deref(c_inst).MyStringField_ref().assign(default_inst[cMyStruct]().MyStringField_ref().value())
                deref(c_inst).__isset.MyStringField = False
                pass

            if not __isNOTSET[2] and MyDataField is None:
                deref(c_inst).MyDataField_ref().assign(default_inst[cMyStruct]().MyDataField_ref().value())
                deref(c_inst).__isset.MyDataField = False
                pass

            if not __isNOTSET[3] and myEnum is None:
                deref(c_inst).myEnum_ref().assign(default_inst[cMyStruct]().myEnum_ref().value())
                deref(c_inst).__isset.myEnum = False
                pass

        if MyIntField is not None:
            deref(c_inst).MyIntField_ref().assign(MyIntField)
            deref(c_inst).__isset.MyIntField = True
        if MyStringField is not None:
            deref(c_inst).MyStringField_ref().assign(thrift.py3.types.move(thrift.py3.types.bytes_to_string(MyStringField.encode('utf-8'))))
            deref(c_inst).__isset.MyStringField = True
        if MyDataField is not None:
            deref(c_inst).MyDataField_ref().assign(deref((<MyDataItem?> MyDataField)._cpp_obj))
            deref(c_inst).__isset.MyDataField = True
        if myEnum is not None:
            deref(c_inst).myEnum_ref().assign(<cMyEnum><int>myEnum)
            deref(c_inst).__isset.myEnum = True
        # in C++ you don't have to call move(), but this doesn't translate
        # into a C++ return statement, so you do here
        return __fbthrift_move_unique(c_inst)

    cdef object __fbthrift_isset(self):
        return thrift.py3.types._IsSet("MyStruct", {
          "MyIntField": deref(self._cpp_obj).MyIntField_ref().has_value(),
          "MyStringField": deref(self._cpp_obj).MyStringField_ref().has_value(),
          "MyDataField": deref(self._cpp_obj).MyDataField_ref().has_value(),
          "myEnum": deref(self._cpp_obj).myEnum_ref().has_value(),
        })

    def __iter__(self):
        yield 'MyIntField', self.MyIntField
        yield 'MyStringField', self.MyStringField
        yield 'MyDataField', self.MyDataField
        yield 'myEnum', self.myEnum

    @staticmethod
    cdef create(shared_ptr[cMyStruct] cpp_obj):
        __fbthrift_inst = <MyStruct>MyStruct.__new__(MyStruct)
        __fbthrift_inst._cpp_obj = __fbthrift_move_shared(cpp_obj)
        return __fbthrift_inst

    @property
    def MyIntField(self):

        return deref(self._cpp_obj).MyIntField_ref().value()

    @property
    def MyStringField(self):

        return (<bytes>deref(self._cpp_obj).MyStringField_ref().value()).decode('UTF-8')

    @property
    def MyDataField(self):

        if self.__field_MyDataField is None:
            self.__field_MyDataField = MyDataItem.create(reference_shared_ptr_MyDataField(self._cpp_obj, deref(self._cpp_obj).MyDataField_ref().value()))
        return self.__field_MyDataField

    @property
    def myEnum(self):

        return translate_cpp_enum_to_python(MyEnum, <int>(deref(self._cpp_obj).myEnum_ref().value()))


    def __hash__(MyStruct self):
        return  super().__hash__()

    def __copy__(MyStruct self):
        cdef shared_ptr[cMyStruct] cpp_obj = make_shared[cMyStruct](
            deref(self._cpp_obj)
        )
        return MyStruct.create(__fbthrift_move_shared(cpp_obj))

    def __richcmp__(self, other, op):
        cdef int cop = op
        if not (
                isinstance(self, MyStruct) and
                isinstance(other, MyStruct)):
            if cop == Py_EQ:  # different types are never equal
                return False
            elif cop == Py_NE:  # different types are always notequal
                return True
            else:
                return NotImplemented

        cdef cMyStruct* cself = (<MyStruct>self)._cpp_obj.get()
        cdef cMyStruct* cother = (<MyStruct>other)._cpp_obj.get()
        if cop == Py_EQ:
            return deref(cself) == deref(cother)
        elif cop == Py_NE:
            return deref(cself) != deref(cother)
        elif cop == Py_LT:
            return deref(cself) < deref(cother)
        elif cop == Py_LE:
            return deref(cself) <= deref(cother)
        elif cop == Py_GT:
            return deref(cself) > deref(cother)
        elif cop == Py_GE:
            return deref(cself) >= deref(cother)
        else:
            return NotImplemented

    @staticmethod
    def __get_reflection__():
        return _types_reflection.get_reflection__MyStruct()

    cdef __iobuf.IOBuf _serialize(MyStruct self, __Protocol proto):
        return __iobuf.from_unique_ptr(
            serializer.cserialize[cMyStruct](self._cpp_obj.get(), proto).move()
        )

    cdef cuint32_t _deserialize(MyStruct self, const __iobuf.cIOBuf* buf, __Protocol proto) except? 0:
        cdef cuint32_t needed
        self._cpp_obj = make_shared[cMyStruct]()
        needed = serializer.cdeserialize[cMyStruct](buf, self._cpp_obj.get(), proto)
        return needed


@__cython.auto_pickle(False)
cdef class MyDataItem(thrift.py3.types.Struct):

    def __init__(
        MyDataItem self, *
    ):
        self._cpp_obj = __fbthrift_move(MyDataItem._make_instance(
          NULL,
          NULL,
        ))

    def __call__(
        MyDataItem self
    ):
        return self

    @staticmethod
    cdef unique_ptr[cMyDataItem] _make_instance(
        cMyDataItem* base_instance,
        bint* __isNOTSET
    ) except *:
        cdef unique_ptr[cMyDataItem] c_inst
        if base_instance:
            c_inst = make_unique[cMyDataItem](deref(base_instance))
        else:
            c_inst = make_unique[cMyDataItem]()

        if base_instance:
            # Convert None's to default value. (or unset)
            pass
        # in C++ you don't have to call move(), but this doesn't translate
        # into a C++ return statement, so you do here
        return __fbthrift_move_unique(c_inst)

    cdef object __fbthrift_isset(self):
        return thrift.py3.types._IsSet("MyDataItem", {
        })

    def __iter__(self):
        yield from ()

    @staticmethod
    cdef create(shared_ptr[cMyDataItem] cpp_obj):
        __fbthrift_inst = <MyDataItem>MyDataItem.__new__(MyDataItem)
        __fbthrift_inst._cpp_obj = __fbthrift_move_shared(cpp_obj)
        return __fbthrift_inst


    def __hash__(MyDataItem self):
        return  super().__hash__()

    def __copy__(MyDataItem self):
        cdef shared_ptr[cMyDataItem] cpp_obj = make_shared[cMyDataItem](
            deref(self._cpp_obj)
        )
        return MyDataItem.create(__fbthrift_move_shared(cpp_obj))

    def __richcmp__(self, other, op):
        cdef int cop = op
        if not (
                isinstance(self, MyDataItem) and
                isinstance(other, MyDataItem)):
            if cop == Py_EQ:  # different types are never equal
                return False
            elif cop == Py_NE:  # different types are always notequal
                return True
            else:
                return NotImplemented

        cdef cMyDataItem* cself = (<MyDataItem>self)._cpp_obj.get()
        cdef cMyDataItem* cother = (<MyDataItem>other)._cpp_obj.get()
        if cop == Py_EQ:
            return deref(cself) == deref(cother)
        elif cop == Py_NE:
            return deref(cself) != deref(cother)
        elif cop == Py_LT:
            return deref(cself) < deref(cother)
        elif cop == Py_LE:
            return deref(cself) <= deref(cother)
        elif cop == Py_GT:
            return deref(cself) > deref(cother)
        elif cop == Py_GE:
            return deref(cself) >= deref(cother)
        else:
            return NotImplemented

    @staticmethod
    def __get_reflection__():
        return _types_reflection.get_reflection__MyDataItem()

    cdef __iobuf.IOBuf _serialize(MyDataItem self, __Protocol proto):
        return __iobuf.from_unique_ptr(
            serializer.cserialize[cMyDataItem](self._cpp_obj.get(), proto).move()
        )

    cdef cuint32_t _deserialize(MyDataItem self, const __iobuf.cIOBuf* buf, __Protocol proto) except? 0:
        cdef cuint32_t needed
        self._cpp_obj = make_shared[cMyDataItem]()
        needed = serializer.cdeserialize[cMyDataItem](buf, self._cpp_obj.get(), proto)
        return needed




@__cython.auto_pickle(False)
cdef class MyUnion(thrift.py3.types.Union):
    Type = __MyUnionType

    def __init__(
        self, *,
        MyEnum myEnum=None,
        MyStruct myStruct=None,
        MyDataItem myDataItem=None
    ):
        self._cpp_obj = __fbthrift_move(MyUnion._make_instance(
          NULL,
          myEnum,
          myStruct,
          myDataItem,
        ))
        self._load_cache()

    @staticmethod
    def fromValue(value):
        if value is None:
            return MyUnion()
        if isinstance(value, MyEnum):
            return MyUnion(myEnum=value)
        if isinstance(value, MyStruct):
            return MyUnion(myStruct=value)
        if isinstance(value, MyDataItem):
            return MyUnion(myDataItem=value)
        raise ValueError(f"Unable to derive correct union field for value: {value}")

    @staticmethod
    cdef unique_ptr[cMyUnion] _make_instance(
        cMyUnion* base_instance,
        MyEnum myEnum,
        MyStruct myStruct,
        MyDataItem myDataItem
    ) except *:
        cdef unique_ptr[cMyUnion] c_inst = make_unique[cMyUnion]()
        cdef bint any_set = False
        if myEnum is not None:
            if any_set:
                raise TypeError("At most one field may be set when initializing a union")
            deref(c_inst).set_myEnum(<cMyEnum><int>myEnum)
            any_set = True
        if myStruct is not None:
            if any_set:
                raise TypeError("At most one field may be set when initializing a union")
            deref(c_inst).set_myStruct(deref((<MyStruct?> myStruct)._cpp_obj))
            any_set = True
        if myDataItem is not None:
            if any_set:
                raise TypeError("At most one field may be set when initializing a union")
            deref(c_inst).set_myDataItem(deref((<MyDataItem?> myDataItem)._cpp_obj))
            any_set = True
        # in C++ you don't have to call move(), but this doesn't translate
        # into a C++ return statement, so you do here
        return __fbthrift_move_unique(c_inst)

    @staticmethod
    cdef create(shared_ptr[cMyUnion] cpp_obj):
        __fbthrift_inst = <MyUnion>MyUnion.__new__(MyUnion)
        __fbthrift_inst._cpp_obj = __fbthrift_move_shared(cpp_obj)
        __fbthrift_inst._load_cache()
        return __fbthrift_inst

    @property
    def myEnum(self):
        if self.type.value != 1:
            raise TypeError(f'Union contains a value of type {self.type.name}, not myEnum')
        return self.value

    @property
    def myStruct(self):
        if self.type.value != 2:
            raise TypeError(f'Union contains a value of type {self.type.name}, not myStruct')
        return self.value

    @property
    def myDataItem(self):
        if self.type.value != 3:
            raise TypeError(f'Union contains a value of type {self.type.name}, not myDataItem')
        return self.value


    def __hash__(MyUnion self):
        return  super().__hash__()

    cdef _load_cache(MyUnion self):
        self.type = MyUnion.Type(<int>(deref(self._cpp_obj).getType()))
        cdef int type = self.type.value
        if type == 0:    # Empty
            self.value = None
        elif type == 1:
            self.value = translate_cpp_enum_to_python(MyEnum, <int>deref(self._cpp_obj).get_myEnum())
        elif type == 2:
            self.value = MyStruct.create(make_shared[cMyStruct](deref(self._cpp_obj).get_myStruct()))
        elif type == 3:
            self.value = MyDataItem.create(make_shared[cMyDataItem](deref(self._cpp_obj).get_myDataItem()))

    def __copy__(MyUnion self):
        cdef shared_ptr[cMyUnion] cpp_obj = make_shared[cMyUnion](
            deref(self._cpp_obj)
        )
        return MyUnion.create(__fbthrift_move_shared(cpp_obj))

    def __richcmp__(self, other, op):
        cdef int cop = op
        if not (
                isinstance(self, MyUnion) and
                isinstance(other, MyUnion)):
            if cop == Py_EQ:  # different types are never equal
                return False
            elif cop == Py_NE:  # different types are always notequal
                return True
            else:
                return NotImplemented

        cdef cMyUnion* cself = (<MyUnion>self)._cpp_obj.get()
        cdef cMyUnion* cother = (<MyUnion>other)._cpp_obj.get()
        if cop == Py_EQ:
            return deref(cself) == deref(cother)
        elif cop == Py_NE:
            return deref(cself) != deref(cother)
        elif cop == Py_LT:
            return deref(cself) < deref(cother)
        elif cop == Py_LE:
            return deref(cself) <= deref(cother)
        elif cop == Py_GT:
            return deref(cself) > deref(cother)
        elif cop == Py_GE:
            return deref(cself) >= deref(cother)
        else:
            return NotImplemented

    @staticmethod
    def __get_reflection__():
        return _types_reflection.get_reflection__MyUnion()

    cdef __iobuf.IOBuf _serialize(MyUnion self, __Protocol proto):
        return __iobuf.from_unique_ptr(
            serializer.cserialize[cMyUnion](self._cpp_obj.get(), proto).move()
        )

    cdef cuint32_t _deserialize(MyUnion self, const __iobuf.cIOBuf* buf, __Protocol proto) except? 0:
        cdef cuint32_t needed
        self._cpp_obj = make_shared[cMyUnion]()
        needed = serializer.cdeserialize[cMyUnion](buf, self._cpp_obj.get(), proto)
        # force a cache reload since the underlying data's changed
        self._load_cache()
        return needed



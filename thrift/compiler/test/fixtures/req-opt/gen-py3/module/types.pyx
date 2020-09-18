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



@__cython.auto_pickle(False)
cdef class Foo(thrift.py3.types.Struct):

    def __init__(
        Foo self, *,
        myInteger=None,
        str myString=None,
        myBools=None,
        myNumbers=None
    ):
        if myInteger is not None:
            if not isinstance(myInteger, int):
                raise TypeError(f'myInteger is not a { int !r}.')
            myInteger = <cint32_t> myInteger

        self._cpp_obj = __fbthrift_move(Foo._make_instance(
          NULL,
          NULL,
          myInteger,
          myString,
          myBools,
          myNumbers,
        ))

    def __call__(
        Foo self,
        myInteger=__NOTSET,
        myString=__NOTSET,
        myBools=__NOTSET,
        myNumbers=__NOTSET
    ):
        ___NOTSET = __NOTSET  # Cheaper for larger structs
        cdef bint[4] __isNOTSET  # so make_instance is typed

        __fbthrift_changed = False
        if myInteger is ___NOTSET:
            __isNOTSET[0] = True
            myInteger = None
        else:
            __isNOTSET[0] = False
            __fbthrift_changed = True

        if myString is ___NOTSET:
            __isNOTSET[1] = True
            myString = None
        else:
            __isNOTSET[1] = False
            __fbthrift_changed = True

        if myBools is ___NOTSET:
            __isNOTSET[2] = True
            myBools = None
        else:
            __isNOTSET[2] = False
            __fbthrift_changed = True

        if myNumbers is ___NOTSET:
            __isNOTSET[3] = True
            myNumbers = None
        else:
            __isNOTSET[3] = False
            __fbthrift_changed = True


        if not __fbthrift_changed:
            return self

        if myInteger is not None:
            if not isinstance(myInteger, int):
                raise TypeError(f'myInteger is not a { int !r}.')
            myInteger = <cint32_t> myInteger

        if myString is not None:
            if not isinstance(myString, str):
                raise TypeError(f'myString is not a { str !r}.')

        __fbthrift_inst = <Foo>Foo.__new__(Foo)
        __fbthrift_inst._cpp_obj = __fbthrift_move(Foo._make_instance(
          self._cpp_obj.get(),
          __isNOTSET,
          myInteger,
          myString,
          myBools,
          myNumbers,
        ))
        return __fbthrift_inst

    @staticmethod
    cdef unique_ptr[cFoo] _make_instance(
        cFoo* base_instance,
        bint* __isNOTSET,
        object myInteger ,
        str myString ,
        object myBools ,
        object myNumbers 
    ) except *:
        cdef unique_ptr[cFoo] c_inst
        if base_instance:
            c_inst = make_unique[cFoo](deref(base_instance))
        else:
            c_inst = make_unique[cFoo]()

        if base_instance:
            # Convert None's to default value. (or unset)
            if not __isNOTSET[0] and myInteger is None:
                deref(c_inst).myInteger_ref().assign(default_inst[cFoo]().myInteger_ref().value())
                pass

            if not __isNOTSET[1] and myString is None:
                deref(c_inst).__isset.myString = False
                pass

            if not __isNOTSET[2] and myBools is None:
                deref(c_inst).myBools_ref().assign(default_inst[cFoo]().myBools_ref().value())
                deref(c_inst).__isset.myBools = False
                pass

            if not __isNOTSET[3] and myNumbers is None:
                deref(c_inst).myNumbers_ref().assign(default_inst[cFoo]().myNumbers_ref().value())
                pass

        if myInteger is not None:
            deref(c_inst).myInteger_ref().assign(myInteger)
        if myString is not None:
            deref(c_inst).myString_ref().assign(thrift.py3.types.move(thrift.py3.types.bytes_to_string(myString.encode('utf-8'))))
            deref(c_inst).__isset.myString = True
        if myBools is not None:
            deref(c_inst).myBools_ref().assign(deref(List__bool(myBools)._cpp_obj))
            deref(c_inst).__isset.myBools = True
        if myNumbers is not None:
            deref(c_inst).myNumbers_ref().assign(deref(List__i32(myNumbers)._cpp_obj))
        # in C++ you don't have to call move(), but this doesn't translate
        # into a C++ return statement, so you do here
        return __fbthrift_move_unique(c_inst)

    cdef object __fbthrift_isset(self):
        return thrift.py3.types._IsSet("Foo", {
          "myInteger": deref(self._cpp_obj).myInteger_ref().has_value(),
          "myString": deref(self._cpp_obj).myString_ref().has_value(),
          "myBools": deref(self._cpp_obj).myBools_ref().has_value(),
          "myNumbers": deref(self._cpp_obj).myNumbers_ref().has_value(),
        })

    def __iter__(self):
        yield 'myInteger', self.myInteger
        yield 'myString', self.myString
        yield 'myBools', self.myBools
        yield 'myNumbers', self.myNumbers

    @staticmethod
    cdef create(shared_ptr[cFoo] cpp_obj):
        __fbthrift_inst = <Foo>Foo.__new__(Foo)
        __fbthrift_inst._cpp_obj = __fbthrift_move_shared(cpp_obj)
        return __fbthrift_inst

    @property
    def myInteger(self):

        return deref(self._cpp_obj).myInteger_ref().value()

    @property
    def myString(self):
        if not deref(self._cpp_obj).__isset.myString:
            return None

        return (<bytes>deref(self._cpp_obj).myString_ref().value_unchecked()).decode('UTF-8')

    @property
    def myBools(self):

        if self.__field_myBools is None:
            self.__field_myBools = List__bool.create(reference_shared_ptr_myBools(self._cpp_obj, deref(self._cpp_obj).myBools_ref().value()))
        return self.__field_myBools

    @property
    def myNumbers(self):

        if self.__field_myNumbers is None:
            self.__field_myNumbers = List__i32.create(reference_shared_ptr_myNumbers(self._cpp_obj, deref(self._cpp_obj).myNumbers_ref().value()))
        return self.__field_myNumbers


    def __hash__(Foo self):
        return  super().__hash__()

    def __copy__(Foo self):
        cdef shared_ptr[cFoo] cpp_obj = make_shared[cFoo](
            deref(self._cpp_obj)
        )
        return Foo.create(__fbthrift_move_shared(cpp_obj))

    def __richcmp__(self, other, op):
        cdef int cop = op
        if not (
                isinstance(self, Foo) and
                isinstance(other, Foo)):
            if cop == Py_EQ:  # different types are never equal
                return False
            elif cop == Py_NE:  # different types are always notequal
                return True
            else:
                return NotImplemented

        cdef cFoo* cself = (<Foo>self)._cpp_obj.get()
        cdef cFoo* cother = (<Foo>other)._cpp_obj.get()
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
        return _types_reflection.get_reflection__Foo()

    cdef __iobuf.IOBuf _serialize(Foo self, __Protocol proto):
        return __iobuf.from_unique_ptr(
            serializer.cserialize[cFoo](self._cpp_obj.get(), proto).move()
        )

    cdef cuint32_t _deserialize(Foo self, const __iobuf.cIOBuf* buf, __Protocol proto) except? 0:
        cdef cuint32_t needed
        self._cpp_obj = make_shared[cFoo]()
        needed = serializer.cdeserialize[cFoo](buf, self._cpp_obj.get(), proto)
        return needed


@__cython.auto_pickle(False)
cdef class List__bool(thrift.py3.types.List):
    def __init__(self, items=None):
        if isinstance(items, List__bool):
            self._cpp_obj = (<List__bool> items)._cpp_obj
        else:
            self._cpp_obj = List__bool._make_instance(items)

    @staticmethod
    cdef create(shared_ptr[vector[cbool]] c_items):
        __fbthrift_inst = <List__bool>List__bool.__new__(List__bool)
        __fbthrift_inst._cpp_obj = __fbthrift_move_shared(c_items)
        return __fbthrift_inst

    def __copy__(List__bool self):
        cdef shared_ptr[vector[cbool]] cpp_obj = make_shared[vector[cbool]](
            deref(self._cpp_obj)
        )
        return List__bool.create(__fbthrift_move_shared(cpp_obj))

    def __len__(self):
        return deref(self._cpp_obj).size()

    @staticmethod
    cdef shared_ptr[vector[cbool]] _make_instance(object items) except *:
        cdef shared_ptr[vector[cbool]] c_inst = make_shared[vector[cbool]]()
        if items is not None:
            for item in items:
                if not isinstance(item, bool):
                    raise TypeError(f"{item!r} is not of type bool")
                deref(c_inst).push_back(item)
        return c_inst

    def __getitem__(self, object index_obj):
        cdef shared_ptr[vector[cbool]] c_inst
        cdef cbool citem
        if isinstance(index_obj, slice):
            c_inst = make_shared[vector[cbool]]()
            sz = deref(self._cpp_obj).size()
            for index in range(*index_obj.indices(sz)):
                deref(c_inst).push_back(deref(self._cpp_obj)[index])
            return List__bool.create(__fbthrift_move_shared(c_inst))
        else:
            index = <int?>index_obj
            size = len(self)
            # Convert a negative index
            if index < 0:
                index = size + index
            if index >= size or index < 0:
                raise IndexError('list index out of range')
            citem = deref(self._cpp_obj)[index]
            return citem

    def __contains__(self, item):
        if not self or item is None:
            return False
        if not isinstance(item, bool):
            return False
        return std_libcpp.find[vector[cbool].iterator, cbool](deref(self._cpp_obj).begin(), deref(self._cpp_obj).end(), item) != deref(self._cpp_obj).end()

    def __iter__(self):
        if not self:
            return
        cdef cbool citem
        cdef vector[cbool].iterator loc = deref(self._cpp_obj).begin()
        while loc != deref(self._cpp_obj).end():
            citem = deref(loc)
            yield citem
            inc(loc)

    def __reversed__(self):
        if not self:
            return
        cdef cbool citem
        cdef vector[cbool].reverse_iterator loc = deref(self._cpp_obj).rbegin()
        while loc != deref(self._cpp_obj).rend():
            citem = deref(loc)
            yield citem
            inc(loc)

    def index(self, item, start not None=__NOTSET, stop not None=__NOTSET):
        err = ValueError(f'{item} is not in list')
        if not self or item is None:
            raise err
        offset_begin = offset_end = 0
        if stop is not __NOTSET or start is not __NOTSET:
            # Like self[start:stop].index(item)
            size = len(self)
            stop = stop if stop is not __NOTSET else size
            start = start if start is not __NOTSET else 0
            # Convert stop to a negative position.
            if stop > 0:
                stop = min(stop - size, 0)
            if stop <= -size:
                raise err  # List would be empty
            offset_end = -stop
            # Convert start to always be positive
            if start < 0:
                start = max(size + start, 0)
            if start >= size:
                raise err  # past end of list
            offset_begin = start

        if not isinstance(item, bool):
            raise err
        cdef vector[cbool].iterator end = std_libcpp.prev(deref(self._cpp_obj).end(), <cint64_t>offset_end)
        cdef vector[cbool].iterator loc = std_libcpp.find[vector[cbool].iterator, cbool](
            std_libcpp.next(deref(self._cpp_obj).begin(), <cint64_t>offset_begin),
            end,
            item        )
        if loc != end:
            return <cint64_t> std_libcpp.distance(deref(self._cpp_obj).begin(), loc)
        raise err

    def count(self, item):
        if not self or item is None:
            return 0
        if not isinstance(item, bool):
            return 0
        return <cint64_t> std_libcpp.count[vector[cbool].iterator, cbool](
            deref(self._cpp_obj).begin(), deref(self._cpp_obj).end(), item)

    @staticmethod
    def __get_reflection__():
        return _types_reflection.get_reflection__List__bool()


Sequence.register(List__bool)

@__cython.auto_pickle(False)
cdef class List__i32(thrift.py3.types.List):
    def __init__(self, items=None):
        if isinstance(items, List__i32):
            self._cpp_obj = (<List__i32> items)._cpp_obj
        else:
            self._cpp_obj = List__i32._make_instance(items)

    @staticmethod
    cdef create(shared_ptr[vector[cint32_t]] c_items):
        __fbthrift_inst = <List__i32>List__i32.__new__(List__i32)
        __fbthrift_inst._cpp_obj = __fbthrift_move_shared(c_items)
        return __fbthrift_inst

    def __copy__(List__i32 self):
        cdef shared_ptr[vector[cint32_t]] cpp_obj = make_shared[vector[cint32_t]](
            deref(self._cpp_obj)
        )
        return List__i32.create(__fbthrift_move_shared(cpp_obj))

    def __len__(self):
        return deref(self._cpp_obj).size()

    @staticmethod
    cdef shared_ptr[vector[cint32_t]] _make_instance(object items) except *:
        cdef shared_ptr[vector[cint32_t]] c_inst = make_shared[vector[cint32_t]]()
        if items is not None:
            for item in items:
                if not isinstance(item, int):
                    raise TypeError(f"{item!r} is not of type int")
                item = <cint32_t> item
                deref(c_inst).push_back(item)
        return c_inst

    def __getitem__(self, object index_obj):
        cdef shared_ptr[vector[cint32_t]] c_inst
        cdef cint32_t citem
        if isinstance(index_obj, slice):
            c_inst = make_shared[vector[cint32_t]]()
            sz = deref(self._cpp_obj).size()
            for index in range(*index_obj.indices(sz)):
                deref(c_inst).push_back(deref(self._cpp_obj)[index])
            return List__i32.create(__fbthrift_move_shared(c_inst))
        else:
            index = <int?>index_obj
            size = len(self)
            # Convert a negative index
            if index < 0:
                index = size + index
            if index >= size or index < 0:
                raise IndexError('list index out of range')
            citem = deref(self._cpp_obj)[index]
            return citem

    def __contains__(self, item):
        if not self or item is None:
            return False
        if not isinstance(item, int):
            return False
        return std_libcpp.find[vector[cint32_t].iterator, cint32_t](deref(self._cpp_obj).begin(), deref(self._cpp_obj).end(), item) != deref(self._cpp_obj).end()

    def __iter__(self):
        if not self:
            return
        cdef cint32_t citem
        cdef vector[cint32_t].iterator loc = deref(self._cpp_obj).begin()
        while loc != deref(self._cpp_obj).end():
            citem = deref(loc)
            yield citem
            inc(loc)

    def __reversed__(self):
        if not self:
            return
        cdef cint32_t citem
        cdef vector[cint32_t].reverse_iterator loc = deref(self._cpp_obj).rbegin()
        while loc != deref(self._cpp_obj).rend():
            citem = deref(loc)
            yield citem
            inc(loc)

    def index(self, item, start not None=__NOTSET, stop not None=__NOTSET):
        err = ValueError(f'{item} is not in list')
        if not self or item is None:
            raise err
        offset_begin = offset_end = 0
        if stop is not __NOTSET or start is not __NOTSET:
            # Like self[start:stop].index(item)
            size = len(self)
            stop = stop if stop is not __NOTSET else size
            start = start if start is not __NOTSET else 0
            # Convert stop to a negative position.
            if stop > 0:
                stop = min(stop - size, 0)
            if stop <= -size:
                raise err  # List would be empty
            offset_end = -stop
            # Convert start to always be positive
            if start < 0:
                start = max(size + start, 0)
            if start >= size:
                raise err  # past end of list
            offset_begin = start

        if not isinstance(item, int):
            raise err
        cdef vector[cint32_t].iterator end = std_libcpp.prev(deref(self._cpp_obj).end(), <cint64_t>offset_end)
        cdef vector[cint32_t].iterator loc = std_libcpp.find[vector[cint32_t].iterator, cint32_t](
            std_libcpp.next(deref(self._cpp_obj).begin(), <cint64_t>offset_begin),
            end,
            item        )
        if loc != end:
            return <cint64_t> std_libcpp.distance(deref(self._cpp_obj).begin(), loc)
        raise err

    def count(self, item):
        if not self or item is None:
            return 0
        if not isinstance(item, int):
            return 0
        return <cint64_t> std_libcpp.count[vector[cint32_t].iterator, cint32_t](
            deref(self._cpp_obj).begin(), deref(self._cpp_obj).end(), item)

    @staticmethod
    def __get_reflection__():
        return _types_reflection.get_reflection__List__i32()


Sequence.register(List__i32)


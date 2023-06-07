#
# Autogenerated by Thrift
#
# DO NOT EDIT
#  @generated
#

from __future__ import annotations

import folly.iobuf as _fbthrift_iobuf
import thrift.python.types as _fbthrift_python_types
import thrift.python.exceptions as _fbthrift_python_exceptions


import b.thrift_types

import c.thrift_types
import two
import three
import one


class MyStruct(metaclass=_fbthrift_python_types.StructMeta):
    _fbthrift_SPEC = (
        (
            1,  # id
            _fbthrift_python_types.FieldQualifier.Unqualified, # qualifier
            "a",  # name
            lambda: _fbthrift_python_types.AdaptedTypeInfo(_fbthrift_python_types.StructTypeInfo(b.thrift_types._fbthrift_unadapted_B), one.AdapterOne, lambda: None),  # typeinfo
            None,  # default value
            None,  # adapter info
        ),
        (
            2,  # id
            _fbthrift_python_types.FieldQualifier.Unqualified, # qualifier
            "b",  # name
            lambda: _fbthrift_python_types.AdaptedTypeInfo(_fbthrift_python_types.StructTypeInfo(c.thrift_types._fbthrift_unadapted_C1), three.AdapterThree, lambda: None),  # typeinfo
            None,  # default value
            None,  # adapter info
        ),
        (
            3,  # id
            _fbthrift_python_types.FieldQualifier.Unqualified, # qualifier
            "c",  # name
            lambda: _fbthrift_python_types.AdaptedTypeInfo(_fbthrift_python_types.StructTypeInfo(c.thrift_types.C2), two.AdapterTwo, lambda: None),  # typeinfo
            None,  # default value
            None,  # adapter info
        ),
    )

    @staticmethod
    def __get_thrift_name__() -> str:
        return "a.MyStruct"

    @staticmethod
    def __get_thrift_uri__():
        return None

    @staticmethod
    def __get_metadata__():
        return _fbthrift_metadata__struct_MyStruct()

    def _to_python(self):
        return self

    def _to_py3(self):
        import importlib
        py3_types = importlib.import_module("a.types")
        import thrift.py3.converter
        return thrift.py3.converter.to_py3_struct(py3_types.MyStruct, self)

    def _to_py_deprecated(self):
        import importlib
        py_deprecated_types = importlib.import_module("a.ttypes")
        import thrift.util.converter
        return thrift.util.converter.to_py_struct(py_deprecated_types.MyStruct, self)

# This unfortunately has to be down here to prevent circular imports
import a.thrift_metadata


_fbthrift_all_enums = [
]

def _fbthrift_metadata__struct_MyStruct():
    return a.thrift_metadata.gen_metadata_struct_MyStruct()

_fbthrift_all_structs = [
    MyStruct,
]
_fbthrift_python_types.fill_specs(*_fbthrift_all_structs)

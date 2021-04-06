/**
 * Autogenerated by Thrift for src/module.thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
#include "thrift/compiler/test/fixtures/enums/gen-cpp2/module_types.h"
#include "thrift/compiler/test/fixtures/enums/gen-cpp2/module_types.tcc"

#include <thrift/lib/cpp2/gen/module_types_cpp.h>

#include "thrift/compiler/test/fixtures/enums/gen-cpp2/module_data.h"


namespace apache { namespace thrift {

constexpr std::size_t const TEnumTraits<::cpp2::Metasyntactic>::size;
folly::Range<::cpp2::Metasyntactic const*> const TEnumTraits<::cpp2::Metasyntactic>::values = folly::range(TEnumDataStorage<::cpp2::Metasyntactic>::values);
folly::Range<folly::StringPiece const*> const TEnumTraits<::cpp2::Metasyntactic>::names = folly::range(TEnumDataStorage<::cpp2::Metasyntactic>::names);

char const* TEnumTraits<::cpp2::Metasyntactic>::findName(type value) {
  using factory = ::cpp2::_Metasyntactic_EnumMapFactory;
  static folly::Indestructible<factory::ValuesToNamesMapType> const map{
      factory::makeValuesToNamesMap()};
  auto found = map->find(value);
  return found == map->end() ? nullptr : found->second;
}

bool TEnumTraits<::cpp2::Metasyntactic>::findValue(char const* name, type* out) {
  using factory = ::cpp2::_Metasyntactic_EnumMapFactory;
  static folly::Indestructible<factory::NamesToValuesMapType> const map{
      factory::makeNamesToValuesMap()};
  auto found = map->find(name);
  return found == map->end() ? false : (*out = found->second, true);
}

}} // apache::thrift

namespace cpp2 {
FOLLY_PUSH_WARNING
FOLLY_GNU_DISABLE_WARNING("-Wdeprecated-declarations")
const _Metasyntactic_EnumMapFactory::ValuesToNamesMapType _Metasyntactic_VALUES_TO_NAMES = _Metasyntactic_EnumMapFactory::makeValuesToNamesMap();
const _Metasyntactic_EnumMapFactory::NamesToValuesMapType _Metasyntactic_NAMES_TO_VALUES = _Metasyntactic_EnumMapFactory::makeNamesToValuesMap();
FOLLY_POP_WARNING

} // cpp2

namespace apache {
namespace thrift {
namespace detail {

void TccStructTraits<::cpp2::SomeStruct>::translateFieldName(
    folly::StringPiece _fname,
    int16_t& fid,
    apache::thrift::protocol::TType& _ftype) noexcept {
  using data = apache::thrift::TStructDataStorage<::cpp2::SomeStruct>;
  static const st::translate_field_name_table table{
      data::fields_size,
      data::fields_names.data(),
      data::fields_ids.data(),
      data::fields_types.data()};
  st::translate_field_name(_fname, fid, _ftype, table);
}

} // namespace detail
} // namespace thrift
} // namespace apache

namespace cpp2 {

THRIFT_IGNORE_ISSET_USE_WARNING_BEGIN
SomeStruct::SomeStruct(SomeStruct&& other) noexcept  :
    reasonable(std::move(other.reasonable)),
    fine(std::move(other.fine)),
    questionable(std::move(other.questionable)),
    tags(std::move(other.tags)),
    __isset(other.__isset) {}
THRIFT_IGNORE_ISSET_USE_WARNING_END

static_assert(std::is_nothrow_move_constructible<SomeStruct>::value);

THRIFT_IGNORE_ISSET_USE_WARNING_BEGIN
SomeStruct::SomeStruct(apache::thrift::FragileConstructor, ::cpp2::Metasyntactic reasonable__arg, ::cpp2::Metasyntactic fine__arg, ::cpp2::Metasyntactic questionable__arg, ::std::set<::std::int32_t> tags__arg) :
    reasonable(std::move(reasonable__arg)),
    fine(std::move(fine__arg)),
    questionable(std::move(questionable__arg)),
    tags(std::move(tags__arg)) {
  __isset.reasonable = true;
  __isset.fine = true;
  __isset.questionable = true;
  __isset.tags = true;
}
THRIFT_IGNORE_ISSET_USE_WARNING_END
void SomeStruct::__clear() {
  // clear all fields
  reasonable =  ::cpp2::Metasyntactic::FOO;
  fine =  ::cpp2::Metasyntactic::BAR;
  questionable = static_cast< ::cpp2::Metasyntactic>(-1);
  tags.clear();
THRIFT_IGNORE_ISSET_USE_WARNING_BEGIN
  __isset = {};
THRIFT_IGNORE_ISSET_USE_WARNING_END
}

bool SomeStruct::operator==(const SomeStruct& rhs) const {
  (void)rhs;
  auto& lhs = *this;
  (void)lhs;
  if (!(lhs.reasonable == rhs.reasonable)) {
    return false;
  }
  if (!(lhs.fine == rhs.fine)) {
    return false;
  }
  if (!(lhs.questionable == rhs.questionable)) {
    return false;
  }
  if (!(lhs.tags == rhs.tags)) {
    return false;
  }
  return true;
}

bool SomeStruct::operator<(const SomeStruct& rhs) const {
  (void)rhs;
  auto& lhs = *this;
  (void)lhs;
  if (!(lhs.reasonable == rhs.reasonable)) {
    return lhs.reasonable < rhs.reasonable;
  }
  if (!(lhs.fine == rhs.fine)) {
    return lhs.fine < rhs.fine;
  }
  if (!(lhs.questionable == rhs.questionable)) {
    return lhs.questionable < rhs.questionable;
  }
  if (!(lhs.tags == rhs.tags)) {
    return lhs.tags < rhs.tags;
  }
  return false;
}

const ::std::set<::std::int32_t>& SomeStruct::get_tags() const& {
  return tags;
}

::std::set<::std::int32_t> SomeStruct::get_tags() && {
  return std::move(tags);
}


void swap(SomeStruct& a, SomeStruct& b) {
  using ::std::swap;
  swap(a.reasonable_ref().value(), b.reasonable_ref().value());
  swap(a.fine_ref().value(), b.fine_ref().value());
  swap(a.questionable_ref().value(), b.questionable_ref().value());
  swap(a.tags_ref().value(), b.tags_ref().value());
THRIFT_IGNORE_ISSET_USE_WARNING_BEGIN
  swap(a.__isset, b.__isset);
THRIFT_IGNORE_ISSET_USE_WARNING_END
}

template void SomeStruct::readNoXfer<>(apache::thrift::BinaryProtocolReader*);
template uint32_t SomeStruct::write<>(apache::thrift::BinaryProtocolWriter*) const;
template uint32_t SomeStruct::serializedSize<>(apache::thrift::BinaryProtocolWriter const*) const;
template uint32_t SomeStruct::serializedSizeZC<>(apache::thrift::BinaryProtocolWriter const*) const;
template void SomeStruct::readNoXfer<>(apache::thrift::CompactProtocolReader*);
template uint32_t SomeStruct::write<>(apache::thrift::CompactProtocolWriter*) const;
template uint32_t SomeStruct::serializedSize<>(apache::thrift::CompactProtocolWriter const*) const;
template uint32_t SomeStruct::serializedSizeZC<>(apache::thrift::CompactProtocolWriter const*) const;



} // cpp2

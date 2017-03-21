#include "SaxonProcessor.h"

#include "rice/Module.hpp"
#include "rice/Data_Type.hpp"
#include "rice/Constructor.hpp"
#include "rice/Class.hpp"

extern "C"
void Init_SaxonProcessor()
{
  Rice::Data_Type<SaxonProcessor> rb_cSaxonProcessor =
    Rice::define_class<SaxonProcessor>("SaxonProcessor")
    .define_constructor(Rice::Constructor<SaxonProcessor>())
    .define_method("version", &SaxonProcessor::version);
}
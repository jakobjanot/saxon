%module XsltProcessor
%{
#include "XsltProcessor.h"
%}

class XsltProcessor
{
public:
 David(int x);
 void announce();
 int x;
};

%module XQueryProcessor
%{
#include "XQueryProcessor.h"
%}

%module XPathProcessor
%{
#include "XPathProcessor.h"
%}

%module SchemaValidator
%{
#include "SchemaValidator.h"
%}

%module XdmValue
%{
#include "XdmValue.h"
%}

%module XdmNode
%{
#include "XdmNode.h"
%}

%module XdmItem
%{
#include "XdmItem.h"
%}

%module XdmAtomicValue
%{
#include "XdmAtomicValue.h"
%}
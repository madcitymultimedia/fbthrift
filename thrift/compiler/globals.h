/*
 * Copyright 2016-present Facebook, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#pragma once

#include <map>
#include <queue>
#include <stack>
#include <string>
#include <vector>

/**
 * This module contains all the global variables (slap on the wrist) that are
 * shared throughout the program. The reason for this is to facilitate simple
 * interaction between the parser and the rest of the program. Before calling
 * yyparse(), the main.cc program will make necessary adjustments to these
 * global variables such that the parser does the right thing and puts entries
 * into the right containers, etc.
 *
 */

/**
 * Hooray for forward declaration of types!
 */

class t_program;
class t_scope;
class t_base_type;

/**
 * Parsing mode, two passes up in this gin rummy!
 */

enum PARSE_MODE { INCLUDES = 1, PROGRAM = 2 };

/**
 * Expected to be defined by Flex/Bison
 */
extern "C" {
void yyerror(const char* fmt, ...);
}

/**
 * Flex utilities
 */
extern int yylineno;
extern char yytext[];
extern FILE* yyin;

/**
 * A global map that holds a pointer to all programs already cached
 */
extern std::map<std::string, t_program*> program_cache;

/**
 * Global types for the parser to be able to reference
 */

extern t_base_type* g_type_void;
extern t_base_type* g_type_string;
extern t_base_type* g_type_binary;
extern t_base_type* g_type_slist;
extern t_base_type* g_type_bool;
extern t_base_type* g_type_byte;
extern t_base_type* g_type_i16;
extern t_base_type* g_type_i32;
extern t_base_type* g_type_i64;
extern t_base_type* g_type_double;
extern t_base_type* g_type_float;

/**
 * The scope that holds a cache of all g_scopes for faster compilations
 */
extern t_scope* g_scope_cache;

/**
 * The parsing pass that we are on. We do different things on each pass.
 */
extern PARSE_MODE g_parse_mode;

/**
 * The last parsed doctext comment.
 */
extern char* g_doctext;

/**
 * The location of the last parsed doctext comment.
 */
extern int g_doctext_lineno;

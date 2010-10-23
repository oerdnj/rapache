package APR::Request::StructureTable;

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# ! WARNING: generated by My::ParseSource/
# !          Mon Apr 25 19:35:55 2005
# !          do NOT edit, any changes will be lost !
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

$APR::Request::StructureTable = [
  {
    'type' => 'apreq_cookie_t',
    'stype' => 'struct apreq_cookie_t',
    'elts' => [
      {
        'type' => 'char *',
        'name' => 'path',
        'comment' => '*< Restricts url path'
      },
      {
        'type' => 'char *',
        'name' => 'domain',
        'comment' => '*< Restricts server domain'
      },
      {
        'type' => 'char *',
        'name' => 'port',
        'comment' => '*< Restricts server port'
      },
      {
        'type' => 'char *',
        'name' => 'comment',
        'comment' => '*< RFC cookies may send a comment'
      },
      {
        'type' => 'char *',
        'name' => 'commentURL',
        'comment' => '*< RFC cookies may place an URL here'
      },
      {
        'type' => 'apr_time_t',
        'name' => 'max_age',
        'comment' => '*< total duration of cookie: -1 == session'
      },
      {
        'type' => 'unsigned',
        'name' => 'flags',
        'comment' => '*< charsets, taint marks, app-specific bits'
      },
      {
        'type' => 'const apreq_value_t',
        'name' => 'v',
        'comment' => '*< "raw" cookie value'
      }
    ],
    'comment' => '* @brief Cookie type, supporting both Netscape and RFC cookie specifications.'
  },
  {
    'type' => 'apreq_handle_t',
    'stype' => 'struct apreq_handle_t',
    'elts' => [
      {
        'type' => 'const struct apreq_module_t *',
        'name' => 'module',
        'comment' => '* the apreq module which implements this handle'
      },
      {
        'type' => 'apr_pool_t *',
        'name' => 'pool',
        'comment' => '* the pool which defines the lifetime of the parsed data'
      },
      {
        'type' => 'apr_bucket_alloc_t *',
        'name' => 'bucket_alloc',
        'comment' => '* the allocator, which persists at least as long as the pool'
      }
    ],
    'comment' => '*
 * @file apreq_module.h
 * @brief Module API
 * @ingroup libapreq2 *
 * An apreq handle associated with a module. The structure
 * may have variable size, because the module may append its own data
 * structures after it.'
  },
  {
    'type' => 'apreq_hook_t',
    'stype' => 'struct apreq_hook_t',
    'elts' => [
      {
        'type' => 'apreq_hook_function_t',
        'name' => 'hook',
        'comment' => '*< the hook function'
      },
      {
        'type' => 'apreq_hook_t *',
        'name' => 'next',
        'comment' => '*< next item in the linked list'
      },
      {
        'type' => 'apr_pool_t *',
        'name' => 'pool',
        'comment' => '*< pool which allocated this hook'
      },
      {
        'type' => 'void *',
        'name' => 'ctx',
        'comment' => '*< a user defined pointer passed to the hook function'
      }
    ],
    'comment' => '*
 * A hook is called by the parser whenever data arrives in a file
 * upload parameter of the request body. You may associate any number
 * of hooks with a parser instance with apreq_parser_add_hook().'
  },
  {
    'type' => 'apreq_module_t',
    'stype' => 'struct apreq_module_t',
    'elts' => [
      {
        'type' => 'const char *',
        'name' => 'name',
        'comment' => '* name of this apreq module'
      },
      {
        'type' => 'apr_uint32_t',
        'name' => 'magic_number',
        'comment' => '* magic number identifying the module and version'
      },
      {
        'type' => 'apr_status_t(*)(apreq_handle_t * ,const apr_table_t * * )',
        'name' => 'jar',
        'comment' => '* get a table with all cookies'
      },
      {
        'type' => 'apr_status_t(*)(apreq_handle_t * ,const apr_table_t * * )',
        'name' => 'args',
        'comment' => '* get a table with all query string parameters'
      },
      {
        'type' => 'apr_status_t(*)(apreq_handle_t * ,const apr_table_t * * )',
        'name' => 'body',
        'comment' => '* get a table with all body parameters'
      },
      {
        'type' => 'apreq_cookie_t *(*)(apreq_handle_t * ,const char * )',
        'name' => 'jar_get',
        'comment' => '* get a cookie by its name'
      },
      {
        'type' => 'apreq_param_t *(*)(apreq_handle_t * ,const char * )',
        'name' => 'args_get',
        'comment' => '* get a query string parameter by its name'
      },
      {
        'type' => 'apreq_param_t *(*)(apreq_handle_t * ,const char * )',
        'name' => 'body_get',
        'comment' => '* get a body parameter by its name'
      },
      {
        'type' => 'apr_status_t(*)(apreq_handle_t * ,const apreq_parser_t * * )',
        'name' => 'parser_get',
        'comment' => '* gets the parser associated with the request body'
      },
      {
        'type' => 'apr_status_t(*)(apreq_handle_t * ,apreq_parser_t * )',
        'name' => 'parser_set',
        'comment' => '* manually set a parser for the request body'
      },
      {
        'type' => 'apr_status_t(*)(apreq_handle_t * ,apreq_hook_t * )',
        'name' => 'hook_add',
        'comment' => '* add a hook function'
      },
      {
        'type' => 'apr_status_t(*)(apreq_handle_t * ,apr_size_t * )',
        'name' => 'brigade_limit_get',
        'comment' => '* determine the maximum in-memory bytes a brigade may use'
      },
      {
        'type' => 'apr_status_t(*)(apreq_handle_t * ,apr_size_t )',
        'name' => 'brigade_limit_set',
        'comment' => '* set the maximum in-memory bytes a brigade may use'
      },
      {
        'type' => 'apr_status_t(*)(apreq_handle_t * ,apr_uint64_t * )',
        'name' => 'read_limit_get',
        'comment' => '* determine the maximum amount of data that will be fed into a parser'
      },
      {
        'type' => 'apr_status_t(*)(apreq_handle_t * ,apr_uint64_t )',
        'name' => 'read_limit_set',
        'comment' => '* set the maximum amount of data that will be fed into a parser'
      },
      {
        'type' => 'apr_status_t(*)(apreq_handle_t * ,const char * * )',
        'name' => 'temp_dir_get',
        'comment' => '* determine the directory used by the parser for temporary files'
      },
      {
        'type' => 'apr_status_t(*)(apreq_handle_t * ,const char * )',
        'name' => 'temp_dir_set',
        'comment' => '* set the directory used by the parser for temporary files'
      }
    ],
    'comment' => '*
 * @brief Vtable describing the necessary environment functions.'
  },
  {
    'type' => 'apreq_param_t',
    'stype' => 'struct apreq_param_t',
    'elts' => [
      {
        'type' => 'apr_table_t *',
        'name' => 'info',
        'comment' => '*< header table associated with the param'
      },
      {
        'type' => 'apr_bucket_brigade *',
        'name' => 'upload',
        'comment' => '*< brigade used to spool upload files'
      },
      {
        'type' => 'unsigned',
        'name' => 'flags',
        'comment' => '*< charsets, taint marks, app-specific bits'
      },
      {
        'type' => 'const apreq_value_t',
        'name' => 'v',
        'comment' => '*< underlying name/value info'
      }
    ],
    'comment' => '*
 * @file apreq_param.h
 * @brief Request parsing and parameter API
 * @ingroup libapreq2 * Common data structure for params and file uploads'
  },
  {
    'type' => 'apreq_parser_t',
    'stype' => 'struct apreq_parser_t',
    'elts' => [
      {
        'type' => 'apreq_parser_function_t',
        'name' => 'parser',
        'comment' => '* the function which parses chunks of body data'
      },
      {
        'type' => 'const char *',
        'name' => 'content_type',
        'comment' => '* the Content-Type request header'
      },
      {
        'type' => 'apr_pool_t *',
        'name' => 'pool',
        'comment' => '* a pool used by the parser'
      },
      {
        'type' => 'apr_bucket_alloc_t *',
        'name' => 'bucket_alloc',
        'comment' => '* bucket allocator used to create bucket brigades'
      },
      {
        'type' => 'apr_size_t',
        'name' => 'brigade_limit',
        'comment' => '* the maximum in-memory bytes a brigade may use'
      },
      {
        'type' => 'const char *',
        'name' => 'temp_dir',
        'comment' => '* the directory used by the parser for temporary files'
      },
      {
        'type' => 'apreq_hook_t *',
        'name' => 'hook',
        'comment' => '* linked list of hooks'
      },
      {
        'type' => 'void *',
        'name' => 'ctx',
        'comment' => '* internal context pointer used by the parser function'
      }
    ],
    'comment' => '*
 * A request body parser instance.'
  },
  {
    'type' => 'apreq_value_t',
    'stype' => 'struct apreq_value_t',
    'elts' => [
      {
        'type' => 'char *',
        'name' => 'name',
        'comment' => '*< value name'
      },
      {
        'type' => 'apr_size_t',
        'name' => 'nlen',
        'comment' => '*< length of name'
      },
      {
        'type' => 'apr_size_t',
        'name' => 'dlen',
        'comment' => '*< length of data'
      },
      {
        'type' => 'char',
        'name' => 'data[1]',
        'comment' => '*< value data'
      }
    ],
    'comment' => '* @brief libapreq\'s pre-extensible string type'
  },
  {
    'type' => 'struct hook_ctx',
    'stype' => 'struct hook_ctx',
    'elts' => [
      {
        'type' => 'SV *',
        'name' => 'hook'
      },
      {
        'type' => 'SV *',
        'name' => 'bucket_data'
      },
      {
        'type' => 'SV *',
        'name' => 'parent'
      },
      {
        'type' => 'PerlInterpreter *',
        'name' => 'perl'
      }
    ]
  }
];


1;
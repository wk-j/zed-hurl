; General structure
(hurl_file) @document
(entry) @structure

; Request
(request
  method: (method) @keyword
  url: (value_string) @string.special)

(header
  key: (key_string) @variable.parameter
  value: (value_string) @string)

; Response
(response
  version: (version) @constant
  status: (status) @number)

; Sections
((key_string) @keyword
 (#match? @keyword "^\\[(QueryStringParams|FormParams|MultipartFormData|Cookies|Captures|Asserts|BasicAuth|Options)\\]$"))

; Key-Value pairs
(key_value
  key: (key_string) @variable.parameter
  value: (value_string) @string)

; File parameters
(file_param
  key: (key_string) @variable.parameter
  value: (file_value) @string.special)

; Captures and Asserts
(capture
  key: (key_string) @variable
  query: (query) @function)

(assert
  query: (query) @function
  predicate: (predicate) @function)

; Options
(option) @property

; Queries
(status_query) @function
(url_query) @function
(header_query) @function
(cookie_query) @function
(body_query) @function
(xpath_query) @function
(jsonpath_query) @function
(regex_query) @function
(variable_query) @function
(duration_query) @function
(bytes_query) @function
(sha256_query) @function
(md5_query) @function

; Predicates
(predicate_func) @function

; Filters
(filter) @function

; JSON
(json_value) @string
(json_object) @punctuation.bracket
(json_array) @punctuation.bracket
(json_key_value
  key: (json_string) @variable.parameter
  value: (_) @string)
(json_number) @number

; XML
(xml) @tag

; Strings
(quoted_string) @string
(key_string) @string
(value_string) @string
(oneline_string) @string
(multiline_string) @string
(filename) @string

; Numbers
(integer) @number
(float) @number

; Boolean and Null
((value_string) @constant.builtin
 (#match? @constant.builtin "^(true|false|null)$"))

; Variables and Templates
(variable_name) @variable
(template) @punctuation.special

; Comments
(comment) @comment

; Punctuation
"[" @punctuation.bracket
"]" @punctuation.bracket
"{" @punctuation.bracket
"}" @punctuation.bracket
"(" @punctuation.bracket
")" @punctuation.bracket
"," @punctuation.delimiter
":" @punctuation.delimiter
";" @punctuation.delimiter

; Operators
"==" @operator
"!=" @operator
">" @operator
">=" @operator
"<" @operator
"<=" @operator
"startsWith" @operator
"endsWith" @operator
"contains" @operator
"matches" @operator
"exists" @operator
"isEmpty" @operator
"includes" @operator

; Keywords
"not" @keyword

; HTTP Methods
((method) @keyword.http_method
 (#match? @keyword.http_method "^(GET|POST|PUT|DELETE|PATCH|HEAD|OPTIONS|TRACE|CONNECT)$"))

; HTTP Status Codes
((status) @constant.numeric.http_status
 (#match? @constant.numeric.http_status "^[1-5][0-9][0-9]$"))

; Capture Section
(captures_section
  "[Captures]" @keyword.section
  (capture
    key: (key_string) @variable.capture
    query: (query) @function.query
    (filter)? @function.filter))

; JSON body
(body
  (json_object) @string.json)

; Asserts Section
(asserts_section
  "[Asserts]" @keyword.section
  (assert
    query: (query) @function.query
    predicate: (predicate) @function.predicate))

; Improved highlighting for multiline strings
(multiline_string
  "```" @punctuation.delimiter.multiline_string
  type: (_)? @constant.language.multiline_string_type
  content: (_) @string.multiline)

; Improved highlighting for templates
(template
  "{{" @punctuation.special.template_start
  (expr) @expression.template
  "}}" @punctuation.special.template_end)

; Highlight file parameters
(file_param
  key: (key_string) @variable.parameter
  value: (file_value
    filename: (filename) @string.special.filename
    contenttype: (file_contenttype)? @constant.mime_type))

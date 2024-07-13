; Hurl file structure
(hurl_file) @scope

; Entries (request-response pairs)
(entry) @scope

; Request
(request) @scope

; Response
(response) @scope

; Sections
(query_string_params_section) @scope
(form_params_section) @scope
(multipart_form_data_section) @scope
(cookies_section) @scope
(captures_section) @scope
(asserts_section) @scope
(basic_auth_section) @scope
(options_section) @scope

; JSON structures
(json_object) @scope
(json_array) @scope

; XML structures
(xml) @scope

; Multiline strings
(multiline_string) @scope

; Captures and Asserts
(capture) @scope
(assert) @scope

; Options
(option) @scope

; Headers
(header) @scope

; File parameters
(file_param) @scope

; Queries
((query) @scope
 (#set! "kind" "function"))

; Predicates
((predicate) @scope
 (#set! "kind" "function"))

; Filters
((filter) @scope
 (#set! "kind" "function"))

; Define custom folds
((comment) @fold
 (#set! "kind" "comment"))

((multiline_string) @fold
 (#set! "kind" "text"))

((json_object) @fold
 (#set! "kind" "object"))

((json_array) @fold
 (#set! "kind" "array"))

((xml) @fold
 (#set! "kind" "markup"))

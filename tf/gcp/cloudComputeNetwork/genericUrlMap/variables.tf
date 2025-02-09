variable "gcpProjectId" {
  type = string
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

variable "resourceName" {
  type = string
}

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#argument-reference
variable "urlMapDefaultService" {
  type    = string
  default = null
}

variable "urlMapDescription" {
  type    = string
  default = null
}

variable "urlMapHeaderAction" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_header_action
  type = object({

    request_headers_to_add = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_request_headers_to_add
      header_name  = string
      header_value = string
      replace      = bool
    }), null)

    request_headers_to_remove = optional(list(string), null)

    response_headers_to_add = optional(object({
      header_name  = string
      header_value = string
      replace      = bool
    }), null)

    response_headers_to_remove = optional(list(string), null)
  })
  default = null
} #good

variable "urlMapHostRule" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_host_rule
  type = object({
    description  = optional(string, null)
    hosts        = list(string)
    path_matcher = string
  })
  default = null
} #good

variable "urlMapPathMatcher" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_path_matcher
  type = object({
    default_service = optional(string, null)
    description     = optional(string, null)

    header_action = optional(object({            #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_header_action
      request_headers_to_add = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_request_headers_to_add
        header_name  = string
        header_value = string
        replace      = bool
      }), null)

      request_headers_to_remove = optional(list(string), null)

      response_headers_to_add = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_response_headers_to_add
        header_name  = string
        header_value = string
        replace      = bool
      }), null)

      response_headers_to_remove = optional(list(string), null)
    }), null) #good

    name = string

    path_rule = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_path_rule
      service = optional(string, null)
      paths   = list(string)

      route_action = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_route_action

        cors_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_cors_policy
          allow_credentials    = optional(bool, null)
          allow_headers        = optional(list(string), null)
          allow_methods        = optional(list(string), null)
          allow_origin_regexes = optional(list(string), null)
          allow_origins        = optional(list(string), null)
          disabled             = bool
          expose_headers       = optional(list(string), null)
          max_age              = optional(number, null)
        }), null) #good

        fault_injection_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_fault_injection_policy

          abort = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_abort
            http_status = number
            percentage  = number
          }), null)

          delay = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_delay

            fixed_delay = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_fixed_delay
              nanos   = optional(number, null)
              seconds = number
            })

            percentage = number
          }), null)
        }), null) #good

        request_mirror_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_request_mirror_policy
          backend_service = string
        }), null) #good

        retry_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_retry_policy
          num_retries = optional(number, null)

          per_try_timeout = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_per_try_timeout
            nanos   = optional(number, null)
            seconds = number
          }), null)

          retry_conditions = optional(string, null)
        }), null) #good

        timeout = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_timeout
          nanos   = optional(number, null)
          seconds = number
        }), null) #good

        url_rewrite = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_url_rewrite
          host_rewrite        = optional(string, null)
          path_prefix_rewrite = optional(string, null)
        }), null) #good

        weighted_backend_services = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_weighted_backend_services
          backend_service = string

          header_action = optional(object({            #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_header_action
            request_headers_to_add = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_request_headers_to_add
              header_name  = string
              header_value = string
              replace      = bool
            }), null)

            request_headers_to_remove = optional(list(string), null)

            response_headers_to_add = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_response_headers_to_add
              header_name  = string
              header_value = string
              replace      = bool
            }), null)

            response_headers_to_remove = optional(list(string), null)
          }), null) #good

          weight = number
        }), null)

      }), null) #good

      url_redirect = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_url_redirect
        host_redirect          = optional(string, null)
        https_redirect         = optional(bool, null)
        path_redirect          = optional(string, null)
        prefix_redirect        = optional(string, null)
        redirect_response_code = optional(string, null)
        strip_query            = bool
      }), null) #good

    }) #good

    route_rules = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_route_rules
      priority = number
      service  = optional(string, null)

      header_action = optional(object({            #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_header_action
        request_headers_to_add = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_request_headers_to_add
          header_name  = string
          header_value = string
          replace      = bool
        }), null)

        request_headers_to_remove = optional(list(string), null)

        response_headers_to_add = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_response_headers_to_add
          header_name  = string
          header_value = string
          replace      = bool
        }), null)

        response_headers_to_remove = optional(list(string), null)
      }), null)

      match_rules = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_match_rules
        full_path_match = optional(string, null)

        header_matches = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_header_matches
          exact_match   = optional(string, null)
          header_name   = string
          invert_match  = optional(string, null)
          prefix_match  = optional(string, null)
          present_match = optional(string, null)

          range_match = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_range_match
            range_end   = number
            range_start = number
          }), null)

          regex_match  = optional(string, null)
          suffix_match = optional(string, null)
        }), null) #good

        ignore_case = optional(bool, null)

        metadata_filters = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_metadata_filters
          filter_labels = object({           #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_filter_labels
            name  = string
            value = string
          })

          filter_match_criteria = string
        }), null) #good

        prefix_match = optional(string, null)

        query_parameter_matches = optional(object({
          exact_match   = optional(string, null)
          name          = string
          present_match = optional(bool, null)
          regex_match   = optional(string, null)
        }), null)

        regex_match         = optional(string, null)
        path_template_match = optional(string, null)
      }), null) #good

      route_action = optional(object({  #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_route_action
        cors_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_cors_policy
          allow_credentials    = optional(bool, null)
          allow_headers        = optional(list(string), null)
          allow_methods        = optional(list(string), null)
          allow_origin_regexes = optional(list(string), null)
          allow_origins        = optional(list(string), null)
          disabled             = bool
          expose_headers       = optional(list(string), null)
          max_age              = optional(number, null)
        }), null)

        fault_injection_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_fault_injection_policy

          abort = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_abort
            http_status = number
            percentage  = number
          }), null)

          delay = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_delay

            fixed_delay = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_fixed_delay
              nanos   = optional(number, null)
              seconds = number
            })

            percentage = number
          }), null)
        }), null)

        request_mirror_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_request_mirror_policy
          backend_service = string
        }), null)

        retry_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_retry_policy
          num_retries = optional(number, null)

          per_try_timeout = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_per_try_timeout
            nanos   = optional(number, null)
            seconds = number
          }), null)

          retry_conditions = optional(string, null)
        }), null)

        timeout = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_timeout
          nanos   = optional(number, null)
          seconds = number
        }), null)

        url_rewrite = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_url_rewrite
          host_rewrite        = optional(string, null)
          path_prefix_rewrite = optional(string, null)
        }), null)

        weighted_backend_services = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_weighted_backend_services
          backend_service = string

          header_action = optional(object({            #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_header_action
            request_headers_to_add = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_request_headers_to_add
              header_name  = string
              header_value = string
              replace      = bool
            }), null)

            request_headers_to_remove = optional(list(string), null)

            response_headers_to_add = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_response_headers_to_add
              header_name  = string
              header_value = string
              replace      = bool
            }), null)

            response_headers_to_remove = optional(list(string), null)
          }), null)

          weight = number
        }), null)

      }), null) #good

      url_redirect = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_url_redirect
        host_redirect          = optional(string, null)
        https_redirect         = optional(bool, null)
        path_redirect          = optional(string, null)
        prefix_redirect        = optional(string, null)
        redirect_response_code = optional(string, null)
        strip_query            = bool
      }), null)
    }), null) #good

    default_url_redirect = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_default_url_redirect
      host_redirect          = optional(string, null)
      https_redirect         = optional(bool, null)
      path_redirect          = optional(string, null)
      prefix_redirect        = optional(string, null)
      redirect_response_code = optional(string, null)
      strip_query            = bool
    }), null) #good

    default_route_action = optional(object({        #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_default_route_action
      weighted_backend_services = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_weighted_backend_services
        backend_service = string

        header_action = optional(object({            #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_header_action
          request_headers_to_add = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_request_headers_to_add
            header_name  = string
            header_value = string
            replace      = bool
          }), null)

          request_headers_to_remove = optional(list(string), null)

          response_headers_to_add = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_response_headers_to_add
            header_name  = string
            header_value = string
            replace      = bool
          }), null)

          response_headers_to_remove = optional(list(string), null)
        }), null)

        weight = number
      }), null)

      url_rewrite = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_url_rewrite
        host_rewrite        = optional(string, null)
        path_prefix_rewrite = optional(string, null)
      }), null)

      timeout = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_timeout
        nanos   = optional(number, null)
        seconds = number
      }), null)

      retry_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_retry_policy
        num_retries = optional(number, null)

        per_try_timeout = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_per_try_timeout
          nanos   = optional(number, null)
          seconds = number
        }), null)

        retry_conditions = optional(string, null)
      }), null)

      request_mirror_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_request_mirror_policy
        backend_service = string
      }), null)

      cors_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_cors_policy
        allow_credentials    = optional(bool, null)
        allow_headers        = optional(list(string), null)
        allow_methods        = optional(list(string), null)
        allow_origin_regexes = optional(list(string), null)
        allow_origins        = optional(list(string), null)
        disabled             = bool
        expose_headers       = optional(list(string), null)
        max_age              = optional(number, null)
      }), null)

      fault_injection_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_fault_injection_policy

        abort = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_abort
          http_status = number
          percentage  = number
        }), null)

        delay = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_delay

          fixed_delay = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_fixed_delay
            nanos   = optional(number, null)
            seconds = number
          })

          percentage = number
        }), null)
      }), null)
    }), null) #good
  })
  default = null
}

variable "urlMapTest" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_test
  type = object({
    description = optional(string, null)
    host        = string
    path        = string
    service     = string
  })
  default = null
} #good

variable "urlMapDefaultUrlRedirect" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_default_url_redirect
    host_redirect          = optional(string, null)
    https_redirect         = optional(bool, null)
    path_redirect          = optional(string, null)
    prefix_redirect        = optional(string, null)
    redirect_response_code = optional(string, null)
    strip_query            = bool
  })
  default = null
} #good

variable "urlMapDefaultRouteAction" {
  type = object({                                 #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_default_route_action
    weighted_backend_services = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_weighted_backend_services
      backend_service = string

      header_action = optional(object({            #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_header_action
        request_headers_to_add = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_request_headers_to_add
          header_name  = string
          header_value = string
          replace      = bool
        }), null)

        request_headers_to_remove = optional(list(string), null)

        response_headers_to_add = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_response_headers_to_add
          header_name  = string
          header_value = string
          replace      = bool
        }), null)

        response_headers_to_remove = optional(list(string), null)
      }), null)

      weight = number
    }), null)

    url_rewrite = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_url_rewrite
      host_rewrite        = optional(string, null)
      path_prefix_rewrite = optional(string, null)
    }), null)

    timeout = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_timeout
      nanos   = optional(number, null)
      seconds = number
    }), null)

    retry_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_retry_policy
      num_retries = optional(number, null)

      per_try_timeout = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_per_try_timeout
        nanos   = optional(number, null)
        seconds = number
      }), null)

      retry_conditions = optional(string, null)
    }), null)

    request_mirror_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_request_mirror_policy
      backend_service = string
    }), null)

    cors_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_cors_policy
      allow_credentials    = optional(bool, null)
      allow_headers        = optional(list(string), null)
      allow_methods        = optional(list(string), null)
      allow_origin_regexes = optional(list(string), null)
      allow_origins        = optional(list(string), null)
      disabled             = bool
      expose_headers       = optional(list(string), null)
      max_age              = optional(number, null)
    }), null)

    fault_injection_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_fault_injection_policy

      abort = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_abort
        http_status = number
        percentage  = number
      }), null)

      delay = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_delay

        fixed_delay = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_fixed_delay
          nanos   = optional(number, null)
          seconds = number
        })

        percentage = number
      }), null)
    }), null)
  })
  default = null
}
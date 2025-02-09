terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.12.0"
    }
  }
}

provider "google" {
  project = var.gcpProjectId
  region  = var.gcpRegion
}

resource "google_compute_url_map" "urlMap" {
  name            = "${var.resourceName}-url-map"
  default_service = var.urlMapDefaultService
  description     = var.urlMapDescription

  dynamic "header_action" {
    for_each = var.urlMapHeaderAction != null ? [var.urlMapHeaderAction] : []
    content {

      dynamic "request_headers_to_add" {
        for_each = header_action.value["request_headers_to_add"] != null ? [header_action.value["request_headers_to_add"]] : []
        content {
          header_name  = request_headers_to_add.value["header_name"]
          header_value = request_headers_to_add.value["header_value"]
          replace      = request_headers_to_add.value["replace"]
        }
      }

      request_headers_to_remove = header_action.value["request_headers_to_remove"]

      dynamic "response_headers_to_add" {
        for_each = header_action.value["response_headers_to_add"] != null ? [header_action.value["response_headers_to_add"]] : []
        content {
          header_name  = response_headers_to_add.value["header_name"]
          header_value = response_headers_to_add.value["header_value"]
          replace      = response_headers_to_add.value["replace"]
        }
      }

      response_headers_to_remove = header_action.value["response_headers_to_remove"]
    }
  } #good

  dynamic "host_rule" {
    for_each = var.urlMapHostRule != null ? [var.urlMapHostRule] : []
    content {
      description  = host_rule.value["description"]
      hosts        = host_rule.value["hosts"]
      path_matcher = host_rule.value["path_matcher"]
    }
  } #good

  dynamic "path_matcher" {
    for_each = var.urlMapPathMatcher != null ? [var.urlMapPathMatcher] : []
    content {
      default_service = path_matcher.value["default_service"]
      description     = path_matcher.value["description"]

      dynamic "header_action" {
        for_each = path_matcher.value["header_action"] != null ? [path_matcher.value["header_action"]] : []
        content {

          dynamic "request_headers_to_add" {
            for_each = header_action.value["request_headers_to_add"] != null ? [header_action.value["request_headers_to_add"]] : []
            content {
              header_name  = request_headers_to_add.value["header_name"]
              header_value = request_headers_to_add.value["header_value"]
              replace      = request_headers_to_add.value["replace"]
            }
          }

          request_headers_to_remove = header_action.value["request_headers_to_remove"]

          dynamic "response_headers_to_add" {
            for_each = header_action.value["response_headers_to_add"] != null ? [header_action.value["response_headers_to_add"]] : []
            content {
              header_name  = response_headers_to_add.value["header_name"]
              header_value = response_headers_to_add.value["header_value"]
              replace      = response_headers_to_add.value["replace"]
            }
          }

          response_headers_to_remove = header_action.value["response_headers_to_remove"]
        }
      } #good

      name = path_matcher.value["name"]

      dynamic "path_rule" {
        for_each = path_matcher.value["path_rule"] != null ? [path_matcher.value["path_rule"]] : []
        content {
          service = path_rule.value["service"]
          paths   = path_rule.value["paths"]

          dynamic "route_action" {
            for_each = path_rule.value["route_action"] != null ? [path_rule.value["route_action"]] : []
            content {

              dynamic "cors_policy" {
                for_each = route_action.value["cors_policy"] != null ? [route_action.value["cors_policy"]] : []
                content {
                  allow_credentials    = cors_policy.value["allow_credentials"]
                  allow_headers        = cors_policy.value["allow_headers"]
                  allow_methods        = cors_policy.value["allow_methods"]
                  allow_origin_regexes = cors_policy.value["allow_origin_regexes"]
                  allow_origins        = cors_policy.value["allow_origins"]
                  disabled             = cors_policy.value["disabled"]
                  expose_headers       = cors_policy.value["expose_headers"]
                  max_age              = cors_policy.value["max_age"]
                }
              } #good

              dynamic "fault_injection_policy" {
                for_each = route_action.value["fault_injection_policy"] != null ? [route_action.value["fault_injection_policy"]] : []
                content {

                  dynamic "abort" {
                    for_each = fault_injection_policy.value["abort"] != null ? [fault_injection_policy.value["abort"]] : []
                    content {
                      http_status = abort.value["http_status"]
                      percentage  = abort.value["percentage"]
                    }
                  }

                  dynamic "delay" {
                    for_each = fault_injection_policy.value["delay"] != null ? [fault_injection_policy.value["delay"]] : []
                    content {

                      dynamic "fixed_delay" {
                        for_each = delay.value["fixed_delay"]
                        content {
                          nanos   = fixed_delay.value["nanos"]
                          seconds = fixed_delay.value["seconds"]
                        }
                      }

                      percentage = delay.value["percentage"]
                    }
                  }

                }
              } #good

              dynamic "request_mirror_policy" {
                for_each = route_action.value["request_mirror_policy"] != null ? [route_action.value["request_mirror_policy"]] : []
                content {
                  backend_service = request_mirror_policy.value["backend_service"]
                }
              } #good

              dynamic "retry_policy" {
                for_each = route_action.value["retry_policy"] != null ? [route_action.value["retry_policy"]] : []
                content {
                  num_retries = retry_policy.value["num_retries"]

                  dynamic "per_try_timeout" {
                    for_each = retry_policy.value["per_try_timeout"] != null ? [retry_policy.value["per_try_timeout"]] : []
                    content {
                      nanos   = per_try_timeout.value["nanos"]
                      seconds = per_try_timeout.value["seconds"]
                    }
                  }

                  retry_conditions = retry_policy.value["retry_conditions"]
                }
              } #good

              dynamic "timeout" {
                for_each = route_action.value["timeout"] != null ? [route_action.value["timeout"]] : []
                content {
                  nanos   = timeout.value["nanos"]
                  seconds = timeout.value["seconds"]
                }
              } #good

              dynamic "url_rewrite" {
                for_each = route_action.value["url_rewrite"] != null ? [route_action.value["url_rewrite"]] : []
                content {
                  host_rewrite        = url_rewrite.value["host_rewrite"]
                  path_prefix_rewrite = url_rewrite.value["path_prefix_rewrite"]
                }
              } #good

              dynamic "weighted_backend_services" {
                for_each = route_action.value["weighted_backend_services"] != null ? [route_action.value["weighted_backend_services"]] : []
                content {
                  backend_service = weighted_backend_services.value["weighted_backend_services"]

                  dynamic "header_action" {
                    for_each = weighted_backend_services.value["weighted_backend_services"] != null ? [weighted_backend_services.value["weighted_backend_services"]] : []
                    content {

                      dynamic "request_headers_to_add" {
                        for_each = header_action.value["request_headers_to_add"] != null ? [header_action.value["request_headers_to_add"]] : []
                        content {
                          header_name  = request_headers_to_add.value["header_name"]
                          header_value = request_headers_to_add.value["header_value"]
                          replace      = request_headers_to_add.value["replace"]
                        }
                      }

                      request_headers_to_remove = header_action.value["request_headers_to_remove"]

                      dynamic "response_headers_to_add" {
                        for_each = header_action.value["response_headers_to_add"] != null ? [header_action.value["response_headers_to_add"]] : []
                        content {
                          header_name  = response_headers_to_add.value["header_name"]
                          header_value = response_headers_to_add.value["header_value"]
                          replace      = response_headers_to_add.value["replace"]
                        }
                      }

                      response_headers_to_remove = header_action.value["response_headers_to_remove"]
                    }
                  } #good

                  weight = weighted_backend_services.value["weighted_backend_services"]
                }
              } #good
            }
          }

          dynamic "url_redirect" {
            for_each = path_rule.value["url_redirect"] != null ? [path_rule.value["url_redirect"]] : []
            content {
              host_redirect          = url_redirect.value["host_redirect"]
              https_redirect         = url_redirect.value["https_redirect"]
              path_redirect          = url_redirect.value["path_redirect"]
              prefix_redirect        = url_redirect.value["prefix_redirect"]
              redirect_response_code = url_redirect.value["redirect_response_code"]
              strip_query            = url_redirect.value["strip_query"]
            }
          } #good
        }
      } #good

      dynamic "route_rules" {
        for_each = path_matcher.value["route_rules"] != null ? [path_matcher.value["route_rules"]] : []
        content {
          priority = route_rules.value["priority"]
          service  = route_rules.value["service"]

          dynamic "header_action" {
            for_each = route_rules.value["header_action"] != null ? [route_rules.value["header_action"]] : []
            content {

              dynamic "request_headers_to_add" {
                for_each = header_action.value["request_headers_to_add"] != null ? [header_action.value["request_headers_to_add"]] : []
                content {
                  header_name  = request_headers_to_add.value["header_name"]
                  header_value = request_headers_to_add.value["header_value"]
                  replace      = request_headers_to_add.value["replace"]
                }
              }

              request_headers_to_remove = header_action.value["request_headers_to_remove"]

              dynamic "response_headers_to_add" {
                for_each = header_action.value["response_headers_to_add"] != null ? [header_action.value["response_headers_to_add"]] : []
                content {
                  header_name  = response_headers_to_add.value["header_name"]
                  header_value = response_headers_to_add.value["header_value"]
                  replace      = response_headers_to_add.value["replace"]
                }
              }

              response_headers_to_remove = header_action.value["response_headers_to_remove"]
            }
          } #good

          dynamic "match_rules" {
            for_each = route_rules.value["match_rules"] != null ? [route_rules.value["match_rules"]] : []
            content {
              full_path_match = match_rules.value["full_path_match"]

              dynamic "header_matches" {
                for_each = match_rules.value["header_matches"] != null ? [match_rules.value["header_matches"]] : []
                content {
                  exact_match   = header_matches.value["exact_match"]
                  header_name   = header_matches.value["header_name"]
                  invert_match  = header_matches.value["invert_match"]
                  prefix_match  = header_matches.value["prefix_match"]
                  present_match = header_matches.value["present_match"]

                  dynamic "range_match" {
                    for_each = header_matches.value["range_match"] != null ? [header_matches.value["range_match"]] : []
                    content {
                      range_end   = range_match.value["range_end"]
                      range_start = range_match.value["range_start"]
                    }
                  }

                  regex_match  = header_matches.value["regex_match"]
                  suffix_match = header_matches.value["suffix_match"]
                }
              }

              ignore_case = match_rules.value["ignore_case"]

              dynamic "metadata_filters" {
                for_each = match_rules.value["metadata_filters"] != null ? [match_rules.value["metadata_filters"]] : []
                content {

                  dynamic "filter_labels" {
                    for_each = metadata_filters.value["filter_labels"] != null ? [metadata_filters.value["filter_labels"]] : []
                    content {
                      name  = filter_labels.value["name"]
                      value = filter_labels.value["value"]
                    }
                  }

                  filter_match_criteria = metadata_filters.value["filter_match_criteria"]
                }
              } #good

              prefix_match = match_rules.value["prefix_match"]

              dynamic "query_parameter_matches" {
                for_each = match_rules.value["query_parameter_matches"] != null ? [match_rules.value["query_parameter_matches"]] : []
                content {
                  exact_match   = query_parameter_matches.value["exact_match"]
                  name          = query_parameter_matches.value["name"]
                  present_match = query_parameter_matches.value["present_match"]
                  regex_match   = query_parameter_matches.value["regex_match"]
                }
              } #good

              regex_match         = match_rules.value["regex_match"]
              path_template_match = match_rules.value["path_template_match"]
            }
          } #good

          dynamic "route_action" {
            for_each = route_rules.value["route_action"] != null ? [route_rules.value["route_action"]] : []
            content {

              dynamic "cors_policy" {
                for_each = route_action.value["cors_policy"] != null ? [route_action.value["cors_policy"]] : []
                content {
                  allow_credentials    = cors_policy.value["allow_credentials"]
                  allow_headers        = cors_policy.value["allow_headers"]
                  allow_methods        = cors_policy.value["allow_methods"]
                  allow_origin_regexes = cors_policy.value["allow_origin_regexes"]
                  allow_origins        = cors_policy.value["allow_origins"]
                  disabled             = cors_policy.value["disabled"]
                  expose_headers       = cors_policy.value["expose_headers"]
                  max_age              = cors_policy.value["max_age"]
                }
              }

              dynamic "fault_injection_policy" {
                for_each = route_action.value["fault_injection_policy"] != null ? [route_action.value["fault_injection_policy"]] : []
                content {

                  dynamic "abort" {
                    for_each = fault_injection_policy.value["abort"] != null ? [fault_injection_policy.value["abort"]] : []
                    content {
                      http_status = abort.value["http_status"]
                      percentage  = abort.value["percentage"]
                    }
                  }

                  dynamic "delay" {
                    for_each = fault_injection_policy.value["delay"] != null ? [fault_injection_policy.value["delay"]] : []
                    content {

                      dynamic "fixed_delay" {
                        for_each = delay.value["fixed_delay"]
                        content {
                          nanos   = fixed_delay.value["nanos"]
                          seconds = fixed_delay.value["seconds"]
                        }
                      }

                      percentage = delay.value["percentage"]
                    }
                  }

                }
              }

              dynamic "request_mirror_policy" {
                for_each = route_action.value["request_mirror_policy"] != null ? [route_action.value["request_mirror_policy"]] : []
                content {
                  backend_service = request_mirror_policy.value["backend_service"]
                }
              }

              dynamic "retry_policy" {
                for_each = route_action.value["retry_policy"] != null ? [route_action.value["retry_policy"]] : []
                content {
                  num_retries = retry_policy.value["num_retries"]

                  dynamic "per_try_timeout" {
                    for_each = retry_policy.value["per_try_timeout"] != null ? [retry_policy.value["per_try_timeout"]] : []
                    content {
                      nanos   = per_try_timeout.value["nanos"]
                      seconds = per_try_timeout.value["seconds"]
                    }
                  }

                  retry_conditions = retry_policy.value["retry_conditions"]
                }
              }

              dynamic "timeout" {
                for_each = route_action.value["timeout"] != null ? [route_action.value["timeout"]] : []
                content {
                  nanos   = timeout.value["nanos"]
                  seconds = timeout.value["seconds"]
                }
              }

              dynamic "url_rewrite" {
                for_each = route_action.value["url_rewrite"] != null ? [route_action.value["url_rewrite"]] : []
                content {
                  host_rewrite        = url_rewrite.value["host_rewrite"]
                  path_prefix_rewrite = url_rewrite.value["path_prefix_rewrite"]
                }
              }

              dynamic "weighted_backend_services" {
                for_each = route_action.value["weighted_backend_services"] != null ? [route_action.value["weighted_backend_services"]] : []
                content {
                  backend_service = weighted_backend_services.value["weighted_backend_services"]

                  dynamic "header_action" {
                    for_each = weighted_backend_services.value["weighted_backend_services"] != null ? [weighted_backend_services.value["weighted_backend_services"]] : []
                    content {

                      dynamic "request_headers_to_add" {
                        for_each = header_action.value["request_headers_to_add"] != null ? [header_action.value["request_headers_to_add"]] : []
                        content {
                          header_name  = request_headers_to_add.value["header_name"]
                          header_value = request_headers_to_add.value["header_value"]
                          replace      = request_headers_to_add.value["replace"]
                        }
                      }

                      request_headers_to_remove = header_action.value["request_headers_to_remove"]

                      dynamic "response_headers_to_add" {
                        for_each = header_action.value["response_headers_to_add"] != null ? [header_action.value["response_headers_to_add"]] : []
                        content {
                          header_name  = response_headers_to_add.value["header_name"]
                          header_value = response_headers_to_add.value["header_value"]
                          replace      = response_headers_to_add.value["replace"]
                        }
                      }

                      response_headers_to_remove = header_action.value["response_headers_to_remove"]
                    }
                  }

                  weight = weighted_backend_services.value["weighted_backend_services"]
                }
              }
            }
          } #good

          dynamic "url_redirect" {
            for_each = route_rules.value["url_redirect"] != null ? [route_rules.value["url_redirect"]] : []
            content {
              host_redirect          = url_redirect.value["host_redirect"]
              https_redirect         = url_redirect.value["https_redirect"]
              path_redirect          = url_redirect.value["path_redirect"]
              prefix_redirect        = url_redirect.value["prefix_redirect"]
              redirect_response_code = url_redirect.value["redirect_response_code"]
              strip_query            = url_redirect.value["strip_query"]
            }
          } #good
        }
      } #good

      dynamic "default_url_redirect" {
        for_each = path_matcher.value["default_url_redirect"] != null ? [path_matcher.value["default_url_redirect"]] : []
        content {
          host_redirect          = default_url_redirect.value["host_redirect"]
          https_redirect         = default_url_redirect.value["https_redirect"]
          path_redirect          = default_url_redirect.value["path_redirect"]
          prefix_redirect        = default_url_redirect.value["prefix_redirect"]
          redirect_response_code = default_url_redirect.value["redirect_response_code"]
          strip_query            = default_url_redirect.value["strip_query"]
        }
      } #good

      dynamic "default_route_action" {
        for_each = path_matcher.value["default_route_action"] != null ? [path_matcher.value["default_route_action"]] : []
        content {

          dynamic "weighted_backend_services" {
            for_each = default_route_action.value["weighted_backend_services"] != null ? [default_route_action.value["weighted_backend_services"]] : []
            content {
              backend_service = weighted_backend_services.value["weighted_backend_services"]

              dynamic "header_action" {
                for_each = weighted_backend_services.value["weighted_backend_services"] != null ? [weighted_backend_services.value["weighted_backend_services"]] : []
                content {

                  dynamic "request_headers_to_add" {
                    for_each = header_action.value["request_headers_to_add"] != null ? [header_action.value["request_headers_to_add"]] : []
                    content {
                      header_name  = request_headers_to_add.value["header_name"]
                      header_value = request_headers_to_add.value["header_value"]
                      replace      = request_headers_to_add.value["replace"]
                    }
                  }

                  request_headers_to_remove = header_action.value["request_headers_to_remove"]

                  dynamic "response_headers_to_add" {
                    for_each = header_action.value["response_headers_to_add"] != null ? [header_action.value["response_headers_to_add"]] : []
                    content {
                      header_name  = response_headers_to_add.value["header_name"]
                      header_value = response_headers_to_add.value["header_value"]
                      replace      = response_headers_to_add.value["replace"]
                    }
                  }

                  response_headers_to_remove = header_action.value["response_headers_to_remove"]
                }
              }

              weight = weighted_backend_services.value["weighted_backend_services"]
            }
          }

          dynamic "url_rewrite" {
            for_each = default_route_action.value["url_rewrite"] != null ? [default_route_action.value["url_rewrite"]] : []
            content {
              host_rewrite        = url_rewrite.value["host_rewrite"]
              path_prefix_rewrite = url_rewrite.value["path_prefix_rewrite"]
            }
          }

          dynamic "timeout" {
            for_each = default_route_action.value["timeout"] != null ? [default_route_action.value["timeout"]] : []
            content {
              nanos   = timeout.value["nanos"]
              seconds = timeout.value["seconds"]
            }
          }

          dynamic "retry_policy" {
            for_each = default_route_action.value["retry_policy"] != null ? [default_route_action.value["retry_policy"]] : []
            content {
              num_retries = retry_policy.value["num_retries"]

              dynamic "per_try_timeout" {
                for_each = retry_policy.value["per_try_timeout"] != null ? [retry_policy.value["per_try_timeout"]] : []
                content {
                  nanos   = per_try_timeout.value["nanos"]
                  seconds = per_try_timeout.value["seconds"]
                }
              }

              retry_conditions = retry_policy.value["retry_conditions"]
            }
          }

          dynamic "request_mirror_policy" {
            for_each = default_route_action.value["request_mirror_policy"] != null ? [default_route_action.value["request_mirror_policy"]] : []
            content {
              backend_service = request_mirror_policy.value["backend_service"]
            }
          }

          dynamic "cors_policy" {
            for_each = default_route_action.value["cors_policy"] != null ? [default_route_action.value["cors_policy"]] : []
            content {
              allow_credentials    = cors_policy.value["allow_credentials"]
              allow_headers        = cors_policy.value["allow_headers"]
              allow_methods        = cors_policy.value["allow_methods"]
              allow_origin_regexes = cors_policy.value["allow_origin_regexes"]
              allow_origins        = cors_policy.value["allow_origins"]
              disabled             = cors_policy.value["disabled"]
              expose_headers       = cors_policy.value["expose_headers"]
              max_age              = cors_policy.value["max_age"]
            }
          }

          dynamic "fault_injection_policy" {
            for_each = default_route_action.value["fault_injection_policy"] != null ? [default_route_action.value["fault_injection_policy"]] : []
            content {

              dynamic "abort" {
                for_each = fault_injection_policy.value["abort"] != null ? [fault_injection_policy.value["abort"]] : []
                content {
                  http_status = abort.value["http_status"]
                  percentage  = abort.value["percentage"]
                }
              }

              dynamic "delay" {
                for_each = fault_injection_policy.value["delay"] != null ? [fault_injection_policy.value["delay"]] : []
                content {

                  dynamic "fixed_delay" {
                    for_each = delay.value["fixed_delay"]
                    content {
                      nanos   = fixed_delay.value["nanos"]
                      seconds = fixed_delay.value["seconds"]
                    }
                  }

                  percentage = delay.value["percentage"]
                }
              }

            }
          }
        }
      } #good
    }
  }

  dynamic "test" {
    for_each = var.urlMapTest != null ? [var.urlMapTest] : []
    content {
      description = test.value["description"]
      host        = test.value["host"]
      path        = test.value["path"]
      service     = test.value["service"]
    }
  } #good

  dynamic "default_url_redirect" {
    for_each = var.urlMapDefaultUrlRedirect != null ? [var.urlMapDefaultUrlRedirect] : []
    content {
      host_redirect          = default_url_redirect.value["host_redirect"]
      https_redirect         = default_url_redirect.value["https_redirect"]
      path_redirect          = default_url_redirect.value["path_redirect"]
      prefix_redirect        = default_url_redirect.value["prefix_redirect"]
      redirect_response_code = default_url_redirect.value["redirect_response_code"]
      strip_query            = default_url_redirect.value["strip_query"]
    }
  } #good

  dynamic "default_route_action" {
    for_each = var.urlMapDefaultRouteAction != null ? [var.urlMapDefaultRouteAction] : []
    content {

      dynamic "weighted_backend_services" {
        for_each = default_route_action.value["weighted_backend_services"] != null ? [default_route_action.value["weighted_backend_services"]] : []
        content {
          backend_service = weighted_backend_services.value["weighted_backend_services"]

          dynamic "header_action" {
            for_each = weighted_backend_services.value["weighted_backend_services"] != null ? [weighted_backend_services.value["weighted_backend_services"]] : []
            content {

              dynamic "request_headers_to_add" {
                for_each = header_action.value["request_headers_to_add"] != null ? [header_action.value["request_headers_to_add"]] : []
                content {
                  header_name  = request_headers_to_add.value["header_name"]
                  header_value = request_headers_to_add.value["header_value"]
                  replace      = request_headers_to_add.value["replace"]
                }
              }

              request_headers_to_remove = header_action.value["request_headers_to_remove"]

              dynamic "response_headers_to_add" {
                for_each = header_action.value["response_headers_to_add"] != null ? [header_action.value["response_headers_to_add"]] : []
                content {
                  header_name  = response_headers_to_add.value["header_name"]
                  header_value = response_headers_to_add.value["header_value"]
                  replace      = response_headers_to_add.value["replace"]
                }
              }

              response_headers_to_remove = header_action.value["response_headers_to_remove"]
            }
          }

          weight = weighted_backend_services.value["weighted_backend_services"]
        }
      }

      dynamic "url_rewrite" {
        for_each = default_route_action.value["url_rewrite"] != null ? [default_route_action.value["url_rewrite"]] : []
        content {
          host_rewrite        = url_rewrite.value["host_rewrite"]
          path_prefix_rewrite = url_rewrite.value["path_prefix_rewrite"]
        }
      }

      dynamic "timeout" {
        for_each = default_route_action.value["timeout"] != null ? [default_route_action.value["timeout"]] : []
        content {
          nanos   = timeout.value["nanos"]
          seconds = timeout.value["seconds"]
        }
      }

      dynamic "retry_policy" {
        for_each = default_route_action.value["retry_policy"] != null ? [default_route_action.value["retry_policy"]] : []
        content {
          num_retries = retry_policy.value["num_retries"]

          dynamic "per_try_timeout" {
            for_each = retry_policy.value["per_try_timeout"] != null ? [retry_policy.value["per_try_timeout"]] : []
            content {
              nanos   = per_try_timeout.value["nanos"]
              seconds = per_try_timeout.value["seconds"]
            }
          }

          retry_conditions = retry_policy.value["retry_conditions"]
        }
      }

      dynamic "request_mirror_policy" {
        for_each = default_route_action.value["request_mirror_policy"] != null ? [default_route_action.value["request_mirror_policy"]] : []
        content {
          backend_service = request_mirror_policy.value["backend_service"]
        }
      }

      dynamic "cors_policy" {
        for_each = default_route_action.value["cors_policy"] != null ? [default_route_action.value["cors_policy"]] : []
        content {
          allow_credentials    = cors_policy.value["allow_credentials"]
          allow_headers        = cors_policy.value["allow_headers"]
          allow_methods        = cors_policy.value["allow_methods"]
          allow_origin_regexes = cors_policy.value["allow_origin_regexes"]
          allow_origins        = cors_policy.value["allow_origins"]
          disabled             = cors_policy.value["disabled"]
          expose_headers       = cors_policy.value["expose_headers"]
          max_age              = cors_policy.value["max_age"]
        }
      }

      dynamic "fault_injection_policy" {
        for_each = default_route_action.value["fault_injection_policy"] != null ? [default_route_action.value["fault_injection_policy"]] : []
        content {

          dynamic "abort" {
            for_each = fault_injection_policy.value["abort"] != null ? [fault_injection_policy.value["abort"]] : []
            content {
              http_status = abort.value["http_status"]
              percentage  = abort.value["percentage"]
            }
          }

          dynamic "delay" {
            for_each = fault_injection_policy.value["delay"] != null ? [fault_injection_policy.value["delay"]] : []
            content {

              dynamic "fixed_delay" {
                for_each = delay.value["fixed_delay"]
                content {
                  nanos   = fixed_delay.value["nanos"]
                  seconds = fixed_delay.value["seconds"]
                }
              }

              percentage = delay.value["percentage"]
            }
          }

        }
      } #good
    }
  }

  project = var.gcpProjectId
}
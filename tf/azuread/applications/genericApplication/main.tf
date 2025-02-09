terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "3.0.2"
    }
  }
}

provider "azuread" {
  tenant_id = var.azureAdTenantId
}

resource "random_uuid" "uuid" {}


resource "azuread_application" "azureAdApplication" {
  device_only_auth_enabled       = var.azureAdApplicationDeviceOnlyAuthEnabled
  display_name                   = "${var.resourceName}-application"
  fallback_public_client_enabled = var.azureAdApplicationFallbackPublicClientEnabled

  dynamic "feature_tags" {
    for_each = var.azureAdApplicationFeaturetags != null ? [var.azureAdApplicationFeaturetags] : []
    content {
      custom_single_sign_on = feature_tags.value["custom_single_sign_on"]
      enterprise            = feature_tags.value["enterprise"]
      gallery               = feature_tags.value["gallery"]
      hide                  = feature_tags.value["hide"]
    }
  }

  group_membership_claims       = var.azureAdApplicationGroupMembershipClaims
  identifier_uris               = var.azureAdApplicationIdentifierUris
  logo_image                    = var.azureAdApplicationLogoImage
  marketing_url                 = var.azureAdApplicationMarketingUrl
  oauth2_post_response_required = var.azureAdApplicationOauth2PostResponseRequried
  owners                        = var.azureAdApplicationOwners
  prevent_duplicate_names       = var.azureAdApplicationPreventDuplicateNames
  privacy_statement_url         = var.azureAdApplicationPrivacyStatementUrl

  dynamic "public_client" {
    for_each = var.azureAdApplicationPublicClient != null ? [var.azureAdApplicationPublicClient] : []
    content {
      redirect_uris = public_client.value["redirect_uris"]
    }
  }
  sign_in_audience = var.azureAdApplicationSignInAudience

  dynamic "single_page_application" {
    for_each = var.azureAdApplicationSinglePageApplication != null ? [var.azureAdApplicationSinglePageApplication] : []
    content {
      redirect_uris = single_page_application.value["redirect_uris"]
    }
  }

  support_url          = var.azureAdApplicationSupportUrl
  tags                 = var.azureAdApplicationTags
  template_id          = var.azureAdApplicationTemplateId
  terms_of_service_url = var.azureAdApplicationTermsOfServiceUrl

  dynamic "web" {
    for_each = var.azureAdApplicationWeb != null ? [var.azureAdApplicationWeb] : []
    content {
      homepage_url = web.value["homepage_url"]

      dynamic "implicit_grant" {
        for_each = web.value.implicit_grant != null ? [web.value.implicit_grant] : []
        content {
          access_token_issuance_enabled = implicit_grant.value["access_token_issuance_enabled"]
          id_token_issuance_enabled     = implicit_grant.value["id_token_issuance_enabled"]
        }
      }

      logout_url    = web.value["logout_url"]
      redirect_uris = web.value["redirect_uris"]
    }
  }

}
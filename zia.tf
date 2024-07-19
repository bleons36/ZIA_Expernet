terraform {
    required_providers {
        zia = {
            version = "2.7.0"
            source = "zscaler/zia"
        }
    }
}

provider "zia" {
  username      = "admin@lab.expernet.co.kr"
  password      = "Zia@1234"
  api_key       = "BoHpT3cZwqsd"
  zia_cloud     = "zscaler"
}

resource "zia_url_categories" "terraform test" {
  super_category      = "USER_DEFINED"
  configured_name     = "MCAS Unsanctioned Apps"
  description         = "MCAS Unsanctioned Apps"
  keywords            = ["microsoft"]
  custom_category     = true
  type                = "URL_CATEGORY"
  urls = [
    ".coupons.com",
    ".resource.alaskaair.net",
    ".techrepublic.com",
    ".dailymotion.com",
    ".osiriscomm.com",
    ".uefa.com",
    ".Logz.io",
    ".alexa.com",
    ".baidu.com",
    ".cnn.com",
    ".level3.com",
  ]
}
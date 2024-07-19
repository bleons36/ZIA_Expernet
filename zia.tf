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
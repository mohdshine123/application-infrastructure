region       = "eu-west-1"
cluster_name = "unagi-dev"

oauth_gh_org  = "sede-res"
oauth_gh_team = "unagi-dev"

zone_internal   = "unagi.dev.ep.shell.com"
oidc_issuer_url = "https://sso-dev.shell.com"

env                  = "dev"
ecr_tag_immutability = "MUTABLE"

alerts_slack_channel = "unagi-dev-alerts"

eks_roles = [
  {
    rolearn  = "arn:aws:iam::153474549479:role/idso-configurator"
    username = "idso-configurator"
    groups   = ["system:masters"]
  },
  {
    rolearn  = "arn:aws:iam::153474549479:role/AWSReservedSSO_business_OperatorExternal_0ee545b26d11e463"
    username = "operator_external"
    groups   = ["system:masters"]
  },
  {
    rolearn  = "arn:aws:iam::153474549479:role/AWSReservedSSO_business_ContributorExternal_8a1577d82d31ff3f"
    username = "contributor_external"
    groups   = ["system:masters"]
  },
]

tags = {
  Organization   = "Energy Platform"
  business_unit  = "BU:SNEUS"
  created_by     = "terraform"
  owner          = "_"
  department     = "_"
  scrum_team     = "IDSO"
  application_id = "337729"
  cost_center    = "290047"
  version        = "v.1.0.0"
  data_owner     = "Unagi"
  customer       = "Unagi"
  project        = "Unagi"
  github_repo    = "https://github.com/sede-res/unagi-infrastructure"

}

ec2_tags = {
  "Patch Group" = "Default"
}

eks_node_group_min_size     = 2
eks_node_group_desired_size = 6
eks_node_group_max_size     = 10
eks_version                 = "1.27"
eks_node_instance_type      = "t3.xlarge"

name = "unagi"

ecr_repositories = [
  "unagi",
  "unagi-max-power",
  "unagi-transfer-power",
  "unagi-power-flow",
  "unagi-cable-rating",
  "unagi-cable-genre",
  "unagi-network-loss",
  "unagi-react-web",
  "unagi-cable-loss-timeseries",
  "unagi-iac-loss",
  "unagi-cable-capex-opex",
  "unagi-power-flow",
  "unagi-preliminary-study",
  "unagi-iac-loss-study",
  "unagi-cable-capex-opex-study",
  "unagi-cable-temperature-study",
  "unagi-cable-rating-study",
  "unagi-cable-loss-study",
  "unagi-transfer-capacity-study",
  "unagi-kafka-client",
  "unagi-consumer",
  "unagi-producer",
  "unagi-results-submitter"
]

cluster_access = {
  unagi                   = "github:sede-res/unagi-app"
  transfer-power          = "github:sede-res/unagi-transfer-power"
  cable-rating            = "github:sede-res/unagi-cable-rating"
  cable-genre             = "github:sede-res/unagi-cable-genre"
  unagi-network-loss      = "github:sede-res/unagi-network-loss"
  react-web               = "github:sede-res/unagi-react-web"
  cable-loss-timeseries   = "github:sede-res/unagi-cable-loss-timeseries"
  iac-loss                = "github:sede-res/unagi-iac-loss"
  cable-capex-opex        = "github:sede-res/unagi-cable-capex-opex"
  unagi-db                = "github:sede-res/unagi-db"
  power-flow              = "github:sede-res/unagi-power-flow"
  preliminary-study       = "github:sede-res/unagi-preliminary-study"
  iac-loss-study          = "github:sede-res/unagi-iac-loss-study"
  cable-capex-opex-study  = "github:sede-res/unagi-cable-capex-opex-study"
  cable-temperature-study = "github:sede-res/unagi-cable-temperature-study"
  cable-rating-study      = "github:sede-res/unagi-cable-rating-study"
  cable-loss-study        = "github:sede-res/unagi-cable-loss-study"
  transfer-capacity-study = "github:sede-res/unagi-transfer-capacity-study"
  kafka-client            = "github:sede-res/unagi-kafka-client"
  producer                = "github:sede-res/unagi-producer"
  consumer                = "github:sede-res/unagi-consumer"
  results-submitter       = "github:sede-res/unagi-results-submitter"
}

prometheus_blackbox_exporter_targets = [
  {
    module = "http_3xx"
    targets = [
      "https://app.unagi.dev.ep.shell.com",
      "http://unagi.unagi.svc.cluster.local:8050"
    ]
  }
]

kafka_hostname_enabled = true
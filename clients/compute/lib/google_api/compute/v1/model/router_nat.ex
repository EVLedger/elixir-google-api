# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Compute.V1.Model.RouterNat do
  @moduledoc """
  Represents a Nat resource. It enables the VMs within the specified subnetworks to access Internet without external IP addresses. It specifies a list of subnetworks (and the ranges within) that want to use NAT. Customers can also provide the external IPs that would be used for NAT. GCP would auto-allocate ephemeral IPs if no external IPs are provided.

  ## Attributes

  *   `icmpIdleTimeoutSec` (*type:* `integer()`, *default:* `nil`) - Timeout (in seconds) for ICMP connections. Defaults to 30s if not set.
  *   `logConfig` (*type:* `GoogleApi.Compute.V1.Model.RouterNatLogConfig.t`, *default:* `nil`) - Configure logging on this NAT.
  *   `minPortsPerVm` (*type:* `integer()`, *default:* `nil`) - Minimum number of ports allocated to a VM from this NAT config. If not set, a default number of ports is allocated to a VM. This is rounded up to the nearest power of 2. For example, if the value of this field is 50, at least 64 ports are allocated to a VM.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Unique name of this Nat service. The name must be 1-63 characters long and comply with RFC1035.
  *   `natIpAllocateOption` (*type:* `String.t`, *default:* `nil`) - Specify the NatIpAllocateOption, which can take one of the following values: 
      - MANUAL_ONLY: Uses only Nat IP addresses provided by customers. When there are not enough specified Nat IPs, the Nat service fails for new VMs. 
      - AUTO_ONLY: Nat IPs are allocated by Google Cloud Platform; customers can't specify any Nat IPs. When choosing AUTO_ONLY, then nat_ip should be empty.
  *   `natIps` (*type:* `list(String.t)`, *default:* `nil`) - A list of URLs of the IP resources used for this Nat service. These IP addresses must be valid static external IP addresses assigned to the project.
  *   `sourceSubnetworkIpRangesToNat` (*type:* `String.t`, *default:* `nil`) - Specify the Nat option, which can take one of the following values: 
      - ALL_SUBNETWORKS_ALL_IP_RANGES: All of the IP ranges in every Subnetwork are allowed to Nat. 
      - ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES: All of the primary IP ranges in every Subnetwork are allowed to Nat. 
      - LIST_OF_SUBNETWORKS: A list of Subnetworks are allowed to Nat (specified in the field subnetwork below) The default is SUBNETWORK_IP_RANGE_TO_NAT_OPTION_UNSPECIFIED. Note that if this field contains ALL_SUBNETWORKS_ALL_IP_RANGES or ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, then there should not be any other Router.Nat section in any Router for this network in this region.
  *   `subnetworks` (*type:* `list(GoogleApi.Compute.V1.Model.RouterNatSubnetworkToNat.t)`, *default:* `nil`) - A list of Subnetwork resources whose traffic should be translated by NAT Gateway. It is used only when LIST_OF_SUBNETWORKS is selected for the SubnetworkIpRangeToNatOption above.
  *   `tcpEstablishedIdleTimeoutSec` (*type:* `integer()`, *default:* `nil`) - Timeout (in seconds) for TCP established connections. Defaults to 1200s if not set.
  *   `tcpTransitoryIdleTimeoutSec` (*type:* `integer()`, *default:* `nil`) - Timeout (in seconds) for TCP transitory connections. Defaults to 30s if not set.
  *   `udpIdleTimeoutSec` (*type:* `integer()`, *default:* `nil`) - Timeout (in seconds) for UDP connections. Defaults to 30s if not set.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :icmpIdleTimeoutSec => integer(),
          :logConfig => GoogleApi.Compute.V1.Model.RouterNatLogConfig.t(),
          :minPortsPerVm => integer(),
          :name => String.t(),
          :natIpAllocateOption => String.t(),
          :natIps => list(String.t()),
          :sourceSubnetworkIpRangesToNat => String.t(),
          :subnetworks => list(GoogleApi.Compute.V1.Model.RouterNatSubnetworkToNat.t()),
          :tcpEstablishedIdleTimeoutSec => integer(),
          :tcpTransitoryIdleTimeoutSec => integer(),
          :udpIdleTimeoutSec => integer()
        }

  field(:icmpIdleTimeoutSec)
  field(:logConfig, as: GoogleApi.Compute.V1.Model.RouterNatLogConfig)
  field(:minPortsPerVm)
  field(:name)
  field(:natIpAllocateOption)
  field(:natIps, type: :list)
  field(:sourceSubnetworkIpRangesToNat)
  field(:subnetworks, as: GoogleApi.Compute.V1.Model.RouterNatSubnetworkToNat, type: :list)
  field(:tcpEstablishedIdleTimeoutSec)
  field(:tcpTransitoryIdleTimeoutSec)
  field(:udpIdleTimeoutSec)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.RouterNat do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.RouterNat.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.RouterNat do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

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

defmodule GoogleApi.Compute.V1.Model.VmEndpointNatMappingsInterfaceNatMappings do
  @moduledoc """
  Contain information of Nat mapping for an interface of this endpoint.

  ## Attributes

  *   `natIpPortRanges` (*type:* `list(String.t)`, *default:* `nil`) - A list of all IP:port-range mappings assigned to this interface. These ranges are inclusive, that is, both the first and the last ports can be used for NAT. Example: ["2.2.2.2:12345-12355", "1.1.1.1:2234-2234"].
  *   `numTotalNatPorts` (*type:* `integer()`, *default:* `nil`) - Total number of ports across all NAT IPs allocated to this interface. It equals to the aggregated port number in the field nat_ip_port_ranges.
  *   `sourceAliasIpRange` (*type:* `String.t`, *default:* `nil`) - Alias IP range for this interface endpoint. It will be a private (RFC 1918) IP range. Examples: "10.33.4.55/32", or "192.168.5.0/24".
  *   `sourceVirtualIp` (*type:* `String.t`, *default:* `nil`) - Primary IP of the VM for this NIC.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :natIpPortRanges => list(String.t()),
          :numTotalNatPorts => integer(),
          :sourceAliasIpRange => String.t(),
          :sourceVirtualIp => String.t()
        }

  field(:natIpPortRanges, type: :list)
  field(:numTotalNatPorts)
  field(:sourceAliasIpRange)
  field(:sourceVirtualIp)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.VmEndpointNatMappingsInterfaceNatMappings do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.VmEndpointNatMappingsInterfaceNatMappings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.VmEndpointNatMappingsInterfaceNatMappings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

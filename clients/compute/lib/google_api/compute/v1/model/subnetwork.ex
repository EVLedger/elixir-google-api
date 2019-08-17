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

defmodule GoogleApi.Compute.V1.Model.Subnetwork do
  @moduledoc """
  Represents a Subnetwork resource.

  A subnetwork (also known as a subnet) is a logical partition of a Virtual Private Cloud network with one primary IP range and zero or more secondary IP ranges. For more information, read  Virtual Private Cloud (VPC) Network. (== resource_for beta.subnetworks ==) (== resource_for v1.subnetworks ==)

  ## Attributes

  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource. This field can be set only at resource creation time.
  *   `enableFlowLogs` (*type:* `boolean()`, *default:* `nil`) - Whether to enable flow logging for this subnetwork. If this field is not explicitly set, it will not appear in get listings. If not set the default behavior is to disable flow logging.
  *   `fingerprint` (*type:* `String.t`, *default:* `nil`) - Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a Subnetwork. An up-to-date fingerprint must be provided in order to update the Subnetwork, otherwise the request will fail with error 412 conditionNotMet.

      To see the latest fingerprint, make a get() request to retrieve a Subnetwork.
  *   `gatewayAddress` (*type:* `String.t`, *default:* `nil`) - [Output Only] The gateway address for default routes to reach destination addresses outside this subnetwork.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `ipCidrRange` (*type:* `String.t`, *default:* `nil`) - The range of internal addresses that are owned by this subnetwork. Provide this property when you create the subnetwork. For example, 10.0.0.0/8 or 192.168.0.0/16. Ranges must be unique and non-overlapping within a network. Only IPv4 is supported. This field can be set only at resource creation time.
  *   `kind` (*type:* `String.t`, *default:* `compute#subnetwork`) - [Output Only] Type of the resource. Always compute#subnetwork for Subnetwork resources.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the resource, provided by the client when initially creating the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `network` (*type:* `String.t`, *default:* `nil`) - The URL of the network to which this subnetwork belongs, provided by the client when initially creating the subnetwork. Only networks that are in the distributed mode can have subnetworks. This field can be set only at resource creation time.
  *   `privateIpGoogleAccess` (*type:* `boolean()`, *default:* `nil`) - Whether the VMs in this subnet can access Google services without assigned external IP addresses. This field can be both set at resource creation time and updated using setPrivateIpGoogleAccess.
  *   `region` (*type:* `String.t`, *default:* `nil`) - URL of the region where the Subnetwork resides. This field can be set only at resource creation time.
  *   `secondaryIpRanges` (*type:* `list(GoogleApi.Compute.V1.Model.SubnetworkSecondaryRange.t)`, *default:* `nil`) - An array of configurations for secondary IP ranges for VM instances contained in this subnetwork. The primary IP of such VM must belong to the primary ipCidrRange of the subnetwork. The alias IPs may belong to either primary or secondary ranges. This field can be updated with a patch request.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTimestamp => String.t(),
          :description => String.t(),
          :enableFlowLogs => boolean(),
          :fingerprint => String.t(),
          :gatewayAddress => String.t(),
          :id => String.t(),
          :ipCidrRange => String.t(),
          :kind => String.t(),
          :name => String.t(),
          :network => String.t(),
          :privateIpGoogleAccess => boolean(),
          :region => String.t(),
          :secondaryIpRanges => list(GoogleApi.Compute.V1.Model.SubnetworkSecondaryRange.t()),
          :selfLink => String.t()
        }

  field(:creationTimestamp)
  field(:description)
  field(:enableFlowLogs)
  field(:fingerprint)
  field(:gatewayAddress)
  field(:id)
  field(:ipCidrRange)
  field(:kind)
  field(:name)
  field(:network)
  field(:privateIpGoogleAccess)
  field(:region)
  field(:secondaryIpRanges, as: GoogleApi.Compute.V1.Model.SubnetworkSecondaryRange, type: :list)
  field(:selfLink)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Subnetwork do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.Subnetwork.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.Subnetwork do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

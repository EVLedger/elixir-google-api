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

defmodule GoogleApi.Compute.V1.Model.TargetHttpsProxy do
  @moduledoc """
  Represents a Target HTTPS Proxy resource.

  A target HTTPS proxy is a component of certain types of load balancers. Global forwarding rules reference a target HTTPS proxy, and the target proxy then references a URL map. For more information, read Using Target Proxies. (== resource_for beta.targetHttpsProxies ==) (== resource_for v1.targetHttpsProxies ==)

  ## Attributes

  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `kind` (*type:* `String.t`, *default:* `compute#targetHttpsProxy`) - [Output Only] Type of resource. Always compute#targetHttpsProxy for target HTTPS proxies.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `quicOverride` (*type:* `String.t`, *default:* `nil`) - Specifies the QUIC override policy for this TargetHttpsProxy resource. This determines whether the load balancer will attempt to negotiate QUIC with clients or not. Can specify one of NONE, ENABLE, or DISABLE. Specify ENABLE to always enable QUIC, Enables QUIC when set to ENABLE, and disables QUIC when set to DISABLE. If NONE is specified, uses the QUIC policy with no user overrides, which is equivalent to DISABLE. Not specifying this field is equivalent to specifying NONE.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `sslCertificates` (*type:* `list(String.t)`, *default:* `nil`) - URLs to SslCertificate resources that are used to authenticate connections between users and the load balancer. At least one SSL certificate must be specified. Currently, you may specify up to 15 SSL certificates.
  *   `sslPolicy` (*type:* `String.t`, *default:* `nil`) - URL of SslPolicy resource that will be associated with the TargetHttpsProxy resource. If not set, the TargetHttpsProxy resource will not have any SSL policy configured.
  *   `urlMap` (*type:* `String.t`, *default:* `nil`) - A fully-qualified or valid partial URL to the UrlMap resource that defines the mapping from URL to the BackendService. For example, the following are all valid URLs for specifying a URL map:  
      - https://www.googleapis.compute/v1/projects/project/global/urlMaps/url-map 
      - projects/project/global/urlMaps/url-map 
      - global/urlMaps/url-map
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTimestamp => String.t(),
          :description => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :name => String.t(),
          :quicOverride => String.t(),
          :selfLink => String.t(),
          :sslCertificates => list(String.t()),
          :sslPolicy => String.t(),
          :urlMap => String.t()
        }

  field(:creationTimestamp)
  field(:description)
  field(:id)
  field(:kind)
  field(:name)
  field(:quicOverride)
  field(:selfLink)
  field(:sslCertificates, type: :list)
  field(:sslPolicy)
  field(:urlMap)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.TargetHttpsProxy do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.TargetHttpsProxy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.TargetHttpsProxy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

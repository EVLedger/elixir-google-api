# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Compute.V1.Model.BackendBucket do
  @moduledoc """
  Represents a Cloud Storage Bucket resource.

  This Cloud Storage bucket resource is referenced by a URL map of a load balancer. For more information, read Backend Buckets.

  ## Attributes

  *   `bucketName` (*type:* `String.t`, *default:* `nil`) - Cloud Storage bucket name.
  *   `cdnPolicy` (*type:* `GoogleApi.Compute.V1.Model.BackendBucketCdnPolicy.t`, *default:* `nil`) - Cloud CDN configuration for this BackendBucket.
  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional textual description of the resource; provided by the client when the resource is created.
  *   `enableCdn` (*type:* `boolean()`, *default:* `nil`) - If true, enable Cloud CDN for this BackendBucket.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] Unique identifier for the resource; defined by the server.
  *   `kind` (*type:* `String.t`, *default:* `compute#backendBucket`) - Type of the resource.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bucketName => String.t(),
          :cdnPolicy => GoogleApi.Compute.V1.Model.BackendBucketCdnPolicy.t(),
          :creationTimestamp => String.t(),
          :description => String.t(),
          :enableCdn => boolean(),
          :id => String.t(),
          :kind => String.t(),
          :name => String.t(),
          :selfLink => String.t()
        }

  field(:bucketName)
  field(:cdnPolicy, as: GoogleApi.Compute.V1.Model.BackendBucketCdnPolicy)
  field(:creationTimestamp)
  field(:description)
  field(:enableCdn)
  field(:id)
  field(:kind)
  field(:name)
  field(:selfLink)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.BackendBucket do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.BackendBucket.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.BackendBucket do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

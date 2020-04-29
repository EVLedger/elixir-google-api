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

defmodule GoogleApi.Container.V1.Model.CreateClusterRequest do
  @moduledoc """
  CreateClusterRequest creates a cluster.

  ## Attributes

  *   `cluster` (*type:* `GoogleApi.Container.V1.Model.Cluster.t`, *default:* `nil`) - Required. A [cluster
      resource](https://cloud.google.com/container-engine/reference/rest/v1/projects.zones.clusters)
  *   `parent` (*type:* `String.t`, *default:* `nil`) - The parent (project and location) where the cluster will be created.
      Specified in the format 'projects/*/locations/*'.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Deprecated. The Google Developers Console [project ID or project
      number](https://support.google.com/cloud/answer/6158840).
      This field has been deprecated and replaced by the parent field.
  *   `zone` (*type:* `String.t`, *default:* `nil`) - Deprecated. The name of the Google Compute Engine
      [zone](https://cloud.google.com/compute/docs/zones#available) in which the
      cluster resides. This field has been deprecated and replaced by the parent
      field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cluster => GoogleApi.Container.V1.Model.Cluster.t(),
          :parent => String.t(),
          :projectId => String.t(),
          :zone => String.t()
        }

  field(:cluster, as: GoogleApi.Container.V1.Model.Cluster)
  field(:parent)
  field(:projectId)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.CreateClusterRequest do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.CreateClusterRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.CreateClusterRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

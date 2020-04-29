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

defmodule GoogleApi.Container.V1.Model.RollbackNodePoolUpgradeRequest do
  @moduledoc """
  RollbackNodePoolUpgradeRequest rollbacks the previously Aborted or Failed
  NodePool upgrade. This will be an no-op if the last upgrade successfully
  completed.

  ## Attributes

  *   `clusterId` (*type:* `String.t`, *default:* `nil`) - Deprecated. The name of the cluster to rollback.
      This field has been deprecated and replaced by the name field.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name (project, location, cluster, node pool id) of the node poll to
      rollback upgrade.
      Specified in the format 'projects/*/locations/*/clusters/*/nodePools/*'.
  *   `nodePoolId` (*type:* `String.t`, *default:* `nil`) - Deprecated. The name of the node pool to rollback.
      This field has been deprecated and replaced by the name field.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Deprecated. The Google Developers Console [project ID or project
      number](https://support.google.com/cloud/answer/6158840).
      This field has been deprecated and replaced by the name field.
  *   `zone` (*type:* `String.t`, *default:* `nil`) - Deprecated. The name of the Google Compute Engine
      [zone](https://cloud.google.com/compute/docs/zones#available) in which the
      cluster resides. This field has been deprecated and replaced by the name
      field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clusterId => String.t(),
          :name => String.t(),
          :nodePoolId => String.t(),
          :projectId => String.t(),
          :zone => String.t()
        }

  field(:clusterId)
  field(:name)
  field(:nodePoolId)
  field(:projectId)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.RollbackNodePoolUpgradeRequest do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.RollbackNodePoolUpgradeRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.RollbackNodePoolUpgradeRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

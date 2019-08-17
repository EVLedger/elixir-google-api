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

defmodule GoogleApi.Compute.V1.Model.InstanceGroupManagersSetTargetPoolsRequest do
  @moduledoc """


  ## Attributes

  *   `fingerprint` (*type:* `String.t`, *default:* `nil`) - The fingerprint of the target pools information. Use this optional property to prevent conflicts when multiple users change the target pools settings concurrently. Obtain the fingerprint with the instanceGroupManagers.get method. Then, include the fingerprint in your request to ensure that you do not overwrite changes that were applied from another concurrent request.
  *   `targetPools` (*type:* `list(String.t)`, *default:* `nil`) - The list of target pool URLs that instances in this managed instance group belong to. The managed instance group applies these target pools to all of the instances in the group. Existing instances and new instances in the group all receive these target pool settings.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fingerprint => String.t(),
          :targetPools => list(String.t())
        }

  field(:fingerprint)
  field(:targetPools, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InstanceGroupManagersSetTargetPoolsRequest do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InstanceGroupManagersSetTargetPoolsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InstanceGroupManagersSetTargetPoolsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

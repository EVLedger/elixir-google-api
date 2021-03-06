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

defmodule GoogleApi.ServiceConsumerManagement.V1.Model.V1AddVisibilityLabelsResponse do
  @moduledoc """
  Response message for the `AddVisibilityLabels` method.
  This response message is assigned to the `response` field of the returned
  Operation when that operation is done.

  ## Attributes

  *   `labels` (*type:* `list(String.t)`, *default:* `nil`) - The updated set of visibility labels for this consumer on this service.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :labels => list(String.t())
        }

  field(:labels, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.ServiceConsumerManagement.V1.Model.V1AddVisibilityLabelsResponse do
  def decode(value, options) do
    GoogleApi.ServiceConsumerManagement.V1.Model.V1AddVisibilityLabelsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ServiceConsumerManagement.V1.Model.V1AddVisibilityLabelsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

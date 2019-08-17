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

defmodule GoogleApi.Compute.V1.Model.InstancesStartWithEncryptionKeyRequest do
  @moduledoc """


  ## Attributes

  *   `disks` (*type:* `list(GoogleApi.Compute.V1.Model.CustomerEncryptionKeyProtectedDisk.t)`, *default:* `nil`) - Array of disks associated with this instance that are protected with a customer-supplied encryption key.

      In order to start the instance, the disk url and its corresponding key must be provided.

      If the disk is not protected with a customer-supplied encryption key it should not be specified.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :disks => list(GoogleApi.Compute.V1.Model.CustomerEncryptionKeyProtectedDisk.t())
        }

  field(:disks, as: GoogleApi.Compute.V1.Model.CustomerEncryptionKeyProtectedDisk, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InstancesStartWithEncryptionKeyRequest do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InstancesStartWithEncryptionKeyRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InstancesStartWithEncryptionKeyRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

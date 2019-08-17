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

defmodule GoogleApi.Compute.V1.Model.InterconnectAttachmentPrivateInfo do
  @moduledoc """
  Information for an interconnect attachment when this belongs to an interconnect of type DEDICATED.

  ## Attributes

  *   `tag8021q` (*type:* `integer()`, *default:* `nil`) - [Output Only] 802.1q encapsulation tag to be used for traffic between Google and the customer, going to and from this network and region.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :tag8021q => integer()
        }

  field(:tag8021q)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InterconnectAttachmentPrivateInfo do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InterconnectAttachmentPrivateInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InterconnectAttachmentPrivateInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

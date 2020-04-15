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

defmodule GoogleApi.Blogger.V3.Model.PostPerUserInfo do
  @moduledoc """


  ## Attributes

  *   `blogId` (*type:* `String.t`, *default:* `nil`) - ID of the Blog that the post resource belongs to.
  *   `hasEditAccess` (*type:* `boolean()`, *default:* `nil`) - True if the user has Author level access to the post.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - The kind of this entity. Always blogger#postPerUserInfo.
  *   `postId` (*type:* `String.t`, *default:* `nil`) - ID of the Post resource.
  *   `userId` (*type:* `String.t`, *default:* `nil`) - ID of the User.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :blogId => String.t(),
          :hasEditAccess => boolean(),
          :kind => String.t(),
          :postId => String.t(),
          :userId => String.t()
        }

  field(:blogId)
  field(:hasEditAccess)
  field(:kind)
  field(:postId)
  field(:userId)
end

defimpl Poison.Decoder, for: GoogleApi.Blogger.V3.Model.PostPerUserInfo do
  def decode(value, options) do
    GoogleApi.Blogger.V3.Model.PostPerUserInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Blogger.V3.Model.PostPerUserInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

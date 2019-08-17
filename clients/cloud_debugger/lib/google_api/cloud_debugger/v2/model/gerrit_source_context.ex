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

defmodule GoogleApi.CloudDebugger.V2.Model.GerritSourceContext do
  @moduledoc """
  A SourceContext referring to a Gerrit project.

  ## Attributes

  *   `aliasContext` (*type:* `GoogleApi.CloudDebugger.V2.Model.AliasContext.t`, *default:* `nil`) - An alias, which may be a branch or tag.
  *   `aliasName` (*type:* `String.t`, *default:* `nil`) - The name of an alias (branch, tag, etc.).
  *   `gerritProject` (*type:* `String.t`, *default:* `nil`) - The full project name within the host. Projects may be nested, so
      "project/subproject" is a valid project name.
      The "repo name" is hostURI/project.
  *   `hostUri` (*type:* `String.t`, *default:* `nil`) - The URI of a running Gerrit instance.
  *   `revisionId` (*type:* `String.t`, *default:* `nil`) - A revision (commit) ID.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aliasContext => GoogleApi.CloudDebugger.V2.Model.AliasContext.t(),
          :aliasName => String.t(),
          :gerritProject => String.t(),
          :hostUri => String.t(),
          :revisionId => String.t()
        }

  field(:aliasContext, as: GoogleApi.CloudDebugger.V2.Model.AliasContext)
  field(:aliasName)
  field(:gerritProject)
  field(:hostUri)
  field(:revisionId)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDebugger.V2.Model.GerritSourceContext do
  def decode(value, options) do
    GoogleApi.CloudDebugger.V2.Model.GerritSourceContext.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDebugger.V2.Model.GerritSourceContext do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

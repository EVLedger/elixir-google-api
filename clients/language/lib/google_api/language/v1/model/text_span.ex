# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Language.V1.Model.TextSpan do
  @moduledoc """
  Represents an output piece of text.

  ## Attributes

  - beginOffset (integer()): The API calculates the beginning offset of the content in the original document according to the EncodingType specified in the API request. Defaults to: `null`.
  - content (String.t): The content of the output text. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :beginOffset => any(),
          :content => any()
        }

  field(:beginOffset)
  field(:content)
end

defimpl Poison.Decoder, for: GoogleApi.Language.V1.Model.TextSpan do
  def decode(value, options) do
    GoogleApi.Language.V1.Model.TextSpan.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Language.V1.Model.TextSpan do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

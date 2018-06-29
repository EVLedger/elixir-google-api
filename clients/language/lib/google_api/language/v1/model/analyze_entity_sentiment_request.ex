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

defmodule GoogleApi.Language.V1.Model.AnalyzeEntitySentimentRequest do
  @moduledoc """
  The entity-level sentiment analysis request message.

  ## Attributes

  - document (Document): Input document. Defaults to: `null`.
  - encodingType (String.t): The encoding type used by the API to calculate offsets. Defaults to: `null`.
    - Enum - one of [NONE, UTF8, UTF16, UTF32]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :document => GoogleApi.Language.V1.Model.Document.t(),
          :encodingType => any()
        }

  field(:document, as: GoogleApi.Language.V1.Model.Document)
  field(:encodingType)
end

defimpl Poison.Decoder, for: GoogleApi.Language.V1.Model.AnalyzeEntitySentimentRequest do
  def decode(value, options) do
    GoogleApi.Language.V1.Model.AnalyzeEntitySentimentRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Language.V1.Model.AnalyzeEntitySentimentRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

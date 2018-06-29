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

defmodule GoogleApi.CloudTrace.V2.Model.Annotation do
  @moduledoc """
  Text annotation with a set of attributes.

  ## Attributes

  - attributes (Attributes): A set of attributes on the annotation. You can have up to 4 attributes per Annotation. Defaults to: `null`.
  - description (TruncatableString): A user-supplied message describing the event. The maximum length for the description is 256 bytes. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributes => GoogleApi.CloudTrace.V2.Model.Attributes.t(),
          :description => GoogleApi.CloudTrace.V2.Model.TruncatableString.t()
        }

  field(:attributes, as: GoogleApi.CloudTrace.V2.Model.Attributes)
  field(:description, as: GoogleApi.CloudTrace.V2.Model.TruncatableString)
end

defimpl Poison.Decoder, for: GoogleApi.CloudTrace.V2.Model.Annotation do
  def decode(value, options) do
    GoogleApi.CloudTrace.V2.Model.Annotation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudTrace.V2.Model.Annotation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

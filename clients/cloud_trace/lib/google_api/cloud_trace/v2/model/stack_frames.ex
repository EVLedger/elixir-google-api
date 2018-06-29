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

defmodule GoogleApi.CloudTrace.V2.Model.StackFrames do
  @moduledoc """
  A collection of stack frames, which can be truncated.

  ## Attributes

  - droppedFramesCount (integer()): The number of stack frames that were dropped because there were too many stack frames. If this value is 0, then no stack frames were dropped. Defaults to: `null`.
  - frame ([StackFrame]): Stack frames in this call stack. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :droppedFramesCount => any(),
          :frame => list(GoogleApi.CloudTrace.V2.Model.StackFrame.t())
        }

  field(:droppedFramesCount)
  field(:frame, as: GoogleApi.CloudTrace.V2.Model.StackFrame, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudTrace.V2.Model.StackFrames do
  def decode(value, options) do
    GoogleApi.CloudTrace.V2.Model.StackFrames.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudTrace.V2.Model.StackFrames do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

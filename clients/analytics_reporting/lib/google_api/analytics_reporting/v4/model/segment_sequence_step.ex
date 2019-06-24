# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.AnalyticsReporting.V4.Model.SegmentSequenceStep do
  @moduledoc """
  A segment sequence definition.

  ## Attributes

  *   `matchType` (*type:* `String.t`, *default:* `nil`) - Specifies if the step immediately precedes or can be any time before the
      next step.
  *   `orFiltersForSegment` (*type:* `list(GoogleApi.AnalyticsReporting.V4.Model.OrFiltersForSegment.t)`, *default:* `nil`) - A sequence is specified with a list of Or grouped filters which are
      combined with `AND` operator.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :matchType => String.t(),
          :orFiltersForSegment =>
            list(GoogleApi.AnalyticsReporting.V4.Model.OrFiltersForSegment.t())
        }

  field(:matchType)

  field(
    :orFiltersForSegment,
    as: GoogleApi.AnalyticsReporting.V4.Model.OrFiltersForSegment,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsReporting.V4.Model.SegmentSequenceStep do
  def decode(value, options) do
    GoogleApi.AnalyticsReporting.V4.Model.SegmentSequenceStep.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsReporting.V4.Model.SegmentSequenceStep do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

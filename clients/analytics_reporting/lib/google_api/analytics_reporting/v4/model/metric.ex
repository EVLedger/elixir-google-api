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

defmodule GoogleApi.AnalyticsReporting.V4.Model.Metric do
  @moduledoc """
  [Metrics](https://support.google.com/analytics/answer/1033861)
  are the quantitative measurements. For example, the metric `ga:users`
  indicates the total number of users for the requested time period.

  ## Attributes

  *   `alias` (*type:* `String.t`, *default:* `nil`) - An alias for the metric expression is an alternate name for the
      expression. The alias can be used for filtering and sorting. This field
      is optional and is useful if the expression is not a single metric but
      a complex expression which cannot be used in filtering and sorting.
      The alias is also used in the response column header.
  *   `expression` (*type:* `String.t`, *default:* `nil`) - A metric expression in the request. An expression is constructed from one
      or more metrics and numbers. Accepted operators include: Plus (+), Minus
      (-), Negation (Unary -), Divided by (/), Multiplied by (*), Parenthesis,
      Positive cardinal numbers (0-9), can include decimals and is limited to
      1024 characters. Example `ga:totalRefunds/ga:users`, in most cases the
      metric expression is just a single metric name like `ga:users`.
      Adding mixed `MetricType` (E.g., `CURRENCY` + `PERCENTAGE`) metrics
      will result in unexpected results.
  *   `formattingType` (*type:* `String.t`, *default:* `nil`) - Specifies how the metric expression should be formatted, for example
      `INTEGER`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alias => String.t(),
          :expression => String.t(),
          :formattingType => String.t()
        }

  field(:alias)
  field(:expression)
  field(:formattingType)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsReporting.V4.Model.Metric do
  def decode(value, options) do
    GoogleApi.AnalyticsReporting.V4.Model.Metric.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsReporting.V4.Model.Metric do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

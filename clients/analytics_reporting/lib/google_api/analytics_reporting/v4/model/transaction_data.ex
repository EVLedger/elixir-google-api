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

defmodule GoogleApi.AnalyticsReporting.V4.Model.TransactionData do
  @moduledoc """
  Represents details collected when the visitor performs a transaction on the
  page.

  ## Attributes

  *   `transactionId` (*type:* `String.t`, *default:* `nil`) - The transaction ID, supplied by the e-commerce tracking method, for the
      purchase in the shopping cart.
  *   `transactionRevenue` (*type:* `float()`, *default:* `nil`) - The total sale revenue (excluding shipping and tax) of the transaction.
  *   `transactionShipping` (*type:* `float()`, *default:* `nil`) - Total cost of shipping.
  *   `transactionTax` (*type:* `float()`, *default:* `nil`) - Total tax for the transaction.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :transactionId => String.t(),
          :transactionRevenue => float(),
          :transactionShipping => float(),
          :transactionTax => float()
        }

  field(:transactionId)
  field(:transactionRevenue)
  field(:transactionShipping)
  field(:transactionTax)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsReporting.V4.Model.TransactionData do
  def decode(value, options) do
    GoogleApi.AnalyticsReporting.V4.Model.TransactionData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsReporting.V4.Model.TransactionData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

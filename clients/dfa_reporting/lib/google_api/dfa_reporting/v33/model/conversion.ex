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

defmodule GoogleApi.DFAReporting.V33.Model.Conversion do
  @moduledoc """
  A Conversion represents when a user successfully performs a desired action after seeing an ad.

  ## Attributes

  *   `childDirectedTreatment` (*type:* `boolean()`, *default:* `nil`) - Whether this particular request may come from a user under the age of 13, under COPPA compliance.
  *   `customVariables` (*type:* `list(GoogleApi.DFAReporting.V33.Model.CustomFloodlightVariable.t)`, *default:* `nil`) - Custom floodlight variables.
  *   `encryptedUserId` (*type:* `String.t`, *default:* `nil`) - The alphanumeric encrypted user ID. When set, encryptionInfo should also be specified. This field is mutually exclusive with encryptedUserIdCandidates[], matchId, mobileDeviceId and gclid. This or encryptedUserIdCandidates[] or matchId or mobileDeviceId or gclid is a required field.
  *   `encryptedUserIdCandidates` (*type:* `list(String.t)`, *default:* `nil`) - A list of the alphanumeric encrypted user IDs. Any user ID with exposure prior to the conversion timestamp will be used in the inserted conversion. If no such user ID is found then the conversion will be rejected with NO_COOKIE_MATCH_FOUND error. When set, encryptionInfo should also be specified. This field may only be used when calling batchinsert; it is not supported by batchupdate. This field is mutually exclusive with encryptedUserId, matchId, mobileDeviceId and gclid. This or encryptedUserId or matchId or mobileDeviceId or gclid is a required field.
  *   `floodlightActivityId` (*type:* `String.t`, *default:* `nil`) - Floodlight Activity ID of this conversion. This is a required field.
  *   `floodlightConfigurationId` (*type:* `String.t`, *default:* `nil`) - Floodlight Configuration ID of this conversion. This is a required field.
  *   `gclid` (*type:* `String.t`, *default:* `nil`) - The Google click ID. This field is mutually exclusive with encryptedUserId, encryptedUserIdCandidates[], matchId and mobileDeviceId. This or encryptedUserId or encryptedUserIdCandidates[] or matchId or mobileDeviceId is a required field.
  *   `kind` (*type:* `String.t`, *default:* `dfareporting#conversion`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#conversion".
  *   `limitAdTracking` (*type:* `boolean()`, *default:* `nil`) - Whether Limit Ad Tracking is enabled. When set to true, the conversion will be used for reporting but not targeting. This will prevent remarketing.
  *   `matchId` (*type:* `String.t`, *default:* `nil`) - The match ID field. A match ID is your own first-party identifier that has been synced with Google using the match ID feature in Floodlight. This field is mutually exclusive with encryptedUserId, encryptedUserIdCandidates[],mobileDeviceId and gclid. This or encryptedUserId or encryptedUserIdCandidates[] or mobileDeviceId or gclid is a required field.
  *   `mobileDeviceId` (*type:* `String.t`, *default:* `nil`) - The mobile device ID. This field is mutually exclusive with encryptedUserId, encryptedUserIdCandidates[], matchId and gclid. This or encryptedUserId or encryptedUserIdCandidates[] or matchId or gclid is a required field.
  *   `nonPersonalizedAd` (*type:* `boolean()`, *default:* `nil`) - Whether the conversion was for a non personalized ad.
  *   `ordinal` (*type:* `String.t`, *default:* `nil`) - The ordinal of the conversion. Use this field to control how conversions of the same user and day are de-duplicated. This is a required field.
  *   `quantity` (*type:* `String.t`, *default:* `nil`) - The quantity of the conversion.
  *   `timestampMicros` (*type:* `String.t`, *default:* `nil`) - The timestamp of conversion, in Unix epoch micros. This is a required field.
  *   `treatmentForUnderage` (*type:* `boolean()`, *default:* `nil`) - Whether this particular request may come from a user under the age of 16 (may differ by country), under compliance with the European Union's General Data Protection Regulation (GDPR).
  *   `value` (*type:* `float()`, *default:* `nil`) - The value of the conversion.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :childDirectedTreatment => boolean(),
          :customVariables => list(GoogleApi.DFAReporting.V33.Model.CustomFloodlightVariable.t()),
          :encryptedUserId => String.t(),
          :encryptedUserIdCandidates => list(String.t()),
          :floodlightActivityId => String.t(),
          :floodlightConfigurationId => String.t(),
          :gclid => String.t(),
          :kind => String.t(),
          :limitAdTracking => boolean(),
          :matchId => String.t(),
          :mobileDeviceId => String.t(),
          :nonPersonalizedAd => boolean(),
          :ordinal => String.t(),
          :quantity => String.t(),
          :timestampMicros => String.t(),
          :treatmentForUnderage => boolean(),
          :value => float()
        }

  field(:childDirectedTreatment)

  field(
    :customVariables,
    as: GoogleApi.DFAReporting.V33.Model.CustomFloodlightVariable,
    type: :list
  )

  field(:encryptedUserId)
  field(:encryptedUserIdCandidates, type: :list)
  field(:floodlightActivityId)
  field(:floodlightConfigurationId)
  field(:gclid)
  field(:kind)
  field(:limitAdTracking)
  field(:matchId)
  field(:mobileDeviceId)
  field(:nonPersonalizedAd)
  field(:ordinal)
  field(:quantity)
  field(:timestampMicros)
  field(:treatmentForUnderage)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V33.Model.Conversion do
  def decode(value, options) do
    GoogleApi.DFAReporting.V33.Model.Conversion.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V33.Model.Conversion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
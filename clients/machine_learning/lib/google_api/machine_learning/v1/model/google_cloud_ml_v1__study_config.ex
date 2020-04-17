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

defmodule GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_StudyConfig do
  @moduledoc """
  Represents configuration of a study.

  ## Attributes

  *   `algorithm` (*type:* `String.t`, *default:* `nil`) - The search algorithm specified for the study.
  *   `automatedStoppingConfig` (*type:* `GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_AutomatedStoppingConfig.t`, *default:* `nil`) - Configuration for automated stopping of unpromising Trials.
  *   `metrics` (*type:* `list(GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_StudyConfig_MetricSpec.t)`, *default:* `nil`) - Metric specs for the study.
  *   `parameters` (*type:* `list(GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_StudyConfig_ParameterSpec.t)`, *default:* `nil`) - Required. The set of parameters to tune.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :algorithm => String.t(),
          :automatedStoppingConfig =>
            GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_AutomatedStoppingConfig.t(),
          :metrics =>
            list(GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_StudyConfig_MetricSpec.t()),
          :parameters =>
            list(GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_StudyConfig_ParameterSpec.t())
        }

  field(:algorithm)

  field(:automatedStoppingConfig,
    as: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_AutomatedStoppingConfig
  )

  field(:metrics,
    as: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_StudyConfig_MetricSpec,
    type: :list
  )

  field(:parameters,
    as: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_StudyConfig_ParameterSpec,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_StudyConfig do
  def decode(value, options) do
    GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_StudyConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_StudyConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

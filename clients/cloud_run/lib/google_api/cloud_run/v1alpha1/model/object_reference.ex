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

defmodule GoogleApi.CloudRun.V1alpha1.Model.ObjectReference do
  @moduledoc """
  ObjectReference contains enough information to let you inspect or modify the
  referred object.

  ## Attributes

  *   `apiVersion` (*type:* `String.t`, *default:* `nil`) - API version of the referent.
      +optional
  *   `fieldPath` (*type:* `String.t`, *default:* `nil`) - If referring to a piece of an object instead of an entire object, this
      string should contain a valid JSON/Go field access statement, such as
      desiredState.manifest.containers[2]. For example, if the object reference
      is to a container within a pod, this would take on a value like:
      "spec.containers{name}" (where "name" refers to the name of the container
      that triggered the event) or if no container name is specified
      "spec.containers[2]" (container with index 2 in this pod). This syntax is
      chosen only to have some well-defined way of referencing a part of an
      object.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Kind of the referent.
      More info:
      https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds
      +optional
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the referent.
      More info:
      https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
      +optional
  *   `namespace` (*type:* `String.t`, *default:* `nil`) - Namespace of the referent.
      More info:
      https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/
      +optional
  *   `resourceVersion` (*type:* `String.t`, *default:* `nil`) - Specific resourceVersion to which this reference is made, if any.
      More info:
      https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency
      +optional
  *   `uid` (*type:* `String.t`, *default:* `nil`) - UID of the referent.
      More info:
      https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids
      +optional
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiVersion => String.t(),
          :fieldPath => String.t(),
          :kind => String.t(),
          :name => String.t(),
          :namespace => String.t(),
          :resourceVersion => String.t(),
          :uid => String.t()
        }

  field(:apiVersion)
  field(:fieldPath)
  field(:kind)
  field(:name)
  field(:namespace)
  field(:resourceVersion)
  field(:uid)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.ObjectReference do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.ObjectReference.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.ObjectReference do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

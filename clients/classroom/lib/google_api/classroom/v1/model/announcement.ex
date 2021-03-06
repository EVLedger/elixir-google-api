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

defmodule GoogleApi.Classroom.V1.Model.Announcement do
  @moduledoc """
  Announcement created by a teacher for students of the course

  ## Attributes

  *   `alternateLink` (*type:* `String.t`, *default:* `nil`) - Absolute link to this announcement in the Classroom web UI.
      This is only populated if `state` is `PUBLISHED`.

      Read-only.
  *   `assigneeMode` (*type:* `String.t`, *default:* `nil`) - Assignee mode of the announcement.
      If unspecified, the default value is `ALL_STUDENTS`.
  *   `courseId` (*type:* `String.t`, *default:* `nil`) - Identifier of the course.

      Read-only.
  *   `creationTime` (*type:* `DateTime.t`, *default:* `nil`) - Timestamp when this announcement was created.

      Read-only.
  *   `creatorUserId` (*type:* `String.t`, *default:* `nil`) - Identifier for the user that created the announcement.

      Read-only.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Classroom-assigned identifier of this announcement, unique per course.

      Read-only.
  *   `individualStudentsOptions` (*type:* `GoogleApi.Classroom.V1.Model.IndividualStudentsOptions.t`, *default:* `nil`) - Identifiers of students with access to the announcement.
      This field is set only if `assigneeMode` is `INDIVIDUAL_STUDENTS`.
      If the `assigneeMode` is `INDIVIDUAL_STUDENTS`, then only students
      specified in this field can see the announcement.
  *   `materials` (*type:* `list(GoogleApi.Classroom.V1.Model.Material.t)`, *default:* `nil`) - Additional materials.

      Announcements must have no more than 20 material items.
  *   `scheduledTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional timestamp when this announcement is scheduled to be published.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Status of this announcement.
      If unspecified, the default state is `DRAFT`.
  *   `text` (*type:* `String.t`, *default:* `nil`) - Description of this announcement.
      The text must be a valid UTF-8 string containing no more
      than 30,000 characters.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Timestamp of the most recent change to this announcement.

      Read-only.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alternateLink => String.t(),
          :assigneeMode => String.t(),
          :courseId => String.t(),
          :creationTime => DateTime.t(),
          :creatorUserId => String.t(),
          :id => String.t(),
          :individualStudentsOptions =>
            GoogleApi.Classroom.V1.Model.IndividualStudentsOptions.t(),
          :materials => list(GoogleApi.Classroom.V1.Model.Material.t()),
          :scheduledTime => DateTime.t(),
          :state => String.t(),
          :text => String.t(),
          :updateTime => DateTime.t()
        }

  field(:alternateLink)
  field(:assigneeMode)
  field(:courseId)
  field(:creationTime, as: DateTime)
  field(:creatorUserId)
  field(:id)
  field(:individualStudentsOptions, as: GoogleApi.Classroom.V1.Model.IndividualStudentsOptions)
  field(:materials, as: GoogleApi.Classroom.V1.Model.Material, type: :list)
  field(:scheduledTime, as: DateTime)
  field(:state)
  field(:text)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Classroom.V1.Model.Announcement do
  def decode(value, options) do
    GoogleApi.Classroom.V1.Model.Announcement.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Classroom.V1.Model.Announcement do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

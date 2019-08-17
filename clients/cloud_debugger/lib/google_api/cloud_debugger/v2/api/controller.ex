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

defmodule GoogleApi.CloudDebugger.V2.Api.Controller do
  @moduledoc """
  API calls for all endpoints tagged `Controller`.
  """

  alias GoogleApi.CloudDebugger.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Registers the debuggee with the controller service.

  All agents attached to the same application must call this method with
  exactly the same request content to get back the same stable `debuggee_id`.
  Agents should call this method again whenever `google.rpc.Code.NOT_FOUND`
  is returned from any controller method.

  This protocol allows the controller service to disable debuggees, recover
  from data loss, or change the `debuggee_id` format. Agents must handle
  `debuggee_id` value changing upon re-registration.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudDebugger.V2.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.CloudDebugger.V2.Model.RegisterDebuggeeRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudDebugger.V2.Model.RegisterDebuggeeResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec clouddebugger_controller_debuggees_register(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.CloudDebugger.V2.Model.RegisterDebuggeeResponse.t()}
          | {:error, Tesla.Env.t()}
  def clouddebugger_controller_debuggees_register(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v2/controller/debuggees/register", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.CloudDebugger.V2.Model.RegisterDebuggeeResponse{}]
    )
  end

  @doc """
  Returns the list of all active breakpoints for the debuggee.

  The breakpoint specification (`location`, `condition`, and `expressions`
  fields) is semantically immutable, although the field values may
  change. For example, an agent may update the location line number
  to reflect the actual line where the breakpoint was set, but this
  doesn't change the breakpoint semantics.

  This means that an agent does not need to check if a breakpoint has changed
  when it encounters the same breakpoint on a successive call.
  Moreover, an agent should remember the breakpoints that are completed
  until the controller removes them from the active list to avoid
  setting those breakpoints again.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudDebugger.V2.Connection.t`) - Connection to server
  *   `debuggee_id` (*type:* `String.t`) - Identifies the debuggee.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:successOnTimeout` (*type:* `boolean()`) - If set to `true` (recommended), returns `google.rpc.Code.OK` status and
          sets the `wait_expired` response field to `true` when the server-selected
          timeout has expired.

          If set to `false` (deprecated), returns `google.rpc.Code.ABORTED` status
          when the server-selected timeout has expired.
      *   `:waitToken` (*type:* `String.t`) - A token that, if specified, blocks the method call until the list
          of active breakpoints has changed, or a server-selected timeout has
          expired. The value should be set from the `next_wait_token` field in
          the last response. The initial value should be set to `"init"`.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudDebugger.V2.Model.ListActiveBreakpointsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec clouddebugger_controller_debuggees_breakpoints_list(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudDebugger.V2.Model.ListActiveBreakpointsResponse.t()}
          | {:error, Tesla.Env.t()}
  def clouddebugger_controller_debuggees_breakpoints_list(
        connection,
        debuggee_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :successOnTimeout => :query,
      :waitToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v2/controller/debuggees/{debuggeeId}/breakpoints", %{
        "debuggeeId" => URI.encode(debuggee_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.CloudDebugger.V2.Model.ListActiveBreakpointsResponse{}]
    )
  end

  @doc """
  Updates the breakpoint state or mutable fields.
  The entire Breakpoint message must be sent back to the controller service.

  Updates to active breakpoint fields are only allowed if the new value
  does not change the breakpoint specification. Updates to the `location`,
  `condition` and `expressions` fields should not alter the breakpoint
  semantics. These may only make changes such as canonicalizing a value
  or snapping the location to the correct line of code.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudDebugger.V2.Connection.t`) - Connection to server
  *   `debuggee_id` (*type:* `String.t`) - Identifies the debuggee being debugged.
  *   `id` (*type:* `String.t`) - Breakpoint identifier, unique in the scope of the debuggee.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.CloudDebugger.V2.Model.UpdateActiveBreakpointRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudDebugger.V2.Model.UpdateActiveBreakpointResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec clouddebugger_controller_debuggees_breakpoints_update(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudDebugger.V2.Model.UpdateActiveBreakpointResponse.t()}
          | {:error, Tesla.Env.t()}
  def clouddebugger_controller_debuggees_breakpoints_update(
        connection,
        debuggee_id,
        id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/v2/controller/debuggees/{debuggeeId}/breakpoints/{id}", %{
        "debuggeeId" => URI.encode(debuggee_id, &URI.char_unreserved?/1),
        "id" => URI.encode(id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.CloudDebugger.V2.Model.UpdateActiveBreakpointResponse{}]
    )
  end
end

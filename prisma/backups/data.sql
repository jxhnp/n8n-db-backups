SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict 5eHlspaWvhWSViSgMw0coeHlhMyaKC87VCRRZ82mFH3sk7B4yzospLLX1knuvKB

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: custom_oauth_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."custom_oauth_providers" ("id", "provider_type", "identifier", "name", "client_id", "client_secret", "acceptable_client_ids", "scopes", "pkce_enabled", "attribute_mapping", "authorization_params", "enabled", "email_optional", "issuer", "discovery_url", "skip_nonce_check", "cached_discovery", "discovery_cached_at", "authorization_url", "token_url", "userinfo_url", "jwks_uri", "created_at", "updated_at", "custom_claims_allowlist") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at", "invite_token", "referrer", "oauth_client_state_id", "linking_target_id", "email_optional") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_clients" ("id", "client_secret_hash", "registration_type", "redirect_uris", "grant_types", "client_name", "client_uri", "logo_uri", "created_at", "updated_at", "deleted_at", "client_type", "token_endpoint_auth_method") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id", "refresh_token_hmac_key", "refresh_token_counter", "scopes") FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid", "last_webauthn_challenge_data") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_authorizations" ("id", "authorization_id", "client_id", "user_id", "redirect_uri", "scope", "state", "resource", "code_challenge", "code_challenge_method", "response_type", "status", "authorization_code", "created_at", "expires_at", "approved_at", "nonce") FROM stdin;
\.


--
-- Data for Name: oauth_client_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_client_states" ("id", "provider_type", "code_verifier", "created_at") FROM stdin;
\.


--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_consents" ("id", "user_id", "client_id", "scopes", "granted_at", "revoked_at") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at", "disabled") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: webauthn_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_challenges" ("id", "user_id", "challenge_type", "session_data", "created_at", "expires_at") FROM stdin;
\.


--
-- Data for Name: webauthn_credentials; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_credentials" ("id", "user_id", "credential_id", "public_key", "attestation_type", "aaguid", "sign_count", "transports", "backup_eligible", "backed_up", "friendly_name", "created_at", "updated_at", "last_used_at") FROM stdin;
\.


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role" ("slug", "displayName", "description", "roleType", "systemRole", "createdAt", "updatedAt") FROM stdin;
global:chatUser	Chat User	Can only use workflows through the chat interface, not build them	global	t	2026-08-04 06:27:55.127+00	2026-08-04 06:27:55.127+00
global:owner	Owner	Owner	global	t	2026-08-04 06:23:19.128+00	2026-08-04 06:27:57.713+00
project:personalOwner	Project Owner	Project Owner	project	t	2026-08-04 06:23:19.128+00	2026-08-04 06:28:00.307+00
project:chatUser	Project Chat User	Chat-only access to chatting with workflows that have n8n Chat enabled	project	t	2026-08-04 06:23:19.128+00	2026-08-04 06:28:00.307+00
credential:owner	Credential Owner	Credential Owner	credential	t	2026-08-04 06:27:55.127+00	2026-08-04 06:27:55.127+00
credential:user	Credential User	Credential User	credential	t	2026-08-04 06:27:55.127+00	2026-08-04 06:27:55.127+00
workflow:owner	Workflow Owner	Workflow Owner	workflow	t	2026-08-04 06:27:55.127+00	2026-08-04 06:27:55.127+00
workflow:editor	Workflow Editor	Workflow Editor	workflow	t	2026-08-04 06:27:55.127+00	2026-08-04 06:27:55.127+00
secretsProviderConnection:owner	Secrets Provider Connection Owner	Full control of secrets provider connection settings and secrets	secretsProviderConnection	t	2026-08-04 06:27:55.127+00	2026-08-04 06:27:55.127+00
secretsProviderConnection:user	Secrets Provider Connection User	Read-only access to use secrets from the connection	secretsProviderConnection	t	2026-08-04 06:27:55.127+00	2026-08-04 06:27:55.127+00
global:admin	Admin	Full control of the instance, including all workflows and credentials	global	t	2026-08-04 06:23:19.128+00	2026-08-04 14:31:41.747+00
global:member	Member	Can create and use their own workflows and credentials	global	t	2026-08-04 06:23:19.128+00	2026-08-04 14:31:41.747+00
project:admin	Project Admin	Full control of settings, members, workflows, credentials and executions	project	t	2026-08-04 06:23:19.128+00	2026-08-04 14:31:43.545+00
project:editor	Project Editor	Create, edit, and delete workflows, credentials, and executions	project	t	2026-08-04 06:23:19.128+00	2026-08-04 14:31:43.545+00
project:viewer	Project Viewer	Read-only access to workflows, credentials, and executions	project	t	2026-08-04 06:23:19.128+00	2026-08-04 14:31:43.545+00
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user" ("id", "email", "firstName", "lastName", "password", "personalizationAnswers", "createdAt", "updatedAt", "settings", "disabled", "mfaEnabled", "mfaSecret", "mfaRecoveryCodes", "lastActiveAt", "roleSlug") FROM stdin;
ce532153-117a-46ae-a875-ae7b60c84708	xxjmporioxx@gmail.com	John	Porio	$2a$10$4dFoRDvvET8RSAhK6nGY4OQGStyoVTzSygQJ.JLn7fHpqkTxTnXda	{"version":"v4","personalization_survey_submitted_at":"2026-08-04T06:51:52.886Z","personalization_survey_n8n_version":"1.110.1"}	2026-08-04 06:19:10.595+00	2026-08-04 14:28:09.964+00	{"userActivated": false}	f	f	\N	\N	2026-08-04	global:owner
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project" ("id", "name", "type", "createdAt", "updatedAt", "icon", "description", "creatorId", "customTelemetryTags") FROM stdin;
eS9NOzdDSGCiAdTX	John Porio <xxjmporioxx@gmail.com>	personal	2026-08-04 06:20:39.185+00	2026-08-04 06:37:43.199+00	\N	\N	ce532153-117a-46ae-a875-ae7b60c84708	[]
\.


--
-- Data for Name: agents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents" ("id", "name", "projectId", "integrations", "schema", "tools", "skills", "versionId", "createdAt", "updatedAt", "activeVersionId", "availableInMCP") FROM stdin;
\.


--
-- Data for Name: agent_chat_subscriptions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_chat_subscriptions" ("agentId", "integrationType", "credentialId", "threadId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_checkpoints; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_checkpoints" ("runId", "agentId", "state", "expired", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_eval_dataset; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_eval_dataset" ("id", "name", "description", "agentId", "datasetSource", "datasetRef", "columnMapping", "createdById", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_eval_run; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_eval_run" ("id", "datasetId", "agentVersionId", "status", "runAt", "completedAt", "metrics", "errorCode", "errorDetails", "runningInstanceId", "cancelRequested", "createdById", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_eval_result; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_eval_result" ("id", "runId", "sourceRowId", "runIndex", "status", "input", "output", "toolCalls", "metrics", "runAt", "completedAt", "errorCode", "errorDetails", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_eval_rating; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_eval_rating" ("id", "resultId", "vote", "comment", "correction", "ratedById", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_history" ("versionId", "agentId", "schema", "tools", "skills", "publishedById", "author", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_execution_threads; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_execution_threads" ("id", "agentId", "agentName", "projectId", "sessionNumber", "totalPromptTokens", "totalCompletionTokens", "totalCost", "totalDuration", "title", "emoji", "createdAt", "updatedAt", "taskId", "taskVersionId", "parentThreadId", "parentAgentId") FROM stdin;
\.


--
-- Data for Name: agent_execution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_execution" ("id", "threadId", "status", "startedAt", "stoppedAt", "duration", "userMessage", "model", "promptTokens", "completionTokens", "totalTokens", "cost", "timeline", "error", "hitlStatus", "source", "createdAt", "updatedAt", "storedAt") FROM stdin;
\.


--
-- Data for Name: agent_files; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_files" ("id", "agentId", "binaryDataId", "fileName", "mimeType", "fileSizeBytes", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_task_definition; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_task_definition" ("id", "agentId", "name", "objective", "cronExpression", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_task_run_lock; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_task_run_lock" ("agentId", "taskId", "holderId", "heldUntil", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_task_snapshot; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_task_snapshot" ("versionId", "taskId", "enabled", "name", "objective", "cronExpression", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_resources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_resources" ("id", "metadata", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_memory_entries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_memory_entries" ("id", "agentId", "resourceId", "content", "contentHash", "status", "supersededBy", "embeddingModel", "embedding", "metadata", "lastSeenAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_threads; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_threads" ("id", "resourceId", "title", "metadata", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_memory_entry_cursors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_memory_entry_cursors" ("agentId", "observationScopeId", "lastIndexedObservationId", "lastIndexedObservationCreatedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_memory_entry_locks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_memory_entry_locks" ("agentId", "resourceId", "holderId", "heldUntil", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_observations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_observations" ("id", "agentId", "observationScopeId", "marker", "text", "parentId", "tokenCount", "status", "supersededBy", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_memory_entry_sources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_memory_entry_sources" ("id", "agentId", "memoryEntryId", "observationId", "threadId", "evidenceHash", "evidenceText", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_messages" ("id", "threadId", "resourceId", "role", "type", "content", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_observation_cursors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_observation_cursors" ("agentId", "observationScopeId", "lastObservedMessageId", "lastObservedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_observation_locks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_observation_locks" ("agentId", "observationScopeId", "taskKind", "holderId", "heldUntil", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: folder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."folder" ("id", "name", "parentFolderId", "projectId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_threads; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_threads" ("id", "resourceId", "title", "metadata", "createdAt", "updatedAt", "projectId") FROM stdin;
\.


--
-- Data for Name: workflow_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_entity" ("name", "active", "nodes", "connections", "createdAt", "updatedAt", "settings", "staticData", "pinData", "versionId", "triggerCount", "id", "meta", "parentFolderId", "isArchived", "versionCounter", "description", "activeVersionId", "nodeGroups", "sourceWorkflowId") FROM stdin;
\.


--
-- Data for Name: ai_builder_temporary_workflow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."ai_builder_temporary_workflow" ("workflowId", "threadId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: annotation_tag_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."annotation_tag_entity" ("id", "name", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: auth_identity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."auth_identity" ("userId", "providerId", "providerType", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: auth_provider_sync_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."auth_provider_sync_history" ("id", "providerType", "runMode", "status", "startedAt", "endedAt", "scanned", "created", "updated", "disabled", "error") FROM stdin;
\.


--
-- Data for Name: binary_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."binary_data" ("fileId", "sourceType", "sourceId", "data", "mimeType", "fileName", "fileSize", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: dynamic_credential_resolver; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."dynamic_credential_resolver" ("id", "name", "type", "config", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: credentials_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."credentials_entity" ("name", "data", "type", "createdAt", "updatedAt", "id", "isManaged", "isGlobal", "isResolvable", "resolvableAllowFallback", "resolverId", "usageScope") FROM stdin;
\.


--
-- Data for Name: chat_hub_agents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_agents" ("id", "name", "description", "systemPrompt", "ownerId", "credentialId", "provider", "model", "createdAt", "updatedAt", "icon", "files", "suggestedPrompts") FROM stdin;
\.


--
-- Data for Name: chat_hub_tools; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_tools" ("id", "name", "type", "typeVersion", "ownerId", "definition", "enabled", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: chat_hub_agent_tools; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_agent_tools" ("agentId", "toolId") FROM stdin;
\.


--
-- Data for Name: chat_hub_sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_sessions" ("id", "title", "ownerId", "lastMessageAt", "credentialId", "provider", "model", "workflowId", "createdAt", "updatedAt", "agentId", "agentName", "type") FROM stdin;
\.


--
-- Data for Name: execution_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_entity" ("id", "finished", "mode", "retryOf", "retrySuccessId", "startedAt", "stoppedAt", "waitTill", "status", "workflowId", "deletedAt", "createdAt", "storedAt", "tracingContext", "deduplicationKey", "jsonSizeBytes", "workflowVersionId", "binaryDataSizeBytes", "usedPrivateCredentials") FROM stdin;
\.


--
-- Data for Name: chat_hub_messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_messages" ("id", "sessionId", "previousMessageId", "revisionOfMessageId", "retryOfMessageId", "type", "name", "content", "provider", "model", "workflowId", "executionId", "createdAt", "updatedAt", "agentId", "status", "attachments") FROM stdin;
\.


--
-- Data for Name: chat_hub_session_tools; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_session_tools" ("sessionId", "toolId") FROM stdin;
\.


--
-- Data for Name: credential_dependency; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."credential_dependency" ("id", "credentialId", "dependencyType", "dependencyId", "createdAt") FROM stdin;
\.


--
-- Data for Name: data_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."data_table" ("id", "name", "projectId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: data_table_column; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."data_table_column" ("id", "name", "type", "index", "dataTableId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: deployment_key; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."deployment_key" ("id", "type", "value", "algorithm", "status", "createdAt", "updatedAt") FROM stdin;
laLKqN18PZlkKYxS	instance.id	2ed5ea9beeaa08c1bbf3c941ff54451682c061de7f369af482f0bc736fa9c03d	\N	active	2026-08-04 06:27:47.795+00	2026-08-04 06:27:47.795+00
0MO7IsVcAxIv4HDQ	signing.hmac	3f69f06682f865486f837bff7fbf67e963288195f2bba3da386701659a76b91d	\N	active	2026-08-04 06:27:49.595+00	2026-08-04 06:27:49.595+00
OU8qaYdTu4YlL2g1	signing.jwt	3669a5b2452d840094891821f1f440ad01e78026d0d4a86fd5166a580015cd6c	\N	active	2026-08-04 06:27:51.318+00	2026-08-04 06:27:51.318+00
IhFCdHRbxRhzLEbS	signing.binary_data	gvYGjPB58bk2Z09OoqRv5pn0jDkwXImFPFZAFIasUhw=	\N	active	2026-08-04 06:27:52.894+00	2026-08-04 06:27:52.894+00
\.


--
-- Data for Name: dynamic_credential_entry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."dynamic_credential_entry" ("credential_id", "subject_id", "resolver_id", "data", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: dynamic_credential_user_entry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."dynamic_credential_user_entry" ("credentialId", "userId", "resolverId", "data", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: evaluation_config; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."evaluation_config" ("id", "workflowId", "name", "status", "invalidReason", "datasetSource", "datasetRef", "startNodeName", "endNodeName", "metrics", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: evaluation_collection; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."evaluation_collection" ("id", "name", "description", "workflowId", "evaluationConfigId", "createdById", "insightsCache", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: event_destinations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."event_destinations" ("id", "destination", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: execution_annotations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_annotations" ("id", "executionId", "vote", "note", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: execution_annotation_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_annotation_tags" ("annotationId", "tagId") FROM stdin;
\.


--
-- Data for Name: execution_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_data" ("executionId", "workflowData", "data", "workflowVersionId") FROM stdin;
\.


--
-- Data for Name: execution_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_metadata" ("id", "executionId", "key", "value") FROM stdin;
\.


--
-- Data for Name: tag_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."tag_entity" ("name", "createdAt", "updatedAt", "id") FROM stdin;
\.


--
-- Data for Name: folder_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."folder_tag" ("folderId", "tagId") FROM stdin;
\.


--
-- Data for Name: insights_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_metadata" ("metaId", "workflowId", "projectId", "workflowName", "projectName") FROM stdin;
\.


--
-- Data for Name: insights_by_period; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_by_period" ("id", "metaId", "type", "value", "periodUnit", "periodStart") FROM stdin;
\.


--
-- Data for Name: insights_raw; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_raw" ("id", "metaId", "type", "value", "timestamp") FROM stdin;
\.


--
-- Data for Name: installed_packages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."installed_packages" ("packageName", "installedVersion", "authorName", "authorEmail", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: installed_nodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."installed_nodes" ("name", "type", "latestVersion", "package") FROM stdin;
\.


--
-- Data for Name: instance_ai_checkpoints; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_checkpoints" ("key", "runId", "threadId", "resourceId", "state", "createdAt", "updatedAt", "expiredAt", "hostRunId") FROM stdin;
\.


--
-- Data for Name: instance_ai_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_events" ("threadId", "seq", "runId", "type", "payload", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_iteration_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_iteration_logs" ("id", "threadId", "taskKey", "entry", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: mcp_registry_server; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."mcp_registry_server" ("slug", "status", "version", "registryUpdatedAt", "data", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_mcp_registry_connections; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_mcp_registry_connections" ("id", "credentialId", "serverSlug", "toolFilter", "userId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_messages" ("id", "threadId", "content", "role", "type", "resourceId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_observation_cursors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_observation_cursors" ("observationScopeId", "lastObservedMessageId", "lastObservedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_observation_locks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_observation_locks" ("observationScopeId", "taskKind", "holderId", "heldUntil", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_observational_memory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_observational_memory" ("id", "lookupKey", "scope", "threadId", "resourceId", "activeObservations", "originType", "config", "generationCount", "lastObservedAt", "pendingMessageTokens", "totalTokensObserved", "observationTokenCount", "isObserving", "isReflecting", "observedMessageIds", "observedTimezone", "bufferedObservations", "bufferedObservationTokens", "bufferedMessageIds", "bufferedReflection", "bufferedReflectionTokens", "bufferedReflectionInputTokens", "reflectedObservationLineCount", "bufferedObservationChunks", "isBufferingObservation", "isBufferingReflection", "lastBufferedAtTokens", "lastBufferedAtTime", "metadata", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_observations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_observations" ("id", "observationScopeId", "marker", "text", "parentId", "tokenCount", "status", "supersededBy", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_pending_confirmations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_pending_confirmations" ("requestId", "threadId", "userId", "kind", "runId", "toolCallId", "messageGroupId", "checkpointKey", "checkpointTaskId", "expiresAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_resources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_resources" ("id", "workingMemory", "metadata", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_run_snapshots; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_run_snapshots" ("threadId", "runId", "messageGroupId", "runIds", "tree", "createdAt", "updatedAt", "langsmithRunId", "langsmithTraceId", "traceId", "spanId") FROM stdin;
\.


--
-- Data for Name: instance_ai_thread_grants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_thread_grants" ("threadId", "userId", "grantKey", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_workflow_snapshots; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_workflow_snapshots" ("runId", "workflowName", "resourceId", "status", "snapshot", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_credential_assignment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_credential_assignment" ("credentialUseId", "credentialId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_version_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_version_history" ("id", "major", "minor", "patch", "createdAt") FROM stdin;
\.


--
-- Data for Name: invalid_auth_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."invalid_auth_token" ("token", "expiresAt") FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."migrations" ("id", "timestamp", "name") FROM stdin;
1	1587669153312	InitialMigration1587669153312
2	1589476000887	WebhookModel1589476000887
3	1594828256133	CreateIndexStoppedAt1594828256133
4	1607431743768	MakeStoppedAtNullable1607431743768
5	1611144599516	AddWebhookId1611144599516
6	1617270242566	CreateTagEntity1617270242566
7	1620824779533	UniqueWorkflowNames1620824779533
8	1626176912946	AddwaitTill1626176912946
9	1630419189837	UpdateWorkflowCredentials1630419189837
10	1644422880309	AddExecutionEntityIndexes1644422880309
11	1646834195327	IncreaseTypeVarcharLimit1646834195327
12	1646992772331	CreateUserManagement1646992772331
13	1648740597343	LowerCaseUserEmail1648740597343
14	1652254514002	CommunityNodes1652254514002
15	1652367743993	AddUserSettings1652367743993
16	1652905585850	AddAPIKeyColumn1652905585850
17	1654090467022	IntroducePinData1654090467022
18	1658932090381	AddNodeIds1658932090381
19	1659902242948	AddJsonKeyPinData1659902242948
20	1660062385367	CreateCredentialsUserRole1660062385367
21	1663755770893	CreateWorkflowsEditorRole1663755770893
22	1664196174001	WorkflowStatistics1664196174001
23	1665484192212	CreateCredentialUsageTable1665484192212
24	1665754637025	RemoveCredentialUsageTable1665754637025
25	1669739707126	AddWorkflowVersionIdColumn1669739707126
26	1669823906995	AddTriggerCountColumn1669823906995
27	1671535397530	MessageEventBusDestinations1671535397530
28	1671726148421	RemoveWorkflowDataLoadedFlag1671726148421
29	1673268682475	DeleteExecutionsWithWorkflows1673268682475
30	1674138566000	AddStatusToExecutions1674138566000
31	1674509946020	CreateLdapEntities1674509946020
32	1675940580449	PurgeInvalidWorkflowConnections1675940580449
33	1676996103000	MigrateExecutionStatus1676996103000
34	1677236854063	UpdateRunningExecutionStatus1677236854063
35	1677501636754	CreateVariables1677501636754
36	1679416281778	CreateExecutionMetadataTable1679416281778
37	1681134145996	AddUserActivatedProperty1681134145996
38	1681134145997	RemoveSkipOwnerSetup1681134145997
39	1690000000000	MigrateIntegerKeysToString1690000000000
40	1690000000020	SeparateExecutionData1690000000020
41	1690000000030	RemoveResetPasswordColumns1690000000030
42	1690000000030	AddMfaColumns1690000000030
43	1690787606731	AddMissingPrimaryKeyOnExecutionData1690787606731
44	1691088862123	CreateWorkflowNameIndex1691088862123
45	1692967111175	CreateWorkflowHistoryTable1692967111175
46	1693491613982	ExecutionSoftDelete1693491613982
47	1693554410387	DisallowOrphanExecutions1693554410387
48	1694091729095	MigrateToTimestampTz1694091729095
49	1695128658538	AddWorkflowMetadata1695128658538
50	1695829275184	ModifyWorkflowHistoryNodesAndConnections1695829275184
51	1700571993961	AddGlobalAdminRole1700571993961
52	1705429061930	DropRoleMapping1705429061930
53	1711018413374	RemoveFailedExecutionStatus1711018413374
54	1711390882123	MoveSshKeysToDatabase1711390882123
55	1712044305787	RemoveNodesAccess1712044305787
56	1714133768519	CreateProject1714133768519
57	1714133768521	MakeExecutionStatusNonNullable1714133768521
58	1717498465931	AddActivatedAtUserSetting1717498465931
59	1720101653148	AddConstraintToExecutionMetadata1720101653148
60	1721377157740	FixExecutionMetadataSequence1721377157740
61	1723627610222	CreateInvalidAuthTokenTable1723627610222
62	1723796243146	RefactorExecutionIndices1723796243146
63	1724753530828	CreateAnnotationTables1724753530828
64	1724951148974	AddApiKeysTable1724951148974
65	1726606152711	CreateProcessedDataTable1726606152711
66	1727427440136	SeparateExecutionCreationFromStart1727427440136
67	1728659839644	AddMissingPrimaryKeyOnAnnotationTagMapping1728659839644
68	1728659839644	AddMissingPrimaryKeyOnAnnotationTagMapping1728659839644
69	1729607673464	UpdateProcessedDataValueColumnToText1729607673464
70	1729607673469	AddProjectIcons1729607673469
71	1729607673464	UpdateProcessedDataValueColumnToText1729607673464
72	1730386903556	CreateTestDefinitionTable1730386903556
73	1731404028106	AddDescriptionToTestDefinition1731404028106
74	1731582748663	MigrateTestDefinitionKeyToString1731582748663
75	1732271325258	CreateTestMetricTable1732271325258
76	1732549866705	CreateTestRun1732549866705
77	1733133775640	AddMockedNodesColumnToTestDefinition1733133775640
78	1734479635324	AddManagedColumnToCredentialsTable1734479635324
79	1736172058779	AddStatsColumnsToTestRun1736172058779
80	1736947513045	CreateTestCaseExecutionTable1736947513045
81	1737715421462	AddErrorColumnsToTestRuns1737715421462
82	1738709609940	CreateFolderTable1738709609940
83	1739549398681	CreateAnalyticsTables1739549398681
84	1740445074052	UpdateParentFolderIdColumn1740445074052
85	1741167584277	RenameAnalyticsToInsights1741167584277
86	1742918400000	AddScopesColumnToApiKeys1742918400000
87	1745322634000	ClearEvaluation1745322634000
88	1745587087521	AddWorkflowStatisticsRootCount1745587087521
89	1745934666076	AddWorkflowArchivedColumn1745934666076
90	1745934666077	DropRoleTable1745934666077
91	1747824239000	AddProjectDescriptionColumn1747824239000
92	1750252139166	AddLastActiveAtColumnToUser1750252139166
93	1750252139166	AddScopeTables1750252139166
94	1750252139167	AddRolesTables1750252139167
95	1750252139168	LinkRoleToUserTable1750252139168
96	1750252139170	RemoveOldRoleColumn1750252139170
97	1752669793000	AddInputsOutputsToTestCaseExecution1752669793000
98	1753953244168	LinkRoleToProjectRelationTable1753953244168
99	1754475614601	CreateDataStoreTables1754475614601
100	1754475614602	ReplaceDataStoreTablesWithDataTables1754475614602
101	1756906557570	AddTimestampsToRoleAndRoleIndexes1756906557570
102	1758731786132	AddAudienceColumnToApiKeys1758731786132
103	1758794506893	AddProjectIdToVariableTable1758794506893
104	1759399811000	ChangeValueTypesForInsights1759399811000
105	1760019379982	CreateChatHubTables1760019379982
106	1760020000000	CreateChatHubAgentTable1760020000000
107	1760020838000	UniqueRoleNames1760020838000
108	1760116750277	CreateOAuthEntities1760116750277
109	1760314000000	CreateWorkflowDependencyTable1760314000000
110	1760965142113	DropUnusedChatHubColumns1760965142113
111	1761047826451	AddWorkflowVersionColumn1761047826451
112	1761655473000	ChangeDependencyInfoToJson1761655473000
113	1761773155024	AddAttachmentsToChatHubMessages1761773155024
114	1761830340990	AddToolsColumnToChatHubTables1761830340990
115	1762177736257	AddWorkflowDescriptionColumn1762177736257
116	1762763704614	BackfillMissingWorkflowHistoryRecords1762763704614
117	1762771264000	ChangeDefaultForIdInUserTable1762771264000
118	1762771954619	AddIsGlobalColumnToCredentialsTable1762771954619
119	1762847206508	AddWorkflowHistoryAutoSaveFields1762847206508
120	1763047800000	AddActiveVersionIdColumn1763047800000
121	1763048000000	ActivateExecuteWorkflowTriggerWorkflows1763048000000
122	1763572724000	ChangeOAuthStateColumnToUnboundedVarchar1763572724000
123	1763716655000	CreateBinaryDataTable1763716655000
124	1764167920585	CreateWorkflowPublishHistoryTable1764167920585
125	1764276827837	AddCreatorIdToProjectTable1764276827837
126	1764682447000	CreateDynamicCredentialResolverTable1764682447000
127	1764689388394	AddDynamicCredentialEntryTable1764689388394
128	1765448186933	BackfillMissingWorkflowHistoryRecords1765448186933
129	1765459448000	AddResolvableFieldsToCredentials1765459448000
130	1765788427674	AddIconToAgentTable1765788427674
131	1765804780000	ConvertAgentIdToUuid1765804780000
132	1765886667897	AddAgentIdForeignKeys1765886667897
133	1765892199653	AddWorkflowVersionIdToExecutionData1765892199653
134	1766064542000	AddWorkflowPublishScopeToProjectRoles1766064542000
135	1766068346315	AddChatMessageIndices1766068346315
136	1766500000000	ExpandInsightsWorkflowIdLength1766500000000
137	1767018516000	ChangeWorkflowStatisticsFKToNoAction1767018516000
138	1768402473068	ExpandModelColumnLength1768402473068
139	1768557000000	AddStoredAtToExecutionEntity1768557000000
140	1768901721000	AddDynamicCredentialUserEntryTable1768901721000
141	1769000000000	AddPublishedVersionIdToWorkflowDependency1769000000000
142	1769433700000	CreateSecretsProviderConnectionTables1769433700000
143	1769698710000	CreateWorkflowPublishedVersionTable1769698710000
144	1769784356000	ExpandSubjectIDColumnLength1769784356000
145	1769900001000	AddWorkflowUnpublishScopeToCustomRoles1769900001000
146	1770000000000	CreateChatHubToolsTable1770000000000
147	1770000000000	ExpandProviderIdColumnLength1770000000000
148	1770220686000	CreateWorkflowBuilderSessionTable1770220686000
149	1771417407753	AddScalingFieldsToTestRun1771417407753
150	1771500000000	MigrateExternalSecretsToEntityStorage1771500000000
151	1771500000001	AddUnshareScopeToCustomRoles1771500000001
152	1771500000002	AddFilesColumnToChatHubAgents1771500000002
153	1772000000000	AddSuggestedPromptsToAgentTable1772000000000
154	1772619247761	AddRoleColumnToProjectSecretsProviderAccess1772619247761
155	1772619247762	ChangeWorkflowPublishedVersionFKsToRestrict1772619247762
156	1772700000000	AddTypeToChatHubSessions1772700000000
157	1772800000000	CreateRoleMappingRuleTable1772800000000
158	1773000000000	CreateCredentialDependencyTable1773000000000
159	1774280963551	AddRestoreFieldsToWorkflowBuilderSession1774280963551
160	1774854660000	CreateInstanceVersionHistoryTable1774854660000
161	1775000000000	CreateInstanceAiTables1775000000000
162	1775116241000	CreateTokenExchangeJtiTable1775116241000
163	1775740765000	ChangeWorkflowPublishHistoryVersionIdToSetNull1775740765000
164	1776000000000	CreateTrustedKeyTables1776000000000
165	1776150756000	CreateFavoritesTable1776150756000
166	1777000000000	CreateDeploymentKeyTable1777000000000
167	1777023444000	AddJweKeyIndexesToDeploymentKey1777023444000
168	1777045000000	AddTracingContextToExecution1777045000000
169	1777100000000	AddLangsmithIdsToInstanceAiRunSnapshots1777100000000
170	1777281990043	CreateAiBuilderTemporaryWorkflowTable1777281990043
171	1777420800000	ExpandVariablesValueColumnToText1777420800000
172	1777996709110	AddRunIndexToTestCaseExecution1777996709110
173	1778000000000	AddExecutionDeduplicationKey1778000000000
174	1778100000000	CreateEvaluationConfig1778100000000
175	1778100001000	AddWorkflowVersionToTestRun1778100001000
176	1778100002000	AddEvaluationConfigColumnsToTestRun1778100002000
177	1778496086558	CreateEvaluationCollection1778496086558
178	1783000000000	CreateAgentTables1783000000000
179	1783000000001	CreateAgentExecutionTables1783000000001
180	1784000000000	CreateAgentObservationTables1784000000000
181	1784000000001	ReplaceAgentObservationTables1784000000001
182	1784000000002	DropAgentExecutionWorkingMemory1784000000002
183	1784000000003	LimitWorkflowVersionTriggerToContent1784000000003
184	1784000000004	AddInsightsRawTimestampIdIndex1784000000004
185	1784000000005	CreateMcpRegistryServerTable1784000000005
186	1784000000006	AddNodeGroupsColumnToWorkflowAndHistory1784000000006
187	1784000000007	CreateInstanceAiCheckpointTable1784000000007
188	1784000000008	ResetInstanceAiNativePersistence1784000000008
189	1784000000009	CreateAgentMemoryEntryTables1784000000009
190	1784000000010	RefactorAgentObservationScope1784000000010
191	1784000000011	CreateAgentHistoryTable1784000000011
192	1784000000012	CreateInstanceAiObservationTables1784000000012
193	1784000000013	SplitRedactionScopeInCustomRoles1784000000013
194	1784000000014	PersistInstanceAiPendingConfirmations1784000000014
195	1784000000015	AddSourceWorkflowIdToWorkflow1784000000015
196	1784000000016	UseSlugAsPrimaryKeyInMcpRegistryServer1784000000016
197	1784000000017	AddLastUsedAtToApiKey1784000000017
198	1784000000018	CreateAgentFilesTable1784000000018
199	1784000000019	AddCustomTelemetryTagsToProject1784000000019
200	1784000000021	CreateAgentTaskDefinitionTable1784000000021
201	1784000000022	AddSubAgentLinkageToAgentExecutionThreads1784000000022
202	1784000000023	CreateInstanceAiMcpRegistryConnectionTable1784000000023
203	1784000000024	AddResourceToOAuthAuthorizationCodes1784000000024
204	1784000000025	MigrateRedactionEnforcementToFloor1784000000025
205	1784000000026	AddScopeColumnToOAuthTables1784000000026
206	1784000000027	CreateWorkflowPublicationOutboxTable1784000000027
207	1784000000028	AddProjectIdToInstanceAiThread1784000000028
208	1784000000029	AddJsonSizeBytesAndWorkflowVersionIdToExecutionEntity1784000000029
209	1784000000030	CreateAgentChatSubscriptions1784000000030
210	1784000000031	AddExecutionEntityWorkflowStatusIndex1784000000031
211	1784000000033	AddBinaryDataSizeBytesToExecutionEntity1784000000033
212	1784000000034	AllowAzureStoredAt1784000000034
213	1784000000035	AddUniqueAgentFileNames1784000000035
214	1784000000036	CreateInstanceAiThreadGrantTable1784000000036
215	1784000000037	DropAgentDescriptionFromAgents1784000000037
216	1784000000038	SetChatHubEnabledFromUsage1784000000038
217	1784000000038	SetChatHubEnabledFromUsage1784000000038
218	1784000000039	DropAgentExecutionFallbackColumns1784000000039
219	1784000000040	CreateWorkflowPublicationTriggerStatusTable1784000000040
220	1784000000041	AddUsedPrivateCredentialsToExecutionEntity1784000000041
221	1784000000042	CreateSchedulerTables1784000000042
222	1784000000043	CreateWorkflowStatisticsDeltaTable1784000000043
223	1784000000044	AddPartialIndexForGlobalCredentials1784000000044
224	1784000000045	AddRecurringCronScheduleKind1784000000045
225	1784000000046	CreateInstanceAiEventsTable1784000000046
226	1784000000047	BackfillPreScopingOAuthGrantScopes1784000000047
227	1784000000048	AddTriggerKindToWorkflowPublicationTriggerStatus1784000000048
228	1784000000049	AddScheduledTaskDispatchedAt1784000000049
229	1784000000050	AddHostRunIdToInstanceAiCheckpoints1784000000050
230	1784000000051	BackfillInstanceAiEventLog1784000000051
231	1784000000052	CreateWorkflowReviewRequestTables1784000000052
232	1784815940110	AddStoredAtToAgentExecution1784815940110
233	1784815940111	AddInstanceCredentials1784815940111
234	1784815940112	CreateAgentEvalTables1784815940112
235	1784897791636	AddAvailableInMcpToAgents1784897791636
236	1785162364000	ChangeInstalledNodeVersionType1785162364000
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_clients" ("id", "name", "redirectUris", "grantTypes", "clientSecret", "clientSecretExpiresAt", "tokenEndpointAuthMethod", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: oauth_access_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_access_tokens" ("token", "clientId", "userId") FROM stdin;
\.


--
-- Data for Name: oauth_authorization_codes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_authorization_codes" ("code", "clientId", "userId", "redirectUri", "codeChallenge", "codeChallengeMethod", "expiresAt", "state", "used", "createdAt", "updatedAt", "resource", "scope") FROM stdin;
\.


--
-- Data for Name: oauth_refresh_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_refresh_tokens" ("token", "clientId", "userId", "expiresAt", "createdAt", "updatedAt", "scope") FROM stdin;
\.


--
-- Data for Name: oauth_user_consents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_user_consents" ("id", "userId", "clientId", "grantedAt", "scope") FROM stdin;
\.


--
-- Data for Name: processed_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."processed_data" ("workflowId", "context", "createdAt", "updatedAt", "value") FROM stdin;
\.


--
-- Data for Name: project_relation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project_relation" ("projectId", "userId", "role", "createdAt", "updatedAt") FROM stdin;
eS9NOzdDSGCiAdTX	ce532153-117a-46ae-a875-ae7b60c84708	project:personalOwner	2026-08-04 06:20:39.185+00	2026-08-04 06:20:39.185+00
\.


--
-- Data for Name: secrets_provider_connection; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."secrets_provider_connection" ("id", "providerKey", "type", "encryptedSettings", "isEnabled", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: project_secrets_provider_access; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project_secrets_provider_access" ("secretsProviderConnectionId", "projectId", "createdAt", "updatedAt", "role") FROM stdin;
\.


--
-- Data for Name: role_mapping_rule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role_mapping_rule" ("id", "expression", "role", "type", "order", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: role_mapping_rule_project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role_mapping_rule_project" ("roleMappingRuleId", "projectId") FROM stdin;
\.


--
-- Data for Name: scope; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."scope" ("slug", "displayName", "description") FROM stdin;
workflow:unpublish	Unpublish Workflow	Allows unpublishing workflows.
workflow:unshare	Unshare Workflow	Allows removing workflow shares.
credential:unshare	Unshare Credential	Allows removing credential shares.
agent:create	Create Agent	Allows creating new agents in a project.
agent:read	Read Agent	Allows reading agent configuration and history.
agent:update	Update Agent	Allows updating, building, publishing, and managing integrations of agents.
agent:delete	Delete Agent	Allows deleting agents.
agent:list	List Agents	Allows listing agents in a project.
agent:execute	Execute Agent	Allows running agents in chat.
agent:publish	Publish Agent	Allows publishing agents.
agent:unpublish	Unpublish Agent	Allows unpublishing agents.
agent:manage	agent:manage	\N
aiAssistant:manage	Manage AI Usage	Allows managing AI Usage settings.
annotationTag:create	Create Annotation Tag	Allows creating new annotation tags.
annotationTag:read	annotationTag:read	\N
annotationTag:update	annotationTag:update	\N
annotationTag:delete	annotationTag:delete	\N
annotationTag:list	annotationTag:list	\N
auditLogs:manage	auditLogs:manage	\N
banner:dismiss	banner:dismiss	\N
community:register	community:register	\N
communityPackage:install	communityPackage:install	\N
communityPackage:uninstall	communityPackage:uninstall	\N
communityPackage:update	communityPackage:update	\N
communityPackage:list	communityPackage:list	\N
communityPackage:manage	communityPackage:manage	\N
credential:share	credential:share	\N
credential:shareGlobally	credential:shareGlobally	\N
credential:move	credential:move	\N
credential:connect	Connect End-User Credential	Allows connecting an own account to an end-user credential.
credential:createEndUser	Manage End-User Credential	Allows creating, deleting, and changing the type of end-user credentials, which resolve to each user's own connection.
credential:create	credential:create	\N
credential:read	credential:read	\N
credential:update	credential:update	\N
credential:delete	credential:delete	\N
credential:list	credential:list	\N
externalSecretsProvider:sync	externalSecretsProvider:sync	\N
externalSecretsProvider:create	externalSecretsProvider:create	\N
externalSecretsProvider:read	externalSecretsProvider:read	\N
externalSecretsProvider:update	externalSecretsProvider:update	\N
externalSecretsProvider:delete	externalSecretsProvider:delete	\N
externalSecretsProvider:list	externalSecretsProvider:list	\N
externalSecret:list	externalSecret:list	\N
eventBusDestination:test	eventBusDestination:test	\N
eventBusDestination:create	eventBusDestination:create	\N
eventBusDestination:read	eventBusDestination:read	\N
eventBusDestination:update	eventBusDestination:update	\N
eventBusDestination:delete	eventBusDestination:delete	\N
eventBusDestination:list	eventBusDestination:list	\N
ldap:sync	ldap:sync	\N
ldap:manage	ldap:manage	\N
license:manage	license:manage	\N
logStreaming:manage	logStreaming:manage	\N
orchestration:read	orchestration:read	\N
orchestration:list	orchestration:list	\N
project:create	project:create	\N
project:read	project:read	\N
project:update	project:update	\N
project:delete	project:delete	\N
project:list	project:list	\N
project:export	Export Project	Allows including projects in a portable package export.
saml:manage	saml:manage	\N
securityAudit:generate	securityAudit:generate	\N
securitySettings:manage	securitySettings:manage	\N
sourceControl:pull	sourceControl:pull	\N
sourceControl:push	sourceControl:push	\N
sourceControl:manage	sourceControl:manage	\N
tag:create	tag:create	\N
tag:read	tag:read	\N
tag:update	tag:update	\N
tag:delete	tag:delete	\N
tag:list	tag:list	\N
user:resetPassword	user:resetPassword	\N
user:changeRole	user:changeRole	\N
user:enforceMfa	user:enforceMfa	\N
user:generateInviteLink	user:generateInviteLink	\N
user:create	user:create	\N
user:read	user:read	\N
user:update	user:update	\N
user:delete	user:delete	\N
user:list	user:list	\N
variable:create	variable:create	\N
variable:read	variable:read	\N
variable:update	variable:update	\N
variable:delete	variable:delete	\N
variable:list	variable:list	\N
projectVariable:create	projectVariable:create	\N
projectVariable:read	projectVariable:read	\N
projectVariable:update	projectVariable:update	\N
projectVariable:delete	projectVariable:delete	\N
projectVariable:list	projectVariable:list	\N
workersView:manage	workersView:manage	\N
workflow:share	workflow:share	\N
workflow:execute	workflow:execute	\N
workflow:execute-chat	Execute Workflow in Chat	Allows executing workflows in chat.
workflow:export	Export Workflow	Allows including workflows in a portable package export.
workflow:import	Import Workflow	Allows importing workflows from a portable package into the project.
workflow:move	workflow:move	\N
workflow:activate	workflow:activate	\N
workflow:deactivate	workflow:deactivate	\N
workflow:create	workflow:create	\N
workflow:read	workflow:read	\N
workflow:update	workflow:update	\N
workflow:delete	workflow:delete	\N
workflow:list	workflow:list	\N
folder:create	folder:create	\N
folder:read	folder:read	\N
folder:update	folder:update	\N
folder:delete	folder:delete	\N
folder:list	folder:list	\N
folder:move	folder:move	\N
insights:list	insights:list	\N
insights:read	Read Insights	Allows reading insights data.
oidc:manage	oidc:manage	\N
provisioning:manage	provisioning:manage	\N
dataTable:create	dataTable:create	\N
dataTable:read	dataTable:read	\N
dataTable:update	dataTable:update	\N
dataTable:delete	dataTable:delete	\N
dataTable:list	dataTable:list	\N
dataTable:readRow	dataTable:readRow	\N
dataTable:writeRow	dataTable:writeRow	\N
dataTable:readColumn	dataTable:readColumn	\N
dataTable:writeColumn	dataTable:writeColumn	\N
dataTable:listProject	dataTable:listProject	\N
execution:delete	execution:delete	\N
execution:read	execution:read	\N
execution:retry	execution:retry	\N
execution:list	execution:list	\N
execution:get	execution:get	\N
execution:reveal	execution:reveal	\N
testRun:read	Read Test Run	Allows reading evaluation test runs and their per-case results.
testRun:list	List Test Runs	Allows listing evaluation test runs for a workflow.
workflowTags:update	workflowTags:update	\N
workflowTags:list	workflowTags:list	\N
role:manage	role:manage	\N
role:read	role:read	\N
role:manageProject	Manage project roles	Allows creating, editing, and deleting project role definitions.
mcp:manage	mcp:manage	\N
mcp:oauth	mcp:oauth	\N
mcpApiKey:create	mcpApiKey:create	\N
mcpApiKey:rotate	mcpApiKey:rotate	\N
chatHub:manage	chatHub:manage	\N
chatHub:message	chatHub:message	\N
chatHubAgent:create	chatHubAgent:create	\N
chatHubAgent:read	chatHubAgent:read	\N
chatHubAgent:update	chatHubAgent:update	\N
chatHubAgent:delete	chatHubAgent:delete	\N
chatHubAgent:list	chatHubAgent:list	\N
breakingChanges:list	breakingChanges:list	\N
apiKey:manage	apiKey:manage	\N
apiKey:list	apiKey:list	\N
apiKey:create	apiKey:create	\N
apiKey:delete	apiKey:delete	\N
apiKey:update	apiKey:update	\N
encryptionKey:manage	Manage Encryption Keys	Allows listing and rotating instance encryption keys.
credentialResolver:create	credentialResolver:create	\N
credentialResolver:read	credentialResolver:read	\N
credentialResolver:update	credentialResolver:update	\N
credentialResolver:delete	credentialResolver:delete	\N
credentialResolver:list	credentialResolver:list	\N
instanceAi:message	instanceAi:message	\N
instanceAi:manage	instanceAi:manage	\N
instanceAi:gateway	instanceAi:gateway	\N
instanceAi:eval	instanceAi:eval	\N
roleMappingRule:create	roleMappingRule:create	\N
roleMappingRule:read	roleMappingRule:read	\N
roleMappingRule:update	roleMappingRule:update	\N
roleMappingRule:delete	roleMappingRule:delete	\N
roleMappingRule:list	roleMappingRule:list	\N
otel:manage	otel:manage	\N
workflow:publish	Publish Workflow	Allows publishing workflows.
workflow:enableRedaction	workflow:enableRedaction	\N
workflow:disableRedaction	workflow:disableRedaction	\N
credential:manageInstance	Manage provider connections	Allows creating, updating, and deleting provider connections used by instance-level features. These connections are not available in workflows.
\.


--
-- Data for Name: role_scope; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role_scope" ("roleSlug", "scopeSlug") FROM stdin;
global:owner	workflow:unpublish
global:owner	workflow:unshare
global:owner	credential:unshare
global:owner	agent:create
global:owner	agent:read
global:owner	agent:update
global:owner	agent:delete
global:owner	agent:list
global:owner	agent:execute
global:owner	agent:publish
global:owner	agent:unpublish
global:owner	agent:manage
global:owner	aiAssistant:manage
global:owner	annotationTag:create
global:owner	annotationTag:read
global:owner	annotationTag:update
global:owner	annotationTag:delete
global:owner	annotationTag:list
global:owner	auditLogs:manage
global:owner	banner:dismiss
global:owner	community:register
global:owner	communityPackage:install
global:owner	communityPackage:uninstall
global:owner	communityPackage:update
global:owner	communityPackage:list
global:owner	credential:share
global:owner	credential:shareGlobally
global:owner	credential:move
global:owner	credential:connect
global:owner	credential:createEndUser
global:owner	credential:create
global:owner	credential:read
global:owner	credential:update
global:owner	credential:delete
global:owner	credential:list
global:owner	externalSecretsProvider:sync
global:owner	externalSecretsProvider:create
global:owner	externalSecretsProvider:read
global:owner	externalSecretsProvider:update
global:owner	externalSecretsProvider:delete
global:owner	externalSecretsProvider:list
global:owner	externalSecret:list
global:owner	eventBusDestination:test
global:owner	eventBusDestination:create
global:owner	eventBusDestination:read
global:owner	eventBusDestination:update
global:owner	eventBusDestination:delete
global:owner	eventBusDestination:list
global:owner	ldap:sync
global:owner	ldap:manage
global:owner	license:manage
global:owner	logStreaming:manage
global:owner	orchestration:read
global:owner	project:create
global:owner	project:read
global:owner	project:update
global:owner	project:delete
global:owner	project:list
global:owner	project:export
global:owner	saml:manage
global:owner	securityAudit:generate
global:owner	securitySettings:manage
global:owner	sourceControl:pull
global:owner	sourceControl:push
global:owner	sourceControl:manage
global:owner	tag:create
global:owner	tag:read
global:owner	tag:update
global:owner	tag:delete
global:owner	tag:list
global:owner	user:resetPassword
global:owner	user:changeRole
global:owner	user:enforceMfa
global:owner	user:generateInviteLink
global:owner	user:create
global:owner	user:read
global:owner	user:update
global:owner	user:delete
global:owner	user:list
global:owner	variable:create
global:owner	variable:read
global:owner	variable:update
global:owner	variable:delete
global:owner	variable:list
global:owner	projectVariable:create
global:owner	projectVariable:read
global:owner	projectVariable:update
global:owner	projectVariable:delete
global:owner	projectVariable:list
global:owner	workersView:manage
global:owner	workflow:share
global:owner	workflow:execute
global:owner	workflow:execute-chat
global:owner	workflow:export
global:owner	workflow:import
global:owner	workflow:move
global:owner	workflow:create
global:owner	workflow:read
global:owner	workflow:update
global:owner	workflow:delete
global:owner	workflow:list
global:owner	folder:create
global:owner	folder:read
global:owner	folder:update
global:owner	folder:delete
global:owner	folder:list
global:owner	folder:move
global:owner	insights:list
global:owner	insights:read
global:owner	oidc:manage
global:owner	provisioning:manage
global:owner	dataTable:create
global:owner	dataTable:read
global:owner	dataTable:update
global:owner	dataTable:delete
global:owner	dataTable:list
global:owner	dataTable:readRow
global:owner	dataTable:writeRow
global:owner	dataTable:readColumn
global:owner	dataTable:writeColumn
global:owner	dataTable:listProject
global:owner	execution:reveal
global:owner	role:manage
global:owner	role:read
global:owner	mcp:manage
global:owner	mcp:oauth
global:owner	mcpApiKey:create
global:owner	mcpApiKey:rotate
global:owner	chatHub:manage
global:owner	chatHub:message
global:owner	chatHubAgent:create
global:owner	chatHubAgent:read
global:owner	chatHubAgent:update
global:owner	chatHubAgent:delete
global:owner	chatHubAgent:list
global:owner	breakingChanges:list
global:owner	apiKey:manage
global:owner	apiKey:list
global:owner	apiKey:create
global:owner	apiKey:delete
global:owner	apiKey:update
global:owner	encryptionKey:manage
global:owner	credentialResolver:create
global:owner	credentialResolver:read
global:owner	credentialResolver:update
global:owner	credentialResolver:delete
global:owner	credentialResolver:list
global:owner	instanceAi:message
global:owner	instanceAi:manage
global:owner	instanceAi:gateway
global:owner	instanceAi:eval
global:owner	roleMappingRule:create
global:owner	roleMappingRule:read
global:owner	roleMappingRule:update
global:owner	roleMappingRule:delete
global:owner	roleMappingRule:list
global:owner	otel:manage
global:owner	workflow:publish
global:owner	workflow:enableRedaction
global:owner	workflow:disableRedaction
global:owner	credential:manageInstance
global:admin	workflow:unpublish
global:admin	workflow:unshare
global:admin	credential:unshare
global:admin	agent:create
global:admin	agent:read
global:admin	agent:update
global:admin	agent:delete
global:admin	agent:list
global:admin	agent:execute
global:admin	agent:publish
global:admin	agent:unpublish
global:admin	agent:manage
global:admin	annotationTag:create
global:admin	annotationTag:read
global:admin	annotationTag:update
global:admin	annotationTag:delete
global:admin	annotationTag:list
global:admin	auditLogs:manage
global:admin	banner:dismiss
global:admin	community:register
global:admin	communityPackage:install
global:admin	communityPackage:uninstall
global:admin	communityPackage:update
global:admin	communityPackage:list
global:admin	credential:share
global:admin	aiAssistant:manage
global:admin	credential:move
global:admin	credential:shareGlobally
global:admin	credential:connect
global:admin	credential:create
global:admin	credential:read
global:admin	credential:update
global:admin	credential:delete
global:admin	credential:list
global:admin	externalSecretsProvider:sync
global:admin	externalSecretsProvider:create
global:admin	externalSecretsProvider:read
global:admin	externalSecretsProvider:update
global:admin	externalSecretsProvider:delete
global:admin	externalSecretsProvider:list
global:admin	externalSecret:list
global:admin	eventBusDestination:test
global:admin	eventBusDestination:create
global:admin	eventBusDestination:read
global:admin	eventBusDestination:update
global:admin	eventBusDestination:delete
global:admin	eventBusDestination:list
global:admin	ldap:sync
global:admin	ldap:manage
global:admin	license:manage
global:admin	logStreaming:manage
global:admin	orchestration:read
global:admin	project:create
global:admin	project:read
global:admin	project:update
global:admin	project:delete
global:admin	project:list
global:admin	credential:createEndUser
global:admin	saml:manage
global:admin	securityAudit:generate
global:admin	project:export
global:admin	sourceControl:pull
global:admin	sourceControl:push
global:admin	sourceControl:manage
global:admin	tag:create
global:admin	tag:read
global:admin	tag:update
global:admin	tag:delete
global:admin	tag:list
global:admin	user:resetPassword
global:admin	user:changeRole
global:admin	user:enforceMfa
global:admin	securitySettings:manage
global:admin	user:create
global:admin	user:read
global:admin	user:update
global:admin	user:delete
global:admin	user:list
global:admin	variable:create
global:admin	variable:read
global:admin	variable:update
global:admin	variable:delete
global:admin	variable:list
global:admin	user:generateInviteLink
global:admin	projectVariable:create
global:admin	projectVariable:read
global:admin	projectVariable:update
global:admin	projectVariable:delete
global:admin	workersView:manage
global:admin	workflow:share
global:admin	workflow:execute
global:admin	projectVariable:list
global:admin	workflow:execute-chat
global:admin	workflow:export
global:admin	workflow:move
global:admin	workflow:create
global:admin	workflow:read
global:admin	workflow:update
global:admin	workflow:delete
global:admin	workflow:list
global:admin	workflow:import
global:admin	folder:create
global:admin	folder:read
global:admin	folder:update
global:admin	folder:delete
global:admin	folder:move
global:admin	insights:list
global:admin	folder:list
global:admin	oidc:manage
global:admin	insights:read
global:admin	provisioning:manage
global:admin	dataTable:create
global:admin	dataTable:read
global:admin	dataTable:update
global:admin	dataTable:delete
global:admin	dataTable:list
global:admin	dataTable:readRow
global:admin	dataTable:writeRow
global:admin	dataTable:readColumn
global:admin	dataTable:writeColumn
global:admin	dataTable:listProject
global:admin	role:manage
global:admin	execution:reveal
global:admin	role:read
global:admin	mcp:manage
global:admin	mcp:oauth
global:admin	mcpApiKey:create
global:admin	mcpApiKey:rotate
global:admin	chatHub:manage
global:admin	chatHub:message
global:admin	chatHubAgent:create
global:admin	chatHubAgent:read
global:admin	chatHubAgent:update
global:admin	chatHubAgent:delete
global:admin	chatHubAgent:list
global:admin	breakingChanges:list
global:admin	apiKey:manage
global:admin	apiKey:list
global:admin	apiKey:create
global:admin	apiKey:delete
global:admin	apiKey:update
global:admin	encryptionKey:manage
global:admin	credentialResolver:create
global:admin	credentialResolver:read
global:admin	credentialResolver:update
global:admin	credentialResolver:delete
global:admin	credentialResolver:list
global:admin	instanceAi:message
global:admin	instanceAi:manage
global:admin	instanceAi:gateway
global:admin	instanceAi:eval
global:admin	roleMappingRule:create
global:admin	roleMappingRule:read
global:admin	roleMappingRule:update
global:admin	roleMappingRule:delete
global:admin	roleMappingRule:list
global:admin	otel:manage
global:admin	workflow:publish
global:admin	workflow:enableRedaction
global:member	annotationTag:create
global:member	annotationTag:read
global:member	annotationTag:update
global:member	annotationTag:delete
global:member	annotationTag:list
global:member	eventBusDestination:test
global:member	eventBusDestination:list
global:member	tag:create
global:member	tag:read
global:member	tag:update
global:member	tag:list
global:member	user:list
global:member	variable:read
global:member	variable:list
global:admin	workflow:disableRedaction
global:admin	credential:manageInstance
global:member	dataTable:list
global:member	mcp:oauth
global:member	mcpApiKey:create
global:member	mcpApiKey:rotate
global:member	chatHub:message
global:member	chatHubAgent:create
global:member	chatHubAgent:read
global:member	chatHubAgent:update
global:member	chatHubAgent:delete
global:member	chatHubAgent:list
global:member	apiKey:list
global:member	apiKey:create
global:member	apiKey:delete
global:member	apiKey:update
global:member	credentialResolver:list
global:chatUser	chatHub:message
global:chatUser	chatHubAgent:create
global:chatUser	chatHubAgent:read
global:chatUser	chatHubAgent:update
global:chatUser	chatHubAgent:delete
global:chatUser	chatHubAgent:list
global:member	instanceAi:message
global:member	instanceAi:gateway
project:admin	workflow:unpublish
project:admin	credential:unshare
project:admin	agent:create
project:admin	agent:read
project:admin	agent:update
project:admin	agent:delete
project:admin	agent:list
project:admin	agent:execute
project:admin	credential:share
project:admin	credential:move
project:admin	agent:publish
project:admin	agent:unpublish
project:admin	credential:create
project:admin	credential:read
project:admin	credential:update
project:admin	credential:delete
project:admin	credential:list
project:admin	project:read
project:admin	project:update
project:admin	project:delete
project:admin	project:list
project:admin	credential:connect
project:admin	sourceControl:push
project:admin	credential:createEndUser
project:admin	project:export
project:admin	projectVariable:create
project:admin	projectVariable:read
project:admin	projectVariable:update
project:admin	workflow:execute
project:admin	projectVariable:delete
project:admin	projectVariable:list
project:admin	workflow:execute-chat
project:admin	workflow:move
project:admin	workflow:create
project:admin	workflow:read
project:admin	workflow:update
project:admin	workflow:delete
project:admin	workflow:list
project:admin	folder:create
project:admin	folder:read
project:admin	folder:update
project:admin	folder:delete
project:admin	folder:list
project:admin	folder:move
project:admin	workflow:export
project:admin	workflow:import
project:admin	dataTable:create
project:admin	dataTable:read
project:admin	dataTable:update
project:admin	dataTable:delete
project:admin	dataTable:readRow
project:admin	dataTable:writeRow
project:admin	dataTable:readColumn
project:admin	dataTable:writeColumn
project:admin	dataTable:listProject
project:admin	execution:reveal
project:admin	workflow:publish
project:admin	workflow:enableRedaction
project:admin	workflow:disableRedaction
project:personalOwner	workflow:unpublish
project:personalOwner	workflow:unshare
project:personalOwner	credential:unshare
project:personalOwner	agent:create
project:personalOwner	agent:read
project:personalOwner	agent:update
project:personalOwner	agent:delete
project:personalOwner	agent:list
project:personalOwner	agent:execute
project:personalOwner	credential:share
project:personalOwner	credential:move
project:personalOwner	agent:publish
project:personalOwner	agent:unpublish
project:personalOwner	credential:create
project:personalOwner	credential:read
project:personalOwner	credential:update
project:personalOwner	credential:delete
project:personalOwner	credential:list
project:personalOwner	project:read
project:personalOwner	project:list
project:personalOwner	credential:connect
project:personalOwner	workflow:share
project:personalOwner	workflow:execute
project:personalOwner	credential:createEndUser
project:personalOwner	project:export
project:personalOwner	workflow:execute-chat
project:personalOwner	workflow:move
project:personalOwner	workflow:create
project:personalOwner	workflow:read
project:personalOwner	workflow:update
project:personalOwner	workflow:delete
project:personalOwner	workflow:list
project:personalOwner	folder:create
project:personalOwner	folder:read
project:personalOwner	folder:update
project:personalOwner	folder:delete
project:personalOwner	folder:list
project:personalOwner	folder:move
project:personalOwner	workflow:export
project:personalOwner	workflow:import
project:personalOwner	dataTable:create
project:personalOwner	dataTable:read
project:personalOwner	dataTable:update
project:personalOwner	dataTable:delete
project:personalOwner	dataTable:readRow
project:personalOwner	dataTable:writeRow
project:personalOwner	dataTable:readColumn
project:personalOwner	dataTable:writeColumn
project:personalOwner	dataTable:listProject
project:personalOwner	execution:reveal
project:personalOwner	workflow:publish
project:personalOwner	workflow:enableRedaction
project:personalOwner	workflow:disableRedaction
project:editor	workflow:unpublish
project:editor	agent:create
project:editor	agent:read
project:editor	agent:update
project:editor	agent:delete
project:editor	agent:list
project:editor	agent:execute
project:editor	agent:publish
project:editor	credential:create
project:editor	credential:read
project:editor	credential:update
project:editor	credential:delete
project:editor	credential:list
project:editor	project:read
project:editor	project:list
project:editor	agent:unpublish
project:editor	credential:connect
project:editor	project:export
project:editor	projectVariable:create
project:editor	projectVariable:read
project:editor	projectVariable:update
project:editor	workflow:execute
project:editor	projectVariable:delete
project:editor	projectVariable:list
project:editor	workflow:execute-chat
project:editor	workflow:create
project:editor	workflow:read
project:editor	workflow:update
project:editor	workflow:delete
project:editor	workflow:list
project:editor	folder:create
project:editor	folder:read
project:editor	folder:update
project:editor	folder:delete
project:editor	folder:list
project:editor	workflow:export
project:editor	workflow:import
project:editor	dataTable:create
project:editor	dataTable:read
project:editor	dataTable:update
project:editor	dataTable:delete
project:editor	dataTable:readRow
project:editor	dataTable:writeRow
project:editor	dataTable:readColumn
project:editor	dataTable:writeColumn
project:editor	dataTable:listProject
project:editor	workflow:publish
project:viewer	agent:read
project:viewer	credential:read
project:viewer	credential:list
project:viewer	project:read
project:viewer	project:list
project:viewer	agent:list
project:viewer	agent:execute
project:viewer	project:export
project:viewer	projectVariable:read
project:viewer	projectVariable:list
project:viewer	workflow:read
project:viewer	workflow:list
project:viewer	folder:read
project:viewer	folder:list
project:viewer	workflow:execute-chat
project:viewer	workflow:export
project:viewer	dataTable:read
project:viewer	dataTable:readRow
project:chatUser	agent:execute
project:chatUser	workflow:execute-chat
project:viewer	dataTable:readColumn
credential:owner	credential:share
credential:owner	credential:move
project:viewer	dataTable:listProject
credential:owner	credential:read
credential:owner	credential:update
credential:owner	credential:delete
credential:owner	credential:unshare
credential:user	credential:read
credential:owner	credential:connect
credential:owner	credential:createEndUser
workflow:owner	workflow:share
workflow:owner	workflow:execute
credential:user	credential:connect
workflow:owner	workflow:unpublish
workflow:owner	workflow:move
workflow:owner	workflow:read
workflow:owner	workflow:update
workflow:owner	workflow:delete
workflow:owner	workflow:unshare
workflow:owner	workflow:execute-chat
workflow:owner	workflow:export
workflow:owner	execution:reveal
workflow:owner	workflow:publish
workflow:editor	workflow:execute
workflow:owner	workflow:enableRedaction
workflow:owner	workflow:disableRedaction
workflow:editor	workflow:read
workflow:editor	workflow:update
workflow:editor	workflow:unpublish
secretsProviderConnection:owner	externalSecretsProvider:sync
secretsProviderConnection:owner	externalSecretsProvider:read
secretsProviderConnection:owner	externalSecretsProvider:update
secretsProviderConnection:owner	externalSecretsProvider:delete
secretsProviderConnection:owner	externalSecretsProvider:list
secretsProviderConnection:owner	externalSecret:list
secretsProviderConnection:user	externalSecretsProvider:read
secretsProviderConnection:user	externalSecretsProvider:list
secretsProviderConnection:user	externalSecret:list
workflow:editor	workflow:execute-chat
workflow:editor	workflow:export
workflow:editor	workflow:publish
\.


--
-- Data for Name: workflow_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_history" ("versionId", "workflowId", "authors", "createdAt", "updatedAt", "nodes", "connections", "name", "autosaved", "description", "nodeGroups") FROM stdin;
\.


--
-- Data for Name: workflow_published_version; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_published_version" ("workflowId", "publishedVersionId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: scheduled_job; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."scheduled_job" ("id", "name", "workflowId", "nodeId", "taskType", "payload", "kind", "cronExpression", "timezone", "intervalSeconds", "fireAt", "enabled", "nextRunAt", "lastFiredAt", "maxAttempts", "createdAt", "updatedAt", "recurrenceUnit", "recurrenceSize") FROM stdin;
\.


--
-- Data for Name: scheduled_task; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."scheduled_task" ("id", "jobId", "taskType", "payload", "scheduledFor", "runAt", "status", "attempts", "maxAttempts", "claimedBy", "leaseExpiresAt", "leaseEpoch", "startedAt", "finishedAt", "errorMessage", "createdAt", "dispatchedAt") FROM stdin;
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."settings" ("key", "value", "loadOnStartup") FROM stdin;
ui.banners.dismissed	["V1"]	t
features.ldap	{"loginEnabled":false,"loginLabel":"","connectionUrl":"","allowUnauthorizedCerts":false,"connectionSecurity":"none","connectionPort":389,"baseDn":"","bindingAdminDn":"","bindingAdminPassword":"","firstNameAttribute":"","lastNameAttribute":"","emailAttribute":"","loginIdAttribute":"","ldapIdAttribute":"","userFilter":"","synchronizationEnabled":false,"synchronizationInterval":60,"searchPageSize":0,"searchTimeout":60,"enforceEmailUniqueness":true}	t
chat.access.enabled	false	t
features.oidc	{"clientId":"","clientSecret":"","discoveryEndpoint":"","loginEnabled":false}	t
userManagement.authenticationMethod	email	t
features.sourceControl.sshKeys	{"encryptedPrivateKey":"U2FsdGVkX1/QM9AgDqaxuUVsqLOuj7RlyemFgC1x1SetvSAYY7Y7QIlfFG3+Vlh2RQGcmjysU7ITQ1PgUXQ1KjuorWcllg53BRs/HTOt9AFt2G57b+WmnuJ5cs5/V/hrWfS0QSgIsBCBA1YMX+gJ7Ll3lnXprlUiOrEmF2Kc+Fo9p2Y8epL12TDO6831MypSz0lG3aqOriTMk1D+/IKLKFpzxAlADhTkzJrD+s9Sn3BvM/PLu7toB+yDvjG9NOphvfHUlyHMTXf5wzlosT+EMr6f6aPD/jZANmcPxauSN7xl8wr8cuBkyjrsJjH9kZaPZG6iS94X7zp3kw7IYkxBJWarzInAQSpjaY9Mrh70xQ050QPf6lofxsUmZ03qvkygCBFU5MXmEYW21Nql17w63BSYgPro6O2tVqIZORhAw0m/c3dg7lg+A+8cxDOG5KkM9pOv6SefN9sJRXb2ZFc7mm5w62erd/QTiJ35F6oBLTYd72+d7MGyEqlmZpfLITsS5BDenbYC6ySwzDSE+nST8CMSrVqOgOG2Wjx02OKBczjsCWSdtVION23nXz7PIpLV","publicKey":"ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIP//IMiahLarZEbTLU3Ua9hq5XWtRxL4RMF/HOO2YKSV n8n deploy key"}	t
features.sourceControl	{"branchName":"main","keyGeneratorType":"ed25519"}	t
userManagement.isInstanceOwnerSetUp	true	t
license.cert	eyJsaWNlbnNlS2V5IjoiLS0tLS1CRUdJTiBMSUNFTlNFIEtFWS0tLS0tXG5lRU9IMUFTSFg2d2Mzck9iWnBrNlplU0l3dk5vZUlvWFgxZTdWNFQyb3ZjU25DTXFFenZUd0p1ZDZxZEpxVGZoXG52Z250WHVaVC9ac3I3M2x1MmI4bFk5LzdJS1NLRlVUM0VwMDc1ZnRZb09oTlhhUkJETzh6M1FDdkV5alhmVzkwXG5Fb0MxL3h6UUtUT0lXaWErQ2tMcjUvdzVBZU14QUUrS2lTamV5dXpwNnhraFRxR1JsZmZUdXliRVJMS29Wek5qXG51RXJ2UmgyTjYxNzJIN1k4eDhvY1cxS2QzM3lvVjUvRkt3SlZ3OGtVT1NuTFcvUWRTRmRKU1gzWTAwZU15bmN1XG54SjRHRUtNam5LL1oxUGVPeC9STTFTa0lML2E3bHlTWmU2UktKWi9Bdmg1TjhCTlNrYkxrM0NiZ04yVVJPNHFwXG5XRm90bi9Ed3hwam1tZStGNGQxdzFBPT18fFUyRnNkR1ZrWDE5TFJoT1VDUEZHVjFPN3lsL091UGRkeDBoNlFKXG5PSldrWDZsT2w1WnpOQk9yZjdPMno5dG1oVHVITG5BNDIwT1Vsd0FRdmxab1BkdDVhZVlQcnp3Z1dMZlN4VjN4XG5iN00zUXBKVmxxcy8wc0JoRkFsUUxtQ25CSXU1TVV4bXhqdk9ibjNmU2hzMVFsWXBrd3RLYzQzRTB6VkdMZUtGXG51M1NqRFRwSVVYQzVmenF3V0F2OE5LeExZSnVYSC9kenNFZ1JQMjZmcTBpMVVvb3RwWTZvWWlGcEphVWFQVml5XG4va3UyTFlGWEN6QU01bzlrS0ZFV0xncGtqeGpVT3ZyNzJRUWlSUmJlOHI1RGlMRTV4UHc5YkNvUXpPRGwyY2NpXG54TDdBMy9ZVXRhSTVaUXVtRnNkL3l1aGhZeVpaVXlCZ2tKNGpmWG13TEJlMG1jaDJUZlNoeExSR3JXV1cwSVE1XG5jV0t4Sy9JUFNYNG81U29VV1VIU0FtZnY1ZG0wZ1E5c2NRdFN4NktDSGdPMEtuVXoyZ3o0NUlzSmI5a21qK3JIXG5HckJsRVZMdjRQWnVTSkhtTS8zTnJvdXdtbE11WFNLZFlRemh3bDhkeVlYZnhvU1JZSmxtOFJEN1NSRDdIaHVyXG5aS0wxV3dlMVNyYnBMU1k2YnJCZnpZTzVpeU9XOENPQ1htUmk5NlIvZUxKcVVMYjQ5Z0FDdjBjR1llRFZiWk00XG5TUlV0Wmh2RFNXekNoaGtXUldmNmtLNUpJcGZqVEdKcnpiZUNxQXR3SFl2SEVCYVU1UnIrY1VnNktqUGlEWEc4XG5pOUo0MGk1a2JGeVVwTndGb1BhMFdXbmk5MXpZbW4xeEtYQXZrQ0lBeGhpZmFDVlNlTFNwTXJpeTdqQzVXNUh5XG5PL0t6VXlrT3IyMUlNSGo5NXRKdTJqZGNBYkoxejBrc2hGdFFtOUl1eG5kbElER2RaQ3ozUUU3b2RrMGkzdWQrXG5FOXNQckZ6R3A2U1lzMTBKQk1kMXdrUDdxVGp3K3VsbVR6T2tBL1lYMWpvb2ZCK3JmMGE5ODVDOEJ5SWI5ZE9GXG5XeHhMY01KeGxJcmRYKzNzcWQzZllIbjVLcUoyZ2toSEVGOFpOazY5MDg2UzF0TlgrRlE4UFdpUTdob0RwbmJCXG5TQ0NsVHozc3h4WHZIZk9XR3NDbVkvam9kczlWTk9mUld3QUlSZGY2ejlSTlp6OEx6SmIzUmhiOVhFRWpEZjE0XG5YSWMvdjZ4ZFpQQ2hkSXQvdnJkWHlIVm9UTlhGUlVhR0RqSW9MeTNJZ2cxQXlYajNMdmxmT21iM2hCWi9salpuXG5IeURtcFBiYXkrNER1UFBBM1J5Y1lQdS9ucEdOeTNqQzc3Mmc0R0NoVGZCZURQU3BwZFZBb1c5VHRXVkJ2VWZsXG5PWEVmdUdKU2dWOWtaTFJTUE5yMENRSVh2TGhiRUtqOHZzTjcvbVYxSHh0VjVoY0FuQ1hXb3hYa1RwRXlIK2ZhXG5NaWF0YmZSR3pOU01KOW9TNGROc011TnBXdmNoVmlYOStMZFpOcitPK2UrMjJEOFkwaWtaeXpNY1pRNlArdlZGXG5PdHV0YWFmZnRFbmN4a3hKU0lBMDQ1VE1aU2c4SExrTWtma2U1c2ZBbEpxNVFPb21ralV6VmNjd0NuOXVucEdFXG5lZjI3Zmd3K3VBVVZlRVdhNHFsMkkydmhFRndWOC80RnY4bWtCVVpCblZPdU44c21JYklRN00vVXZxSWo5SHZhXG5XTkg4VUtxUVpmQlFyY21pUkFab0p0c1MyVnVub3hOVEJyK2lsOWtRSldPdTdER0xGNXZ1aXlUMXU4SlFoeFgzXG4yVW9yWEU1WC9WVk91UFRrZ0Y2aG5YQkl3VjdSUEd1ZUFMdmtoYVNPYlBtak5LNEFvck8zbHpoWGpJVGZOaE9BXG5ubzFSTG1QMW9HRGFsalB6dFExa2xYYXpIOWE3Z1ZRUjBBbWdLczFOTEdwcnVMS01Kbm90eElSLzl2djdkVisrXG5tdDNncDJjK3FmbXFKaTVuNzA0QVdIb0c3UXNtdlVFQVhIQjlUcVZkVkZ5Q3J5NEtlM2xXWTNLWlJuaUpHSVFwXG5KVTFmeXNOTFY0azl4d1owMzBNeGVMd2hJTmtrU0JYMzZVV0RtNVBZMjZjRzJkYzlQZmhYTkJ4RzRlR0tWMGdiXG44b0RaaXk5aEpmWGJ6eFBjTDgwTHZrUXYvNWdUTFZvU1JQc0M1Y2JGOUJydXQ3ajhLcXZkUXdTRStzL3R1VlNHXG5hNnVFRGw1V0c2MmhmNi9MMElBaFFPV01heHdsS0xGNnRQZVA3bzRwRXM4SEJ6QlJTeG1EZWRSVW02YXVTbEkyXG5qMjNheGRjSjB4U2pmTkpXTlBDeTFYaHFqdnU2K1o1QUljUWQwSEJaTWR1eGM5UHZJRi8zMGdwNXUxaFZhdk5LXG5IVkxOYlpQS0lEYkY5Wm1vOXhrbzhRdGhINUdIbkwweGhoaXh0c2NGZG5vd0Q0cDdIVkpZMmVvMmhveklzSTA2XG5XbFJVRmMvT0FuSmdSTlRMN0tacUF3eHdlbDdhdDhqeE45T2tOVHdUbFNTR3ZrM2RacGtyeXRxYnRFOTkrTTNQXG5PRWo0TGNFQmQvR2cxcFZPMmtuVGFoaVZVY1dBNjYrbHNwRm56MXJNK0QxT2M3ZTVCazhGWGdzOTNMTzJGWUlKXG55TXJBdndxU1hRUHo5TjFQYkFiMDZqNEZGd2RzMDNoZkY5ZDFHTHoyM0pVQzRUVDY3bEEwMWxlNVJoR3VYbm45XG51SXl2RWdvTEtLNWRIY2ZhdG9MOFNRVnk5SnUwakd0VTJ1UmRVOFhIaDA3c3NLZEFpb0l5WXNjeXQ5R3lUcXIwXG5VM0ZhQWxReGRacnRKcmx5L1NSSUJTdDlXcmVsZ3h3SnB5S2JYNTBoVTRGNG14eXF6dElvZEZ1NlFwV2JBekhtXG5yd0RKaXZJWUtWQW5wQXFBdyswVUJNc1Bpc2gzWCtpcmpkSjV0MEJBQ29TRlJNclJHQi9TdFhpdWdqQzBPOGNpXG4wZzZLbTN5OXVlcEk5eDJWaURlYzBlSnc3dnJkbTZZQ0t0OU5kQURaVjd0WTlXcUE9PXx8Y2dxZHNzZXZqWWtDXG53VHhaWmw2aGpNQ1hnY0ZwSW50RFovWWVHeWxNQ1QwbThheVY0R053ZTdBTWVlZExzdFFGZUp3a0k0Q2FmWDYxXG5Eb2lrM3NwUjc3OXRNYXk3NGpDSFpWSDdzSUNmWXY1UTQzbzJNVmlrWnBnQ2lWLzA2dGc4dWRWM2hidndSOW1qXG5Cci9VV0hpWjlSMEZWcndCMWR4MWdvNXFsbUFMM29jOUZPcmhsT2w1cGRVMmVOYTBGYmpPTEIwNkwxZSt2cTV3XG5NazhWcXFwVlgwWUlNRGh5cEl5Y1U0MzEvRHVldEJHMUJTdGtnUnQ2VXlCUytsUDB3TkE1eWlHSVB1WmlOM3ArXG5UcHpRaFg3aWRvWUwyZERLMVhRcHRRTEFWbERaaFRMWkozQTdUT2dFK3JjS3FRQ3JjWUtuL1VFa1EzMCtKY1dJXG5wRUJGd1ptQnhBPT1cbi0tLS0tRU5EIExJQ0VOU0UgS0VZLS0tLS0iLCJ4NTA5IjoiLS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tXG5NSUlFRERDQ0FmUUNDUUNxZzJvRFQ4MHh3akFOQmdrcWhraUc5dzBCQVFVRkFEQklNUXN3Q1FZRFZRUUdFd0pFXG5SVEVQTUEwR0ExVUVDQXdHUW1WeWJHbHVNUTh3RFFZRFZRUUhEQVpDWlhKc2FXNHhGekFWQmdOVkJBTU1EbXhwXG5ZMlZ1YzJVdWJqaHVMbWx2TUI0WERUSXlNRFl5TkRBME1UQTBNRm9YRFRJek1EWXlOREEwTVRBME1Gb3dTREVMXG5NQWtHQTFVRUJoTUNSRVV4RHpBTkJnTlZCQWdNQmtKbGNteHBiakVQTUEwR0ExVUVCd3dHUW1WeWJHbHVNUmN3XG5GUVlEVlFRRERBNXNhV05sYm5ObExtNDRiaTVwYnpDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDXG5BUW9DZ2dFQkFNQk0wNVhCNDRnNXhmbUNMd2RwVVR3QVQ4K0NCa3lMS0ZzZXprRDVLLzZXaGFYL1hyc2QvUWQwXG4yMEo3d2w1V2RIVTRjVkJtRlJqVndWemtsQ0syeVlKaThtang4c1hzR3E5UTFsYlVlTUtmVjlkc2dmdWhubEFTXG50blFaZ2x1Z09uRjJGZ1JoWGIvakswdHhUb2FvK2JORTZyNGdJRXpwa3RITEJUWXZ2aXVKbXJlZjdXYlBSdDRJXG5uZDlEN2xoeWJlYnloVjdrdXpqUUEvcFBLSFRGczhNVEhaOGhZVXhSeXJwbTMrTVl6UUQrYmpBMlUxRkljdGFVXG53UVhZV2FON3QydVR3Q3Q5ekFLc21ZL1dlT2J2bDNUWk41T05MQXp5V0dDdWxtNWN3S1IzeGJsQlp6WG5CNmdzXG5Pbk4yT0FkU3RjelRWQ3ljbThwY0ZVcnl0S1NLa0dFQ0F3RUFBVEFOQmdrcWhraUc5dzBCQVFVRkFBT0NBZ0VBXG5sSjAxd2NuMXZqWFhDSHVvaTdSMERKMWxseDErZGFmcXlFcVBBMjdKdStMWG1WVkdYUW9yUzFiOHhqVXFVa2NaXG5UQndiV0ZPNXo1ZFptTnZuYnlqYXptKzZvT2cwUE1hWXhoNlRGd3NJMlBPYmM3YkZ2MmVheXdQdC8xQ3BuYzQwXG5xVU1oZnZSeC9HQ1pQQ1d6My8yUlBKV1g5alFEU0hYQ1hxOEJXK0kvM2N1TERaeVkzZkVZQkIwcDNEdlZtYWQ2XG42V0hRYVVyaU4wL0xxeVNPcC9MWmdsbC90MDI5Z1dWdDA1WmliR29LK2NWaFpFY3NMY1VJaHJqMnVGR0ZkM0ltXG5KTGcxSktKN2pLU0JVUU9kSU1EdnNGVUY3WWRNdk11ckNZQTJzT05OOENaK0k1eFFWMUtTOWV2R0hNNWZtd2dTXG5PUEZ2UHp0RENpMC8xdVc5dE9nSHBvcnVvZGFjdCtFWk5rQVRYQ3ZaaXUydy9xdEtSSkY0VTRJVEVtNWFXMGt3XG42enVDOHh5SWt0N3ZoZHM0OFV1UlNHSDlqSnJBZW1sRWl6dEdJTGhHRHF6UUdZYmxoVVFGR01iQmI3amhlTHlDXG5MSjFXT0c2MkYxc3B4Q0tCekVXNXg2cFIxelQxbWhFZ2Q0TWtMYTZ6UFRwYWNyZDk1QWd4YUdLRUxhMVJXU0ZwXG5NdmRoR2s0TnY3aG5iOHIrQnVNUkM2aWVkUE1DelhxL001MGNOOEFnOGJ3K0oxYUZvKzBFSzJoV0phN2tpRStzXG45R3ZGalNkekNGbFVQaEtra1Vaa1NvNWFPdGNRcTdKdTZrV0JoTG9GWUtncHJscDFRVkIwc0daQTZvNkR0cWphXG5HNy9SazZ2YmFZOHdzTllLMnpCWFRUOG5laDVab1JaL1BKTFV0RUV0YzdZPVxuLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLSJ9	f
\.


--
-- Data for Name: shared_credentials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shared_credentials" ("credentialsId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: shared_workflow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shared_workflow" ("workflowId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: test_run; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."test_run" ("id", "workflowId", "status", "errorCode", "errorDetails", "runAt", "completedAt", "metrics", "createdAt", "updatedAt", "runningInstanceId", "cancelRequested", "workflowVersionId", "evaluationConfigId", "evaluationConfigSnapshot", "collectionId") FROM stdin;
\.


--
-- Data for Name: test_case_execution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."test_case_execution" ("id", "testRunId", "executionId", "status", "runAt", "completedAt", "errorCode", "errorDetails", "metrics", "createdAt", "updatedAt", "inputs", "outputs", "runIndex") FROM stdin;
\.


--
-- Data for Name: token_exchange_jti; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."token_exchange_jti" ("jti", "expiresAt", "createdAt") FROM stdin;
\.


--
-- Data for Name: trusted_key_source; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."trusted_key_source" ("id", "type", "config", "status", "lastError", "lastRefreshedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: trusted_key; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."trusted_key" ("sourceId", "kid", "data", "createdAt") FROM stdin;
\.


--
-- Data for Name: user_api_keys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_api_keys" ("id", "userId", "label", "apiKey", "createdAt", "updatedAt", "scopes", "audience", "lastUsedAt") FROM stdin;
\.


--
-- Data for Name: user_favorites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_favorites" ("id", "userId", "resourceId", "resourceType") FROM stdin;
\.


--
-- Data for Name: variables; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."variables" ("key", "type", "value", "id", "projectId") FROM stdin;
\.


--
-- Data for Name: webhook_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."webhook_entity" ("webhookPath", "method", "node", "webhookId", "pathLength", "workflowId") FROM stdin;
\.


--
-- Data for Name: workflow_builder_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_builder_session" ("id", "workflowId", "userId", "messages", "previousSummary", "createdAt", "updatedAt", "activeVersionCardId", "resumeAfterRestoreMessageId") FROM stdin;
\.


--
-- Data for Name: workflow_dependency; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_dependency" ("id", "workflowId", "workflowVersionId", "dependencyType", "dependencyKey", "dependencyInfo", "indexVersionId", "createdAt", "publishedVersionId") FROM stdin;
\.


--
-- Data for Name: workflow_publication_outbox; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_publication_outbox" ("id", "workflowId", "publishedVersionId", "status", "errorMessage", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: workflow_publication_trigger_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_publication_trigger_status" ("workflowId", "nodeId", "versionId", "status", "errorMessage", "createdAt", "updatedAt", "triggerKind") FROM stdin;
\.


--
-- Data for Name: workflow_publish_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_publish_history" ("id", "workflowId", "versionId", "event", "userId", "createdAt") FROM stdin;
\.


--
-- Data for Name: workflow_review_request; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_review_request" ("id", "projectId", "state", "decision", "title", "description", "createdById", "updatedById", "closedById", "approvedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: workflow_review_request_authors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_review_request_authors" ("workflowReviewRequestId", "userId") FROM stdin;
\.


--
-- Data for Name: workflow_review_request_reviewers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_review_request_reviewers" ("workflowReviewRequestId", "userId") FROM stdin;
\.


--
-- Data for Name: workflow_review_request_workflow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_review_request_workflow" ("id", "workflowReviewRequestId", "workflowId", "workflowVersionId") FROM stdin;
\.


--
-- Data for Name: workflow_statistics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_statistics" ("count", "latestEvent", "name", "workflowId", "rootCount", "id", "workflowName") FROM stdin;
\.


--
-- Data for Name: workflow_statistics_delta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_statistics_delta" ("id", "workflowId", "name", "rootCountDelta", "createdAt", "workflowName") FROM stdin;
\.


--
-- Data for Name: workflows_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflows_tags" ("workflowId", "tagId") FROM stdin;
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type") FROM stdin;
\.


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_analytics" ("name", "type", "format", "created_at", "updated_at", "id", "deleted_at") FROM stdin;
\.


--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_vectors" ("id", "type", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata", "metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."vector_indexes" ("id", "name", "bucket_id", "data_type", "dimension", "distance_metric", "metadata_configuration", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: auth_provider_sync_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."auth_provider_sync_history_id_seq"', 1, false);


--
-- Name: credential_dependency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."credential_dependency_id_seq"', 1, false);


--
-- Name: execution_annotations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_annotations_id_seq"', 1, false);


--
-- Name: execution_entity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_entity_id_seq"', 1, false);


--
-- Name: execution_metadata_temp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_metadata_temp_id_seq"', 1, false);


--
-- Name: insights_by_period_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_by_period_id_seq"', 1, false);


--
-- Name: insights_metadata_metaId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_metadata_metaId_seq"', 1, false);


--
-- Name: insights_raw_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_raw_id_seq"', 1, false);


--
-- Name: instance_version_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."instance_version_history_id_seq"', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."migrations_id_seq"', 236, true);


--
-- Name: oauth_user_consents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."oauth_user_consents_id_seq"', 1, false);


--
-- Name: scheduled_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."scheduled_job_id_seq"', 1, false);


--
-- Name: scheduled_task_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."scheduled_task_id_seq"', 1, false);


--
-- Name: secrets_provider_connection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."secrets_provider_connection_id_seq"', 1, false);


--
-- Name: user_favorites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."user_favorites_id_seq"', 1, false);


--
-- Name: workflow_dependency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_dependency_id_seq"', 1, false);


--
-- Name: workflow_publication_outbox_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_publication_outbox_id_seq"', 1, false);


--
-- Name: workflow_publish_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_publish_history_id_seq"', 1, false);


--
-- Name: workflow_statistics_delta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_statistics_delta_id_seq"', 1, false);


--
-- Name: workflow_statistics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_statistics_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

-- \unrestrict 5eHlspaWvhWSViSgMw0coeHlhMyaKC87VCRRZ82mFH3sk7B4yzospLLX1knuvKB

RESET ALL;

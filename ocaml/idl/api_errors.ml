exception Server_error of string * string list

let to_string = function
  | Server_error (name, args) ->
      Printf.sprintf "Server_error(%s, [ %a ])" name (fun () -> String.concat "; ") args
  | e -> Printexc.to_string e

let message_deprecated = "MESSAGE_DEPRECATED"

let permission_denied = "PERMISSION_DENIED"
let internal_error = "INTERNAL_ERROR"
let map_duplicate_key = "MAP_DUPLICATE_KEY"
let db_uniqueness_constraint_violation = "DB_UNIQUENESS_CONSTRAINT_VIOLATION"
let location_not_unique = "LOCATION_NOT_UNIQUE"
let message_method_unknown = "MESSAGE_METHOD_UNKNOWN"
let message_parameter_count_mismatch = "MESSAGE_PARAMETER_COUNT_MISMATCH"
let value_not_supported = "VALUE_NOT_SUPPORTED"
let invalid_value = "INVALID_VALUE"
let memory_constraint_violation = "MEMORY_CONSTRAINT_VIOLATION"
let field_type_error = "FIELD_TYPE_ERROR"
let session_authentication_failed = "SESSION_AUTHENTICATION_FAILED"
let session_invalid = "SESSION_INVALID"
let change_password_rejected = "CHANGE_PASSWORD_REJECTED"
let user_is_not_local_superuser = "USER_IS_NOT_LOCAL_SUPERUSER"
let cannot_contact_host = "CANNOT_CONTACT_HOST"
let not_supported_during_upgrade = "NOT_SUPPORTED_DURING_UPGRADE"

let handle_invalid = "HANDLE_INVALID"
let uuid_invalid = "UUID_INVALID"

let vm_hvm_required = "VM_HVM_REQUIRED"
let vm_no_vcpus = "VM_NO_VCPUS"
let vm_toomany_vcpus = "VM_TOO_MANY_VCPUS"
let vm_is_protected = "VM_IS_PROTECTED"

let host_in_use = "HOST_IN_USE"
let host_in_emergency_mode = "HOST_IN_EMERGENCY_MODE"
let host_cannot_read_metrics = "HOST_CANNOT_READ_METRICS"
let host_disabled = "HOST_DISABLED"
let host_disabled_until_reboot = "HOST_DISABLED_UNTIL_REBOOT"
let host_not_disabled = "HOST_NOT_DISABLED"
let host_not_live = "HOST_NOT_LIVE"
let host_is_live = "HOST_IS_LIVE"
let host_not_enough_free_memory = "HOST_NOT_ENOUGH_FREE_MEMORY"
let no_hosts_available = "NO_HOSTS_AVAILABLE"
let host_offline = "HOST_OFFLINE"
let host_cannot_destroy_self = "HOST_CANNOT_DESTROY_SELF"
let host_is_slave = "HOST_IS_SLAVE"
let host_name_invalid = "HOST_NAME_INVALID"
let host_has_resident_vms = "HOST_HAS_RESIDENT_VMS"

(* Host errors which explain why the host is in emergency mode *)
let host_still_booting = "HOST_STILL_BOOTING"
(* license *)
let host_has_no_management_ip = "HOST_HAS_NO_MANAGEMENT_IP"
let host_master_cannot_talk_back = "HOST_MASTER_CANNOT_TALK_BACK"
let host_unknown_to_master = "HOST_UNKNOWN_TO_MASTER"
(* should be fenced *)
let host_broken = "HOST_BROKEN"
let interface_has_no_ip = "INTERFACE_HAS_NO_IP"
let invalid_ip_address_specified = "INVALID_IP_ADDRESS_SPECIFIED"
let pif_has_no_network_configuration = "PIF_HAS_NO_NETWORK_CONFIGURATION"

let device_attach_timeout = "DEVICE_ATTACH_TIMEOUT"
let device_detach_timeout = "DEVICE_DETACH_TIMEOUT"
let device_detach_rejected = "DEVICE_DETACH_REJECTED"

let operation_not_allowed = "OPERATION_NOT_ALLOWED"
let operation_blocked = "OPERATION_BLOCKED"
let network_already_connected = "NETWORK_ALREADY_CONNECTED"
let pif_is_physical = "PIF_IS_PHYSICAL"
let pif_is_vlan = "PIF_IS_VLAN"
let pif_vlan_exists = "PIF_VLAN_EXISTS"
let pif_vlan_still_exists = "PIF_VLAN_STILL_EXISTS"
let pif_device_not_found = "PIF_DEVICE_NOT_FOUND"
let pif_already_bonded = "PIF_ALREADY_BONDED"
let pif_cannot_bond_cross_host = "PIF_CANNOT_BOND_CROSS_HOST"
let pif_bond_needs_more_members = "PIF_BOND_NEEDS_MORE_MEMBERS"
let pif_configuration_error = "PIF_CONFIGURATION_ERROR"
let pif_is_management_iface = "PIF_IS_MANAGEMENT_INTERFACE"
let required_pif_is_unplugged = "REQUIRED_PIF_IS_UNPLUGGED"
let pif_does_not_allow_unplug = "PIF_DOES_NOT_ALLOW_UNPLUG"
let slave_requires_management_iface = "SLAVE_REQUIRES_MANAGEMENT_INTERFACE"
let vif_in_use = "VIF_IN_USE"
let cannot_plug_vif = "CANNOT_PLUG_VIF"
let mac_still_exists = "MAC_STILL_EXISTS"
let mac_does_not_exist = "MAC_DOES_NOT_EXIST"
let mac_invalid = "MAC_INVALID"

let vlan_tag_invalid = "VLAN_TAG_INVALID"
let vm_bad_power_state = "VM_BAD_POWER_STATE"
let vm_is_template = "VM_IS_TEMPLATE"
let other_operation_in_progress = "OTHER_OPERATION_IN_PROGRESS"
let vbd_not_removable_media = "VBD_NOT_REMOVABLE_MEDIA"
let vbd_not_unpluggable = "VBD_NOT_UNPLUGGABLE"
let vbd_not_empty = "VBD_NOT_EMPTY"
let vbd_is_empty = "VBD_IS_EMPTY"
let vbd_tray_locked = "VBD_TRAY_LOCKED"
let vm_snapshot_failed = "VM_SNAPSHOT_FAILED"
let vm_unsafe_boot = "VM_UNSAFE_BOOT"
let vm_requires_sr = "VM_REQUIRES_SR"
let vm_requires_vdi = "VM_REQUIRES_VDI"
let vm_requires_net = "VM_REQUIRES_NETWORK"
let host_cannot_attach_network = "HOST_CANNOT_ATTACH_NETWORK"
let vm_no_suspend_sr = "VM_NO_SUSPEND_SR"
let vm_no_crashdump_sr = "VM_NO_CRASHDUMP_SR"
let vm_migrate_failed = "VM_MIGRATE_FAILED"
let vm_missing_pv_drivers = "VM_MISSING_PV_DRIVERS"
let vm_failed_shutdown_ack = "VM_FAILED_SHUTDOWN_ACKNOWLEDGMENT"
let vm_old_pv_drivers = "VM_OLD_PV_DRIVERS"
let vm_cannot_delete_default_template = "VM_CANNOT_DELETE_DEFAULT_TEMPLATE"
let vm_memory_size_too_low = "VM_MEMORY_SIZE_TOO_LOW"
let vm_memory_target_wait_timeout = "VM_MEMORY_TARGET_WAIT_TIMEOUT"
let vm_shutdown_timeout = "VM_SHUTDOWN_TIMEOUT"
let vm_duplicate_vbd_device = "VM_DUPLICATE_VBD_DEVICE"
let vm_not_resident_here = "VM_NOT_RESIDENT_HERE"
let domain_exists = "DOMAIN_EXISTS"
let only_provision_template = "PROVISION_ONLY_ALLOWED_ON_TEMPLATE"
let provision_failed_out_of_space = "PROVISION_FAILED_OUT_OF_SPACE"
let bootloader_failed = "BOOTLOADER_FAILED"
let unknown_bootloader = "UNKNOWN_BOOTLOADER"
let operation_not_allowed = "OPERATION_NOT_ALLOWED"
let object_nolonger_exists = "OBJECT_NOLONGER_EXISTS"
let sr_attach_failed = "SR_ATTACH_FAILED"
let sr_full = "SR_FULL"
let sr_has_pbd = "SR_HAS_PBD"
let sr_requires_upgrade = "SR_REQUIRES_UPGRADE"
let vdi_in_use = "VDI_IN_USE"
let vdi_readonly = "VDI_READONLY"
let vdi_is_a_physical_device = "VDI_IS_A_PHYSICAL_DEVICE"
let vdi_is_not_iso = "VDI_IS_NOT_ISO"
let vbd_cds_must_be_readonly = "VBD_CDS_MUST_BE_READONLY"
let vdi_not_available = "VDI_NOT_AVAILABLE"
let vdi_location_missing = "VDI_LOCATION_MISSING"
let vdi_missing = "VDI_MISSING"
let vdi_incompatible_type = "VDI_INCOMPATIBLE_TYPE"
let vdi_not_managed = "VDI_NOT_MANAGED"
let cannot_create_state_file = "CANNOT_CREATE_STATE_FILE"


let sr_uuid_exists = "SR_UUID_EXISTS"
let sr_no_pbds = "SR_HAS_NO_PBDS"
let sr_has_multiple_pbds = "SR_HAS_MULTIPLE_PBDS"
let sr_backend_failure = "SR_BACKEND_FAILURE"
let sr_unknown_driver = "SR_UNKNOWN_DRIVER"
let sr_vdi_locking_failed = "SR_VDI_LOCKING_FAILED"
let sr_not_empty = "SR_NOT_EMPTY"
let sr_device_in_use = "SR_DEVICE_IN_USE"
let sr_operation_not_supported = "SR_OPERATION_NOT_SUPPORTED"
let sr_not_sharable = "SR_NOT_SHARABLE"

let pbd_exists = "PBD_EXISTS"

let not_implemented = "NOT_IMPLEMENTED"
let device_already_attached = "DEVICE_ALREADY_ATTACHED"
let device_already_detached = "DEVICE_ALREADY_DETACHED"
let device_already_exists = "DEVICE_ALREADY_EXISTS"
let device_not_attached = "DEVICE_NOT_ATTACHED"
let network_contains_pif = "NETWORK_CONTAINS_PIF"
let network_contains_vif = "NETWORK_CONTAINS_VIF"
let invalid_device = "INVALID_DEVICE"
let events_lost = "EVENTS_LOST"
let session_not_registered = "SESSION_NOT_REGISTERED"

let import_error_generic = "IMPORT_ERROR"
let import_error_premature_eof = "IMPORT_ERROR_PREMATURE_EOF"
let import_error_some_checksums_failed = "IMPORT_ERROR_SOME_CHECKSUMS_FAILED"
let import_error_cannot_handle_chunked = "IMPORT_ERROR_CANNOT_HANDLE_CHUNKED"
let import_error_failed_to_find_object = "IMPORT_ERROR_FAILED_TO_FIND_OBJECT"
let import_error_attached_disks_not_found = "IMPORT_ERROR_ATTACHED_DISKS_NOT_FOUND"
let import_error_unexpected_file = "IMPORT_ERROR_UNEXPECTED_FILE"
let import_incompatible_version = "IMPORT_INCOMPATIBLE_VERSION"

let restore_incompatible_version = "RESTORE_INCOMPATIBLE_VERSION"
let restore_target_missing_device = "RESTORE_TARGET_MISSING_DEVICE"
let restore_target_mgmt_if_not_in_backup = "RESTORE_TARGET_MGMT_IF_NOT_IN_BACKUP"

let pool_not_in_emergency_mode = "NOT_IN_EMERGENCY_MODE"
let pool_hosts_not_homogeneous = "HOSTS_NOT_HOMOGENEOUS"
let pool_joining_host_cannot_contain_shared_SRs = "JOINING_HOST_CANNOT_CONTAIN_SHARED_SRS"
let pool_joining_host_cannot_have_running_or_suspended_VMs = "JOINING_HOST_CANNOT_HAVE_RUNNING_OR_SUSPENDED_VMS"
let pool_joining_host_cannot_have_running_VMs = "JOINING_HOST_CANNOT_HAVE_RUNNING_VMS"
let pool_joining_host_cannot_have_vms_with_current_operations = "JOINING_HOST_CANNOT_HAVE_VMS_WITH_CURRENT_OPERATIONS"
let pool_joining_host_cannot_be_master_of_other_hosts = "JOINING_HOST_CANNOT_BE_MASTER_OF_OTHER_HOSTS"
let pool_joining_host_connection_failed = "JOINING_HOST_CONNECTION_FAILED"
let pool_joining_host_service_failed = "JOINING_HOST_SERVICE_FAILED"
let pool_joining_host_must_have_physical_managment_nic = "POOL_JOINING_HOST_MUST_HAVE_PHYSICAL_MANAGEMENT_NIC"
let pool_joining_external_auth_mismatch = "POOL_JOINING_EXTERNAL_AUTH_MISMATCH"
let pool_joining_host_must_have_same_product_version = "POOL_JOINING_HOST_MUST_HAVE_SAME_PRODUCT_VERSION"

(*workload balancing*)
let wlb_not_initialized = "WLB_NOT_INITIALIZED"
let wlb_disabled = "WLB_DISABLED"
let wlb_connection_refused = "WLB_CONNECTION_REFUSED"
let wlb_unknown_host = "WLB_UNKNOWN_HOST"
let wlb_timeout = "WLB_TIMEOUT"
let wlb_authentication_failed = "WLB_AUTHENTICATION_FAILED"
let wlb_malformed_request = "WLB_MALFORMED_REQUEST"
let wlb_malformed_response = "WLB_MALFORMED_RESPONSE"
let wlb_xenserver_connection_refused = "WLB_XENSERVER_CONNECTION_REFUSED"
let wlb_xenserver_unknown_host = "WLB_XENSERVER_UNKNOWN_HOST"
let wlb_xenserver_timeout = "WLB_XENSERVER_TIMEOUT"
let wlb_xenserver_authentication_failed = "WLB_XENSERVER_AUTHENTICATION_FAILED"
let wlb_xenserver_malformed_response = "WLB_XENSERVER_MALFORMED_RESPONSE"
let wlb_internal_error = "WLB_INTERNAL_ERROR"
let wlb_url_invalid = "WLB_URL_INVALID"
let wlb_connection_reset = "WLB_CONNECTION_RESET"


let sr_not_shared = "SR_NOT_SHARED"

let default_sr_not_found = "DEFAULT_SR_NOT_FOUND"

let task_cancelled = "TASK_CANCELLED"

let too_many_pending_tasks = "TOO_MANY_PENDING_TASKS"
let too_busy = "TOO_BUSY"

let out_of_space = "OUT_OF_SPACE"
let invalid_patch = "INVALID_PATCH"
let invalid_patch_with_log = "INVALID_PATCH_WITH_LOG"
let patch_already_exists = "PATCH_ALREADY_EXISTS"
let patch_is_applied = "PATCH_IS_APPLIED"
let cannot_find_patch = "CANNOT_FIND_PATCH"
let cannot_fetch_patch = "CANNOT_FETCH_PATCH"
let patch_already_applied = "PATCH_ALREADY_APPLIED"
let patch_precheck_failed_unknown_error = "PATCH_PRECHECK_FAILED_UNKNOWN_ERROR"
let patch_precheck_failed_prerequisite_missing = "PATCH_PRECHECK_FAILED_PREREQUISITE_MISSING"
let patch_precheck_failed_wrong_server_version = "PATCH_PRECHECK_FAILED_WRONG_SERVER_VERSION"
let patch_precheck_failed_vm_running = "PATCH_PRECHECK_FAILED_VM_RUNNING"
let patch_apply_failed = "PATCH_APPLY_FAILED"
let cannot_find_oem_backup_partition = "CANNOT_FIND_OEM_BACKUP_PARTITION"
let only_allowed_on_oem_edition = "ONLY_ALLOWED_ON_OEM_EDITION"
let not_allowed_on_oem_edition = "NOT_ALLOWED_ON_OEM_EDITION"
let cannot_find_state_partition = "CANNOT_FIND_STATE_PARTITION"
let backup_script_failed = "BACKUP_SCRIPT_FAILED"
let restore_script_failed = "RESTORE_SCRIPT_FAILED"

let license_expired = "LICENSE_EXPIRED"
let license_restriction = "LICENCE_RESTRICTION"
let license_does_not_support_pooling = "LICENSE_DOES_NOT_SUPPORT_POOLING"
let license_processing_error = "LICENSE_PROCESSING_ERROR"
let license_cannot_downgrade_in_pool = "LICENSE_CANNOT_DOWNGRADE_WHILE_IN_POOL"
let license_does_not_support_xha = "LICENSE_DOES_NOT_SUPPORT_XHA"

let xmlrpc_unmarshal_failure = "XMLRPC_UNMARSHAL_FAILURE"

let duplicate_vm = "DUPLICATE_VM"

let client_error = "CLIENT_ERROR"

let ballooning_disabled = "BALLOONING_DISABLED"

let ha_host_is_armed = "HA_HOST_IS_ARMED"
let ha_is_enabled = "HA_IS_ENABLED"
let ha_not_enabled = "HA_NOT_ENABLED"
let ha_not_installed = "HA_NOT_INSTALLED"
let ha_host_cannot_see_peers = "HA_HOST_CANNOT_SEE_PEERS"
let ha_too_few_hosts = "HA_TOO_FEW_HOSTS"
let ha_should_be_fenced = "HA_SHOULD_BE_FENCED"

let ha_abort_new_master = "HA_ABORT_NEW_MASTER"

let ha_no_plan = "HA_NO_PLAN"
let ha_lost_statefile = "HA_LOST_STATEFILE"
let ha_pool_is_enabled_but_host_is_disabled = "HA_POOL_IS_ENABLED_BUT_HOST_IS_DISABLED"

let ha_heartbeat_daemon_startup_failed = "HA_HEARTBEAT_DAEMON_STARTUP_FAILED"
let ha_host_cannot_access_statefile = "HA_HOST_CANNOT_ACCESS_STATEFILE"

let ha_failed_to_form_liveset = "HA_FAILED_TO_FORM_LIVESET"

(* CA-16480: prevent configuration errors which nullify xHA goodness *)
let ha_constraint_violation_sr_not_shared = "HA_CONSTRAINT_VIOLATION_SR_NOT_SHARED"
let ha_constraint_violation_network_not_shared = "HA_CONSTRAINT_VIOLATION_NETWORK_NOT_SHARED"

let ha_operation_would_break_failover_plan = "HA_OPERATION_WOULD_BREAK_FAILOVER_PLAN"

let cannot_evacuate_host = "CANNOT_EVACUATE_HOST"

let system_status_retrieval_failed = "SYSTEM_STATUS_RETRIEVAL_FAILED"
let system_status_must_use_tar_on_oem = "SYSTEM_STATUS_MUST_USE_TAR_ON_OEM"

let xapi_hook_failed = "XAPI_HOOK_FAILED"

let no_local_storage = "NO_LOCAL_STORAGE"

let xenapi_missing_plugin = "XENAPI_MISSING_PLUGIN"
let xenapi_plugin_failure = "XENAPI_PLUGIN_FAILURE"

let sr_attached = "SR_ATTACHED"

let auth_already_enabled = "AUTH_ALREADY_ENABLED"
let auth_unknown_type = "AUTH_UNKNOWN_TYPE"
let auth_is_disabled = "AUTH_IS_DISABLED"
let auth_enable_failed = "AUTH_ENABLE_FAILED"
let auth_disable_failed = "AUTH_DISABLE_FAILED"
let pool_auth_already_enabled = "POOL_AUTH_ALREADY_ENABLED"
let pool_auth_enable_failed = "POOL_AUTH_ENABLE_FAILED"
let pool_auth_disable_failed = "POOL_AUTH_DISABLE_FAILED"
let subject_cannot_be_resolved = "SUBJECT_CANNOT_BE_RESOLVED"
let auth_service_error = "AUTH_SERVICE_ERROR"
let subject_already_exists = "SUBJECT_ALREADY_EXISTS"

let certificate_does_not_exist = "CERTIFICATE_DOES_NOT_EXIST"
let certificate_already_exists = "CERTIFICATE_ALREADY_EXISTS"
let certificate_name_invalid = "CERTIFICATE_NAME_INVALID"
let certificate_corrupt = "CERTIFICATE_CORRUPT"
let certificate_library_corrupt = "CERTIFICATE_LIBRARY_CORRUPT"
let crl_does_not_exist = "CRL_DOES_NOT_EXIST"
let crl_already_exists = "CRL_ALREADY_EXISTS"
let crl_name_invalid = "CRL_NAME_INVALID"
let crl_corrupt = "CRL_CORRUPT"

let ssl_verify_error = "SSL_VERIFY_ERROR"

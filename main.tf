provider "oci" {}

resource "oci_core_instance" "generated_oci_core_instance" {
	agent_config {
		is_management_disabled = "false"
		is_monitoring_disabled = "false"
		plugins_config {
			desired_state = "DISABLED"
			name = "Vulnerability Scanning"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Compute Instance Monitoring"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Bastion"
		}
	}
	availability_config {
		recovery_action = "RESTORE_INSTANCE"
	}
	availability_domain = "EzsB:AP-SEOUL-1-AD-1"
	compartment_id = "ocid1.tenancy.oc1..aaaaaaaaxbzqj2kqddotpjcjrtumgbygx7ornneofljixapzwzgzlgtotjka"
	create_vnic_details {
		assign_private_dns_record = "true"
		assign_public_ip = "true"
		subnet_id = "ocid1.subnet.oc1.ap-seoul-1.aaaaaaaaokt2aeue2nkemj4oz7bfzvvt6ocpo76ibc2maqsytbgwhz7op2ca"
	}
	display_name = "wp"
	instance_options {
		are_legacy_imds_endpoints_disabled = "false"
	}
	is_pv_encryption_in_transit_enabled = "true"
	metadata = {
		"ssh_authorized_keys" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDVuZT6rCfKkzx3wVtM7hDPGkzroke9Vn1A5VxxUk3n/v3CG/YRpGg4QAGZBit82KfUHqiygdlru78f0wIuH+uw8PfQBXakDgxuzsHWDv7q2aq7uktfd6ZwPekKSyZW5O77rZClLr17L/g4zIkg4x+NtJremaBIaxmCaCIC3eSGWbvrp0KuMvcDsZqTpW1z8UaypKOskmp1XDthPN/2tNysr/3RqdW4Hwdxhye9zA6aEiMfisLY0cV3xIVGrMIbRdEH9sxz0JbYAYTT+ownfo6/78xDUBPxxhy7chHvd5M1m8P1cZm986vuJ6pCoZ4zrG2lwkUsSRXndZSMRrHD5Wsz ssh-key-2022-03-14"
	}
	shape = "VM.Standard.A1.Flex"
	shape_config {
		memory_in_gbs = "24"
		ocpus = "4"
	}
	source_details {
		source_id = "ocid1.image.oc1.ap-seoul-1.aaaaaaaa52x2garm5fzzld57bf7y3i373quh4pflkjrcgwsbbtkhbh2hy4ya"
		source_type = "image"
	}
}

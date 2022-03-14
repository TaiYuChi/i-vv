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
	display_name = "yc-wordpress"
	instance_options {
		are_legacy_imds_endpoints_disabled = "false"
	}
	is_pv_encryption_in_transit_enabled = "true"
	metadata = {
		"ssh_authorized_keys" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCzoC/7zbD5w2PwZX4sA6thoLPkU3c6BbwE5Qgqm020wbX8nSsW1fL6ODroFJt2RLrnEWiroe3Ac6gItS+GH0b5i3GpReiFhe4R/mC7DhVf8GarkzqXDCvKWfm76nZLmXN3EDRrVLlIEaiR33mNVJBS/3vz4PQMoTtW42IgYycsbZg52tLGOFOQ5Nv83j6gfSlOXtQxc6RAtqkPPqtIgsihKbnCX3nyuQcS35BcB+Nm7BvTjYImoU1Uxsvns49g/MX6RhAmkf7Mn3ROsen44UoSD7DqqC4dYiTnQhhBSBKTB7jV+QkFuwjRuAe8ys8a5Pah/CRUQonAu5ZiJzz9kOld ssh-key-2022-03-14"
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

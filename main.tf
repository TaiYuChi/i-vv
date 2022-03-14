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
	display_name = "instance-20220313-1026"
	instance_options {
		are_legacy_imds_endpoints_disabled = "false"
	}
	is_pv_encryption_in_transit_enabled = "true"
	metadata = {
		"ssh_authorized_keys" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCy6aVNFBoPJZ23ZRofpjDgSdzxtbowYyRglj4/kx1x6ZRUUO8ASKN5vBpNPq1J/K1TCwQFgTMhljjhv+yVZx4D/mXi8AyryE6kCx75kXkH7x1ADQtWw47rC1aZQeUogMhNegW7zsUXUSWVISnUZe+lgh8VhCMnBxj1281Lb0u1v4jb0o8nBRb8n1n5+nuMHF41wIx+zNdq2K8pmvZ170UoAZqDxWM2fhqXLCVU0g/5iYolI9IKKqGFJploaa7mjCQ5HQwiXFTb2uMY2DsgU0rpmdIdx9WsAU31w0TrbYfNexZVzH7wxLFkDU4nqLHodA7SAcz40jR177Aa5YlfVx6D ssh-key-2022-03-13"
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

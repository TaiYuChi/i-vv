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
	display_name = "instance-20220314-1038"
	instance_options {
		are_legacy_imds_endpoints_disabled = "false"
	}
	is_pv_encryption_in_transit_enabled = "true"
	metadata = {
		"ssh_authorized_keys" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCm0H9/BOeNEhXU+FElyuBqhzm2Fi4uKR0MEKhoibeM1Yh9araVVonf1iEidAYWbKhFtfbAkfuhYCXprFFWgo/kYoM3ssvvPji4TABGIyCnAz6Fd02o2fcPz/XFQVp7uZWxjAain2JTZ/RozHnkSTqQki5dDwDO1XYsnJV/1ehffl+FQMKabME/3HU268H9heJjFvQFoiUDB4Bygqy39SrrAxwJZnK6A7PxzTE5G1vqIVN+QlB/TdUdwgBOTZuPx79M13co2gqm/QoKnz6Er3LkP0zdDB6T5b/zWtDxZsIUSPONcWE3RQ3lmIBnf8DUnTYrtDrE1Sqkkymm+PBhJBf/ ssh-key-2022-03-14"
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

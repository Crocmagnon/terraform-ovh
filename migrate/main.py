import json
import ovh

def main():
    client = ovh.Client()

    zone = "coccomagnard.fr"
    prefix = "coccomagnard_fr"

    result = client.get(f"/domain/zone/{zone}/record")

    print(f'''data "ovh_domain_zone" "{prefix}" {{
  name = "{zone}"
}}''')

    for record_id in result:
        record = client.get(f"/domain/zone/{zone}/record/{record_id}")
        print(f'''
import {{
  to = ovh_domain_zone_record.{prefix}_{record_id}
  id = "{record_id}.{zone}"
}}
resource "ovh_domain_zone_record" "{prefix}_{record_id}" {{
  zone = data.ovh_domain_zone.{prefix}.name
  subdomain = "{record["subDomain"]}"
  fieldtype = "{record["fieldType"]}"
  ttl = {record["ttl"]}
  target = "{record["target"].replace('"', '\\"')}"
}}''')


if __name__ == "__main__":
    main()

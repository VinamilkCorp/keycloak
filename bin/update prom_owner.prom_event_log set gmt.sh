update prom_owner.prom_event_log set gmt_created=$1, gmt_modified=$2, attempt_count=$3, batch_no=$4, campaign_code=$5, city_code=$6, cluster_code=$7, cust_no=$8, district_code=$9, event_type=$10, extension=$11, region=$12, remaining_attempt=$13, event_id=$14, site_code=$15, source=$16, status=$17, sub_region=$18, ticket_id=$19, tnt_inst_id=$20, user_code=$21, ward_code=$22 where id=$23


select promotione0_.id as id1_5_0_, promotione0_.gmt_created as gmt_crea2_5_0_, promotione0_.gmt_modified as gmt_modi3_5_0_, promotione0_.attempt_count as attempt_4_5_0_, promotione0_.batch_no as batch_no5_5_0_, promotione0_.campaign_code as campaign6_5_0_, promotione0_.city_code as city_cod7_5_0_, promotione0_.cluster_code as cluster_8_5_0_, promotione0_.cust_no as cust_no9_5_0_, promotione0_.district_code as distric10_5_0_, promotione0_.event_type as event_t11_5_0_, promotione0_.extension as extensi12_5_0_, promotione0_.region as region13_5_0_, promotione0_.remaining_attempt as remaini14_5_0_, promotione0_.event_id as event_i15_5_0_, promotione0_.site_code as site_co16_5_0_, promotione0_.source as source17_5_0_, promotione0_.status as status18_5_0_, promotione0_.sub_region as sub_reg19_5_0_, promotione0_.ticket_id as ticket_20_5_0_, promotione0_.tnt_inst_id as tnt_ins21_5_0_, promotione0_.user_code as user_co22_5_0_, promotione0_.ward_code as ward_co23_5_0_ from prom_owner.prom_event_log promotione0_ where promotione0_.id=$1


update prom_owner.prom_src_xref set gmt_created=$1, gmt_modified=$2, batch_no=$3, campaign_code=$4, cust_no=$5, orig_slot=$6, orig_source_id=$7, prnt_cmpg_code=$8, remaining_slot=$9, salesman_code=$10, source_id=$11, source_type=$12, status=$13, ticket_ref=$14, tnt_inst_id=$15, version=$16 where id=$17



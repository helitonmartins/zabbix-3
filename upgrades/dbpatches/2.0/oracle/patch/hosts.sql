ALTER TABLE hosts MODIFY proxy_hostid DEFAULT NULL;
ALTER TABLE hosts MODIFY proxy_hostid NULL;
ALTER TABLE hosts MODIFY maintenanceid DEFAULT NULL;
ALTER TABLE hosts MODIFY maintenanceid NULL;
UPDATE hosts SET proxy_hostid=NULL WHERE proxy_hostid=0;
UPDATE hosts SET maintenanceid=NULL WHERE maintenanceid=0;
ALTER TABLE hosts ADD CONSTRAINT c_hosts_1 FOREIGN KEY (proxy_hostid) REFERENCES hosts (hostid);
ALTER TABLE hosts ADD CONSTRAINT c_hosts_2 FOREIGN KEY (maintenanceid) REFERENCES maintenances (maintenanceid);
CREATE INDEX hosts_4 ON hosts (ip);

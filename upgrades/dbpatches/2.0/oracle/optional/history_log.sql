ALTER TABLE history_log MODIFY itemid DEFAULT NULL;
ALTER TABLE history_log ADD ns number(10) DEFAULT '0' NOT NULL;

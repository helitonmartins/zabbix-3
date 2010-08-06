ALTER TABLE profiles MODIFY userid DEFAULT NULL;
DELETE FROM profiles WHERE NOT userid IN (SELECT userid FROM users);
ALTER TABLE profiles ADD CONSTRAINT c_profiles_1 FOREIGN KEY (userid) REFERENCES users (userid) ON DELETE CASCADE;

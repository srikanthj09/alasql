-- MODULE DML043

-- SQL Test Suite, V6.0, Interactive SQL, dml043.sql
-- 59-byte ID
-- TEd Version #

-- AUTHORIZATION HU

   SELECT USER FROM HU.ECCO;
-- RERUN if USER value does not match preceding AUTHORIZATION comment

-- date_time print

-- TEST:0214 FIPS sizing -- 2000-byte row!
-- FIPS sizing TEST

-- setup
     INSERT INTO T2000(STR110,STR200,STR216)
            VALUES
               ('STR11111111111111111111111111111111111111111111111',
                'STR22222222222222222222222222222222222222222222222',
                'STR66666666666666666666666666666666666666666666666');

-- PASS:0214 If 1 row is inserted?

      UPDATE T2000
           SET STR140 =
           'STR44444444444444444444444444444444444444444444444';
-- PASS:0214 If 1 row is updated?

      UPDATE T2000
           SET STR180 =
           'STR88888888888888888888888888888888888888888888888';
-- PASS:0214 If 1 row is updated?

      SELECT STR110,STR180,STR216
           FROM T2000;
-- PASS:0214 If STR180 = ?
-- PASS:0214   'STR88888888888888888888888888888888888888888888888'?
-- PASS:0214 If STR216 = ?
-- PASS:0214   'STR66666666666666666666666666666666666666666666666'?

-- restore
     ROLLBACK WORK;

-- END TEST >>> 0214 <<< END TEST
-- *************************************************////END-OF-MODULE
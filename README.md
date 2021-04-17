# 簡易會員系統實現（SMS_Impl） ：資料庫規劃
Local OS: Ubuntu 18.04
RDB: PostgreSQL 13

在本地端電腦初始化RDB：
```
sudo -u postgres createdb sms_impl
sudo -u postgres psql --dbname sms_impl --file=pg_init_db.sql
```
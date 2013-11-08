PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
INSERT INTO "schema_migrations" VALUES('20130926062837');
INSERT INTO "schema_migrations" VALUES('20130926063910');
INSERT INTO "schema_migrations" VALUES('20131003235622');
INSERT INTO "schema_migrations" VALUES('20131011000438');
INSERT INTO "schema_migrations" VALUES('20131011002504');
INSERT INTO "schema_migrations" VALUES('20131029050153');
INSERT INTO "schema_migrations" VALUES('20131029070716');
INSERT INTO "schema_migrations" VALUES('20131029070943');
INSERT INTO "schema_migrations" VALUES('20131029075331');
CREATE TABLE "jobs" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "description" text, "education" text, "created_at" datetime, "updated_at" datetime, "category_id" integer, "level" integer);
INSERT INTO "jobs" VALUES(1,'Engineer','Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. ','Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.','2013-10-16 16:25:16.706642','2013-10-16 23:01:42.915787',NULL,NULL);
INSERT INTO "jobs" VALUES(2,'Doctor','description of doctor','medical school','2013-10-17 02:59:32.932020','2013-10-17 03:04:26.357379',NULL,NULL);
INSERT INTO "jobs" VALUES(3,'Lawyer','Lawyers, lawyers, lawyers, lawyers, lawyers, lawyers, lawyers, lawyers, lawyers, lawyers, lawyers, lawyers, lawyers, lawyers, ','Law School','2013-10-17 05:38:58.682217','2013-10-17 05:38:58.682217',NULL,NULL);
INSERT INTO "jobs" VALUES(4,'Architect','Empire State building','Architecture 101','2013-10-17 05:40:28.693087','2013-10-17 05:40:28.693087',NULL,NULL);
INSERT INTO "jobs" VALUES(5,'Researcher','University','Science degrees','2013-10-17 06:17:26.045742','2013-10-17 06:17:26.045742',NULL,NULL);
INSERT INTO "jobs" VALUES(6,'Biologist','bla bla','Biologist','2013-10-17 06:20:42.537742','2013-10-17 06:20:42.537742',NULL,NULL);
INSERT INTO "jobs" VALUES(7,'Teacher','','','2013-10-17 06:23:49.844409','2013-10-17 06:23:49.844409',NULL,NULL);
INSERT INTO "jobs" VALUES(8,'Artist','','Art school','2013-10-17 06:26:11.934304','2013-10-17 06:26:11.934304',NULL,NULL);
INSERT INTO "jobs" VALUES(9,'Journalist','','','2013-10-17 06:31:17.551966','2013-10-17 06:31:17.551966',NULL,NULL);
CREATE TABLE "videos" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "description" text, "video_url" text, "job_id" integer, "created_at" datetime, "updated_at" datetime);
INSERT INTO "videos" VALUES(6,'My Cool Job: Industrial engineer','Tim Leopold, and industrial engineer with Honda, talks about his job. This video is being used as part of mycooljob.org, a production of WOSU Public media.','http://www.youtube.com/watch?v=9Y5Auwf0nXE',1,'2013-10-17 05:01:17.809931','2013-10-17 05:01:17.809931');
INSERT INTO "videos" VALUES(7,'Trust me, I''m an engineer!','bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla ','http://www.youtube.com/watch?v=rp8hvyjZWHs',1,'2013-10-17 05:04:25.878944','2013-10-17 05:04:25.878944');
INSERT INTO "videos" VALUES(8,'Career Profiles - ER Document','Do you want to be an emergency room doctor? Find out what it takes in this video.','http://www.youtube.com/watch?v=46UArj0_qE4',2,'2013-10-17 05:37:14.209164','2013-10-17 05:37:14.209164');
INSERT INTO "videos" VALUES(9,'Law career overview','bla bla bla bla bla bla bla bla bla bla bla bla bla bla ','http://www.youtube.com/watch?v=krVketGM7pk',3,'2013-10-17 05:39:42.100117','2013-10-17 05:39:42.100117');
INSERT INTO "videos" VALUES(10,'Career Profile: Architect','aazerty','http://www.youtube.com/watch?v=LFqe6ksK2V4',4,'2013-10-17 05:42:36.585721','2013-10-17 05:42:36.585721');
INSERT INTO "videos" VALUES(11,'Career Girls: Physician/Scientist "How to Become a Researcher"','This clip is part of the Career Girls ongoing series of career guidance/inspiration videos. See more at http://www.careergirls.org . View all Sandra Urdaneta Hartmann video clips','http://www.youtube.com/watch?v=98dyFGh0sHc',5,'2013-10-17 06:18:32.306882','2013-10-17 06:18:32.306882');
INSERT INTO "videos" VALUES(12,'Career Profiles - Biology','','http://www.youtube.com/watch?v=GYA2KzwdrAA',6,'2013-10-17 06:21:07.403206','2013-10-17 06:21:07.403206');
INSERT INTO "videos" VALUES(13,'Teaching - Best career','','http://www.youtube.com/watch?v=tMjIjWtRXks',7,'2013-10-17 06:24:14.935762','2013-10-17 06:24:14.935762');
INSERT INTO "videos" VALUES(15,'Careers in Journalism : Preparing for a Career in Journalism','','http://www.youtube.com/watch?v=23aQdsL5FeI',9,'2013-10-17 06:31:43.008893','2013-10-17 06:31:43.008893');
INSERT INTO "videos" VALUES(16,'Building Your Art Career','','http://www.youtube.com/watch?v=6WA0KecvP-g',8,'2013-10-17 06:33:40.729215','2013-10-17 06:33:40.729215');
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "first_name" varchar(255), "last_name" varchar(255), "profile_name" varchar(255), "points" integer, "email" varchar(255) DEFAULT '' NOT NULL, "encrypted_password" varchar(255) DEFAULT '' NOT NULL, "reset_password_token" varchar(255), "reset_password_sent_at" datetime, "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0 NOT NULL, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar(255), "last_sign_in_ip" varchar(255), "created_at" datetime, "updated_at" datetime, "role_id" integer DEFAULT 1);
INSERT INTO "users" VALUES(1,NULL,NULL,NULL,NULL,'gbonnat@gmail.com','$2a$10$.11ncllDwiyTOpJ0g9I8k.2rHjpUJtOLo0EWfsb8Z5T88YrX/tohS',NULL,NULL,NULL,4,'2013-10-31 07:57:23.515797','2013-10-31 06:14:40.851311','127.0.0.1','127.0.0.1','2013-10-25 22:42:50.891323','2013-10-31 07:57:23.516913',1);
INSERT INTO "users" VALUES(2,NULL,NULL,NULL,NULL,'bite@bite.pro','$2a$10$NzYIsZAUMTczSUxhtNUI4.6XNiXyzMndMZXpdGeFFe1NIFKaWCbi.',NULL,NULL,NULL,2,'2013-10-31 23:21:59.044216','2013-10-31 23:21:21.819391','127.0.0.1','127.0.0.1','2013-10-31 23:21:21.326810','2013-10-31 23:30:04.660996',1);
CREATE TABLE "roles" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "created_at" datetime, "updated_at" datetime);
INSERT INTO "roles" VALUES(1,'REGULAR','2013-10-31 05:23:33.459658','2013-10-31 05:23:33.459658');
INSERT INTO "roles" VALUES(2,'MODERATOR','2013-10-31 05:23:33.477922','2013-10-31 05:23:33.477922');
INSERT INTO "roles" VALUES(3,'ADMIN','2013-10-31 05:23:33.479970','2013-10-31 05:23:33.479970');
CREATE TABLE "tags" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255));
CREATE TABLE "taggings" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "tag_id" integer, "taggable_id" integer, "taggable_type" varchar(255), "tagger_id" integer, "tagger_type" varchar(255), "context" varchar(128), "created_at" datetime);
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('jobs',9);
INSERT INTO "sqlite_sequence" VALUES('videos',16);
INSERT INTO "sqlite_sequence" VALUES('users',2);
INSERT INTO "sqlite_sequence" VALUES('roles',3);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
CREATE INDEX "index_taggings_on_tag_id" ON "taggings" ("tag_id");
CREATE INDEX "index_taggings_on_taggable_id_and_taggable_type_and_context" ON "taggings" ("taggable_id", "taggable_type", "context");
COMMIT;

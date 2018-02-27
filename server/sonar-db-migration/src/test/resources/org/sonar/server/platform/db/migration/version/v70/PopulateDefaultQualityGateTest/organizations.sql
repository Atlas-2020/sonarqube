CREATE TABLE "ORGANIZATIONS" (
  "UUID" VARCHAR(40) NOT NULL PRIMARY KEY,
  "KEE" VARCHAR(32) NOT NULL,
  "NAME" VARCHAR(64) NOT NULL,
  "DESCRIPTION" VARCHAR(256),
  "URL" VARCHAR(256),
  "AVATAR_URL" VARCHAR(256),
  "GUARDED" BOOLEAN NOT NULL,
  "USER_ID" INTEGER,
  "DEFAULT_PERM_TEMPLATE_PROJECT" VARCHAR(40),
  "DEFAULT_PERM_TEMPLATE_VIEW" VARCHAR(40),
  "DEFAULT_GROUP_ID" INTEGER,
  "DEFAULT_QUALITY_GATE_UUID" VARCHAR(40),
  "NEW_PROJECT_PRIVATE" BOOLEAN NOT NULL,
  "CREATED_AT" BIGINT NOT NULL,
  "UPDATED_AT" BIGINT NOT NULL
);
CREATE UNIQUE INDEX "PK_ORGANIZATIONS" ON "ORGANIZATIONS" ("UUID");
CREATE UNIQUE INDEX "ORGANIZATION_KEY" ON "ORGANIZATIONS" ("KEE");

CREATE TABLE "QUALITY_GATES" (
  "ID" INTEGER NOT NULL GENERATED BY DEFAULT AS IDENTITY (START WITH 1, INCREMENT BY 1),
  "UUID" VARCHAR(40) NOT NULL,
  "NAME" VARCHAR(100) NOT NULL,
  "IS_BUILT_IN" BOOLEAN NOT NULL,
  "CREATED_AT" TIMESTAMP,
  "UPDATED_AT" TIMESTAMP,
);
CREATE UNIQUE INDEX "UNIQ_QUALITY_GATES_UUID" ON "QUALITY_GATES" ("UUID");
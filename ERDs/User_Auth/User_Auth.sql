
CREATE TABLE Auth
(
  User_ID VARCHAR(200) NOT NULL COMMENT '사용자 대표값',
  Auth_ID VARCHAR(200) NOT NULL COMMENT '권한 대표값'
) COMMENT '사용자별 권한';

CREATE TABLE Auth_Names
(
  Auth_ID   VARCHAR(200) NOT NULL COMMENT '권한 대표값',
  Auth_Name VARCHAR(200) NULL     COMMENT '접근 권한명',
  PRIMARY KEY (Auth_ID)
) COMMENT '권한';

CREATE TABLE User
(
  User_ID  VARCHAR(200) NOT NULL COMMENT '사용자 대표값',
  Name     VARCHAR(200) NULL     COMMENT '사용자명',
  Email    VARCHAR(200) NULL     COMMENT '이메일 주소',
  Position VARCHAR(200) NULL     COMMENT '직책',
  PRIMARY KEY (User_ID)
) COMMENT '사용자';

ALTER TABLE Auth
  ADD CONSTRAINT FK_User_TO_Auth
    FOREIGN KEY (User_ID)
    REFERENCES User (User_ID);

ALTER TABLE Auth
  ADD CONSTRAINT FK_Auth_Names_TO_Auth
    FOREIGN KEY (Auth_ID)
    REFERENCES Auth_Names (Auth_ID);

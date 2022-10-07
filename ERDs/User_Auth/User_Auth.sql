
CREATE TABLE Auth
(
  User_ID  NOT NULL COMMENT '대표값',
  Auth_ID  NOT NULL COMMENT '권한 대표값'
) COMMENT '부여된 권한';

CREATE TABLE Auth_Names
(
  Auth_ID    NOT NULL COMMENT '권한 대표값',
  Auth_Name  NULL     COMMENT '접근 권한명',
  PRIMARY KEY (Auth_ID)
) COMMENT '권한명';

CREATE TABLE User
(
  User_ID   NOT NULL COMMENT '대표값',
  Name      NULL     COMMENT '이름',
  Email     NULL     COMMENT '이메일',
  Position  NULL     COMMENT '직책',
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

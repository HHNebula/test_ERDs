
CREATE TABLE Auths
(
  Auth_ID   VARCHAR(200) NOT NULL COMMENT '권한 대표값',
  Auth_Name VARCHAR(200) NULL     COMMENT '접근 권한명',
  PRIMARY KEY (Auth_ID)
) COMMENT '권한';

CREATE TABLE Users
(
  User_ID  VARCHAR(200) NOT NULL COMMENT '사용자 대표값',
  Name     VARCHAR(200) NULL     COMMENT '사용자명',
  Email    VARCHAR(200) NULL     COMMENT '이메일 주소',
  Position VARCHAR(200) NULL     COMMENT '직책',
  PRIMARY KEY (User_ID)
) COMMENT '사용자';

CREATE TABLE Users_Auths
(
  User_ID VARCHAR(200) NOT NULL COMMENT '사용자 대표값',
  Auth_ID VARCHAR(200) NOT NULL COMMENT '권한 대표값'
) COMMENT '사용자별 권한';

ALTER TABLE Users_Auths
  ADD CONSTRAINT FK_Users_TO_Users_Auths
    FOREIGN KEY (User_ID)
    REFERENCES Users (User_ID);

ALTER TABLE Users_Auths
  ADD CONSTRAINT FK_Auths_TO_Users_Auths
    FOREIGN KEY (Auth_ID)
    REFERENCES Auths (Auth_ID);

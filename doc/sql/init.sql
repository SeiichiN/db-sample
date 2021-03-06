/*
 初期データ読み込み
 注意: まず state.sql を読み込むこと。
*/


DROP TABLE IF EXISTS gender;

CREATE TABLE gender (
  gid   char(1)     primary key,
  gname varchar(10) not null
);

INSERT INTO gender (gid, gname) VALUES
('0', '不明'),
('1', '男性'),
('2', '女性'),
('3', 'その他');


-- state.sqlに書かれている定義
/*
CREATE TABLE state (
  sid   char(2)     primary key,
  sname varchar(10) not null
)
*/

DROP TABLE IF EXISTS department;

CREATE TABLE department (
  did char(3) primary key,
  dname varchar(100) not null
);

INSERT INTO department (did, dname) VALUES
('d01', '総務部'),
('d02', '経理部'),
('d03', '第一営業部'),
('d04', '開発部'),
('d05', '第二営業部');


DROP TABLE IF EXISTS employee;

CREATE TABLE employee (
  id        int          primary key auto_increment,
  pass      char(4)      not null,
  name      varchar(100) not null,
  gender_id char(1)      not null,
  state_id  char(2)      not null,
  birthday  date         not null,
  dept_id   char(3),
  CONSTRAINT fk_gender_id
  FOREIGN KEY(gender_id) REFERENCES gender(gid),
  CONSTRAINT fk_state_id
  FOREIGN KEY(state_id) REFERENCES state(sid),
  CONSTRAINT fk_dept_id
  FOREIGN KEY(dept_id) REFERENCES department(did)
);

INSERT INTO employee
(pass, name, gender_id, state_id, birthday, dept_id)
VALUES
('1111', '木村太郎', '1', '27', '1986-05-13', 'd03'),
('2222', '山田花子', '2', '26', '2001-02-02', 'd02'),
('3333', '鈴木次郎', '1', '28', '1993-12-15', 'd01'),
('4444', '二階堂ふみ', '2', '47', '1994-09-21', 'd05'),
('5555', '染谷将太', '1', '13', '1992-09-03', 'd04'),
('6666', '吉高由里子', '2', '14', '1988-07-22', 'd02');





-- 修正時刻: Sat 2022/05/28 17:29:18

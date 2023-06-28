CREATE TABLE post (
    post_id NUMBER(10) 
        CONSTRAINT post_id_pk PRIMARY KEY,
    post_time DATE DEFAULT SYSDATE,
    post_title VARCHAR2(200)
        CONSTRAINT post_title_nn NOT NULL,
    post_content VARCHAR2(4000),
    post_writer VARCHAR2(50)
        CONSTRAINT post_writer_nn NOT NULL,
    post_password VARCHAR2(50)
        CONSTRAINT post_password_nn NOT NULL,
    view_count NUMBER(10) DEFAULT 0
);
SELECT post_id, post_time, post_title, post_content, post_writer, view_count FROM post WHERE post_id=1;
SELECT post_password FROM post WHERE post_id = 1;
CREATE SEQUENCE post_id_seq
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    MAXVALUE 99999999
    NOCYCLE
    NOCACHE;

CREATE TABLE board_comment (
    com_id NUMBER(20)
        CONSTRAINT com_id_pk PRIMARY KEY,
    com_content VARCHAR2(2000)
        CONSTRAINT com_title_nn NOT NULL,
    com_writer VARCHAR2(50)
        CONSTRAINT com_writer_nn NOT NULL,
    com_password VARCHAR2(50)
        CONSTRAINT com_password_nn NOT NULL,
    post_id NUMBER(10) 
        CONSTRAINT post_id_fk REFERENCES post(post_id) ON DELETE CASCADE
);
SELECT * FROM board_comment;

INSERT INTO board_comment(com_id, com_content, com_writer, com_password, post_id) 
VALUES(com_id_seq.nextval, '¿¬½À', 'manager', '1234', 1);
COMMIT;
SELECT com_content, com_writer FROM board_comment WHERE post_id=1;
CREATE SEQUENCE com_id_seq
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    MAXVALUE 99999999
    NOCYCLE
    NOCACHE;
    
SELECT * FROM board_comment;
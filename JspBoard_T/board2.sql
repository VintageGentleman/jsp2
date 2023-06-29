SELECT * FROM tab;

CREATE TABLE board (
    board_id NUMBER(6)
        CONSTRAINT board_id_pk PRIMARY KEY,        
    writer VARCHAR2(30),
    board_pw VARCHAR2(8),
    board_title VARCHAR2(100),
    board_content VARCHAR2(2000),
    board_view NUMBER(11),
    write_date DATE
);

CREATE SEQUENCE board_id_seq NOCACHE MAXVALUE 999999;

INSERT INTO board(board_id, writer, board_pw, board_title, board_content, board_view, write_date)
VALUES(board_id_seq.nextval, 'tester', 1234, 'TEST TITLE', 'test content', 0, sysdate);

COMMIT;

SELECT * FROM 
(SELECT rownum AS rn, a.* FROM (SELECT * FROM board ORDER BY board_id DESC) a)
WHERE rn BETWEEN 31 AND 40;


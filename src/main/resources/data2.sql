SET @coach_id = (SELECT ID
                 FROM PUBLIC.COACH
                 WHERE EMAIL = 'xiyuan.tyler@gmail.com');

INSERT INTO PUBLIC.STUDENT (CREATED_AT, UPDATED_AT, COACH, ID, CREATED_BY, EMAIL, NAME, PICTURE, UPDATED_BY, LOCATION)
VALUES (null, null, @coach_id, '2bbbc1cb-951c-4c6b-96b1-0520517af069', null, 'test@gmail.com', 'Test', '', null,
        'MILPITAS');
INSERT INTO PUBLIC.STUDENT (CREATED_AT, UPDATED_AT, COACH, ID, CREATED_BY, EMAIL, NAME, PICTURE, UPDATED_BY, LOCATION)
VALUES (null, null, @coach_id, '2bbbc1cb-951c-4c6b-96b1-0520517af070', null, 'test1@gmail.com', 'Test1', '', null,
        'MILPITAS');

SET @test_id = (SELECT ID
                FROM PUBLIC.STUDENT
                WHERE NAME = 'Test');
SET @test_id1 = (SELECT ID
                 FROM PUBLIC.STUDENT
                 WHERE NAME = 'Test1');

INSERT INTO PUBLIC.SLOT (CREATED_AT, END_AT, START_AT, UPDATED_AT, CLASS_ID, COACH, ID, STUDENT, CREATED_BY, UPDATED_BY,
                         STATUS)
VALUES (null, '2025-02-25 19:30:00.000000', '2025-02-25 13:30:00.000000', null, '2bbbc1cb-951c-4c6b-96b1-0520517af062',
        @coach_id, '9d00e044-a60d-484b-a73a-05b970152d55', @test_id, null, null, 'AVAILABLE');
INSERT INTO PUBLIC.SLOT (CREATED_AT, END_AT, START_AT, UPDATED_AT, CLASS_ID, COACH, ID, STUDENT, CREATED_BY, UPDATED_BY,
                         STATUS)
VALUES (null, '2025-02-25 14:30:00.000000', '2025-02-25 13:30:00.000000', null, '4741658f-82f7-4041-91a2-d20bc4135b12',
        @coach_id, '29fe4b24-f65e-4c24-bc49-172628679972', @test_id1, null, null, 'AVAILABLE');
INSERT INTO PUBLIC.SLOT (CREATED_AT, END_AT, START_AT, UPDATED_AT, CLASS_ID, COACH, ID, STUDENT, CREATED_BY, UPDATED_BY,
                         STATUS)
VALUES (null, '2025-02-25 21:30:00.000000', '2025-02-25 20:30:00.000000', null, '4741658f-82f7-4041-91a2-d20bc4135b13',
        @coach_id, '29fe4b24-f65e-4c24-bc49-172628679971', @test_id, null, null, 'AVAILABLE');
INSERT INTO PUBLIC.SLOT (CREATED_AT, END_AT, START_AT, UPDATED_AT, CLASS_ID, COACH, ID, STUDENT, CREATED_BY, UPDATED_BY,
                         STATUS)
VALUES (null, '2025-02-25 22:00:00.000000', '2025-02-25 21:00:00.000000', null, '4741658f-82f7-4041-91a2-d20bc4135b14',
        @coach_id, '29fe4b24-f65e-4c24-bc49-172628679970', @test_id1, null, null, 'AVAILABLE');
INSERT INTO PUBLIC.SLOT (CREATED_AT, END_AT, START_AT, UPDATED_AT, CLASS_ID, COACH, ID, STUDENT, CREATED_BY, UPDATED_BY,
                         STATUS)
VALUES (null, '2025-02-25 22:30:00.000000', '2025-02-25 21:30:00.000000', null, '4741658f-82f7-4041-91a2-d20bc4135b15',
        @coach_id, '29fe4b24-f65e-4c24-bc49-172628679974', @test_id, null, null, 'AVAILABLE');

INSERT INTO PUBLIC.SLOT (CREATED_AT, END_AT, START_AT, UPDATED_AT, CLASS_ID, COACH, ID, STUDENT, CREATED_BY, UPDATED_BY,
                         STATUS)
VALUES (null, '2025-02-26 17:30:00.000000', '2025-02-26 16:30:00.000000', null, '4741658f-82f7-4041-91a2-d20bc4135b25',
        @coach_id, '29fe4b24-f65e-4c24-bc49-172628679964', @test_id, null, null, 'AVAILABLE');
INSERT INTO PUBLIC.SLOT (CREATED_AT, END_AT, START_AT, UPDATED_AT, CLASS_ID, COACH, ID, STUDENT, CREATED_BY, UPDATED_BY,
                         STATUS)
VALUES (null, '2025-02-26 18:30:00.000000', '2025-02-26 17:30:00.000000', null, '4741658f-82f7-4041-91a2-d20bc4135b35',
        @coach_id, '29fe4b24-f65e-4c24-bc49-172628679174', @test_id, null, null, 'AVAILABLE');
INSERT INTO PUBLIC.SLOT (CREATED_AT, END_AT, START_AT, UPDATED_AT, CLASS_ID, COACH, ID, STUDENT, CREATED_BY, UPDATED_BY,
                         STATUS)
VALUES (null, '2025-02-26 20:30:00.000000', '2025-02-26 19:30:00.000000', null, '4741658f-82f7-4041-91a2-d20bc4135b45',
        @coach_id, '29fe4b24-f65e-4c24-bc49-172628649974', @test_id, null, null, 'AVAILABLE');
INSERT INTO PUBLIC.SLOT (CREATED_AT, END_AT, START_AT, UPDATED_AT, CLASS_ID, COACH, ID, STUDENT, CREATED_BY, UPDATED_BY,
                         STATUS)
VALUES (null, '2025-02-26 21:30:00.000000', '2025-02-26 20:30:00.000000', null, '4741658f-82f7-4041-91a2-d20bc4135b55',
        @coach_id, '29fe4b24-f65e-4c24-bc49-172625679974', @test_id, null, null, 'AVAILABLE');

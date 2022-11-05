--ntile function divides data in number of groups mentioned in ntile argument
select course_no, revenue, ntile(5) 
over (order by revenue desc) ntilefunc
from course_revenue;

--Refer StudentSchema.sql for table data 
select student_id, numeric_grade,
rank() over (order by numeric_grade) numericgrade_rank, --skips the rank 
dense_rank() over (order by numeric_grade) numericgrade_denserank, --doesnt skip th rank
row_number() over (order by numeric_grade) numericgrade_rownum --continuous
from grade
where student_id = 254
and section_id = 87;

CREATE TABLE course_revenue
(
  course_no       NUMBER(8) NOT NULL,
  revenue         NUMBER,
  course_fee      NUMBER(9,2),
  num_enrolled    NUMBER,
  num_of_sections NUMBER);

INSERT INTO course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections)
VALUES (10, 1195, 1195, 1, 1);
INSERT INTO course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections)
VALUES (20, 10755, 1195, 9, 4);
INSERT INTO course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections)
VALUES (25, 53775, 1195, 45, 8);
INSERT INTO course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections)
VALUES (100, 15535, 1195, 13, 5);
INSERT INTO course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections)
VALUES (120, 27485, 1195, 23, 6);
INSERT INTO course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections)
VALUES (122, 28680, 1195, 24, 5);
INSERT INTO course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections)
VALUES (124, 9560, 1195, 8, 3);
INSERT INTO course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections)
VALUES (125, 9560, 1195, 8, 4);
INSERT INTO course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections)
VALUES (130, 9560, 1195, 8, 3);
INSERT INTO course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections)
VALUES (132, 2390, 1195, 2, 1);
INSERT INTO course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections)
VALUES (134, 2390, 1195, 2, 2);
INSERT INTO course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections)
VALUES (135, 4380, 1095, 4, 3);
INSERT INTO course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections)
VALUES (140, 17925, 1195, 15, 2);
INSERT INTO course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections)
VALUES (142, 8365, 1195, 7, 2);
INSERT INTO course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections)
VALUES (145, 2390, 1195, 2, 1);
INSERT INTO course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections)
VALUES (146, 3585, 1195, 3, 2);
INSERT INTO course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections)
VALUES (147, 5975, 1195, 5, 1);
INSERT INTO course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections)
VALUES (204, 1195, 1195, 1, 1);
INSERT INTO course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections)
VALUES (230, 15330, 1095, 14, 2);
INSERT INTO course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections)
VALUES (240, 14235, 1095, 13, 2);
INSERT INTO course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections)
VALUES (310, 4780, 1195, 4, 1);
INSERT INTO course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections)
VALUES (330, 3585, 1195, 3, 1);
INSERT INTO course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections)
VALUES (350, 10755, 1195, 9, 2);
INSERT INTO course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections)
VALUES (420, 2390, 1195, 2, 1);
COMMIT;



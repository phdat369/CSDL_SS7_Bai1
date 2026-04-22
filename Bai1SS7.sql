-- Phân tích: 
-- Trong where người ta dùng dấu bằng để so sánh, ban đầu đúng là do có 1 giá trị nhưng sau đó lại lỗi là vì sau khi thêm thì có nhiều hơn 1 nên nó không thể so sánh được, vì thế phải dùng in trong trường hợp này 

-- Sửa code: 
SELECT title, price
FROM Courses
WHERE price in (SELECT price FROM Courses WHERE instructor_id = 5);
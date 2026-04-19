# 🎓 Hệ Thống Đăng Ký Học Phần (Course Registration System)

Dự án quản lý đăng ký môn học trực tuyến dành cho sinh viên, được xây dựng trên nền tảng Spring Boot. Hệ thống hỗ trợ sinh viên quản lý lộ trình học tập, đăng ký lớp học và theo dõi thời khóa biểu qua các học kỳ.

## 🛠 Công nghệ sử dụng

Dự án tích hợp các công nghệ hiện đại trong hệ sinh thái Java:

- **Ngôn ngữ:** Java 21 (LTS)
- **Framework chính:** Spring Boot 3.2.5
- **Bảo mật:** Spring Security (Xác thực và phân quyền Admin/Student)
- **Persistence:** Spring Data JPA (Hibernate)
- **Cơ sở dữ liệu:** MySQL 8.0
- **Giao diện:** Thymeleaf, Bootstrap 5, HTML/CSS
- **Quản lý thư viện:** Maven Version 3.6 trở lên.
- **Tiện ích:** Lombok (Giảm thiểu mã nguồn thừa)

## 📂 Cấu trúc thư mục dự án

````text
course_registration/
├── database/                # Chứa các file script SQL khởi tạo dữ liệu
│   └── setup_data.sql       # Script CREATE TABLE & INSERT INTO (Semester 1, 2, 3)
├── src/
│   ├── main/
│   │   ├── java/            # Mã nguồn Java (Controller, Service, Entity, Repository)
│   │   └── resources/
│   │       ├── static/      # Tài nguyên tĩnh (CSS, JS, Images)
│   │       ├── templates/   # Giao diện HTML (Thymeleaf)
│   │       └── application.properties # Cấu hình Database & Server
├── .gitignore               # Cấu hình các file không đẩy lên GitHub
├── pom.xml                  # File quản lý Maven Dependencies
└── README.md                # Hướng dẫn dự án
## 🚀 Chức năng chính

- **Sinh viên:** Đăng nhập, Xem danh sách môn học, Đăng ký học phần (kiểm tra trùng lịch, sĩ số), Xem thời khóa biểu, Xem điểm.
- **Quản trị viên:** Quản lý sinh viên/giảng viên, Quản lý lớp học, Mở/Đóng cổng đăng ký.

## ⚙️ Cài đặt & Chạy dự án

1. Thiết lập Cơ sở dữ liệu:

- Mở trình quản lý MySQL (Workbench/cmd).
- Mở file /database/setup_data.sql và thực thi toàn bộ. Hệ thống sẽ tự động khởi tạo database dkhp và toàn bộ dữ liệu mẫu.
2. **Cấu hình:** Sửa thông tin DB trong `src/main/resources/application.properties`.

   ```properties
    spring.datasource.url=jdbc:mysql://localhost:3306/dkhp?useSSL=false&serverTimezone=UTC
    spring.datasource.username=root
    spring.datasource.password=
    spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver

    spring.jpa.hibernate.ddl-auto=none
    spring.jpa.show-sql=true
    spring.jpa.properties.hibernate.format_sql=true
````

3. Khởi chạy ứng dụng

- **Cách 1 (Sử dụng IDE):** Mở dự án bằng IntelliJ IDEA hoặc Eclipse, tìm file `CourseRegistrationApplication.java` (hoặc file có chứa hàm `main`) và chọn **Run**.
- **Cách 2 (Sử dụng lệnh Maven):** Mở terminal tại thư mục gốc của dự án và gõ:
  ```bash
  mvn spring-boot:run
  ```
- **Truy cập:** Sau khi thấy dòng chữ Started CourseRegistrationApplication, hãy mở trình duyệt và truy cập: http://localhost:8080

## 🔑 Tài khoản đăng nhập mẫu

- **Admin:** admin / 123
- **Sinh viên:** sv0001 / 123

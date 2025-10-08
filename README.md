<!-- # echoverse_mobile

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference. -->
# 🎵 EchoVerse Mobile

Ứng dụng Flutter cho nền tảng **EchoVerse - Music Universe Platform**.  
Dự án này được tổ chức theo mô hình **Git Flow** và sử dụng **GitHub Actions (CI)** để kiểm tra code tự động.

---

## 🧭 1. Quy trình làm việc (Git Flow)

### Các nhánh chính:

| Loại nhánh | Tên | Mục đích |
|-------------|------|----------|
| **Main** | `main` | Mã nguồn đã ổn định, sẵn sàng phát hành |
| **Develop** | `develop` | Mã nguồn đang phát triển, nơi hợp nhất các tính năng |
| **Feature** | `feature/<tên-tính-năng>` | Mỗi nhánh tương ứng với một tính năng cụ thể |
| **Fix** | `fix/<mô-tả-lỗi>` | Dùng để sửa lỗi |
| **Hotfix** | `hotfix/<mô-tả>` | Sửa lỗi khẩn cấp trên môi trường production |

---

## ⚙️ 2. Quy trình làm việc chuẩn

### Khi bắt đầu làm việc
```bash
git checkout develop
git pull origin develop
git checkout -b feature/<ten-tinh-nang>
Khi code xong:
git add .
git commit -m "feat: mo-ta-tinh-nang"
git push origin feature/<ten-tinh-nang>

Sau khi push lên GitHub:

Tạo Pull Request (PR) từ feature/<ten-tinh-nang> → develop

Chờ CI chạy xong (analyze + test)

Nếu CI ✅ passed → Reviewer sẽ merge PR

Khi cần release: Tạo PR từ develop → main

🔁 3. Tự động kiểm tra (CI)
CI Workflow: .github/workflows/flutter-ci.yml

Mỗi khi:

Có code push lên develop hoặc nhánh feature/*

Có Pull Request vào main

→ GitHub Actions sẽ tự động:

Cài Flutter (3.32.4)

Cài dependencies (flutter pub get)

Chạy kiểm tra code (flutter analyze)

Chạy test (flutter test)

Báo kết quả ✅ hoặc ❌

⚠️ Lưu ý: Không merge khi CI chưa pass.

📘 4. Quy tắc commit message

Dùng conventional commits để code dễ hiểu và dễ release:

Loại	Ý nghĩa	Ví dụ
feat:	Thêm tính năng mới	feat: add login screen
fix:	Sửa lỗi	fix: handle null pointer on player
refactor:	Cải thiện logic, không thay đổi chức năng	refactor: optimize data fetching
chore:	Cập nhật config, lib, CI/CD,...	chore: update flutter version
docs:	Thay đổi tài liệu	docs: update readme
🚫 5. Một số quy tắc quan trọng

❌ Không push trực tiếp vào main hoặc develop

✅ Luôn pull code mới nhất trước khi bắt đầu làm

✅ Chạy flutter analyze và flutter test trước khi commit

✅ Code phải CI pass trước khi merge

✅ Đặt tên nhánh đúng chuẩn (feature/..., fix/...) để CI tự động chạy

💡 6. Một số lệnh thường dùng
# Chuyển nhánh
git checkout <branch-name>

# Kéo code mới nhất
git pull origin <branch-name>

# Đẩy code lên
git push origin <branch-name>

# Xem trạng thái CI (trên GitHub)
# → Actions tab trong repo

🧑‍💻 7. Contributors
Tên	Vai trò
Sang	Tech Lead / Maintainer
[Tên dev khác]	Flutter Developer
🪄 8. Môi trường & Công nghệ

Flutter: 3.32.4

Dart SDK: >=3.2

CI/CD: GitHub Actions

IDE: Android Studio / IntelliJ / VSCode

Platform: Android / iOS / (Web nếu cần)

📜 9. Bản quyền

Copyright © 2025 EchoVerse Team
Mọi hình ảnh, logo và mã nguồn thuộc về nhóm phát triển EchoVerse.

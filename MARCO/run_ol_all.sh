#!/bin/bash

# Dừng ngay nếu có lỗi
set -e 

echo "========================================================"
echo "🛠️  CẤU HÌNH RUN TAG CHO CÁC MODULE VITERBI (MỚI)"
echo "========================================================"

# --- [PHẦN CẤU HÌNH TAG] ---
# Tên Tag riêng cho từng khối (Dùng để quản lý kết quả trong thư mục runs/)

# 1. Các khối cơ bản (Giữ nguyên)
TAG_Branch_Metrics="Branch_Metrics_run"      
TAG_Controller="Controller_run"       
TAG_Maximum_Path_Memory="Maximum_Path_Memory_run"    

# 2. Các khối đã được GỘP (Mới)
# Thay thế cho ACS + Metric Register
TAG_Path_Metric_Unit="Path_Metric_Unit_run"  

# Thay thế cho Register Exchange + Output Register Location
TAG_Survivor_Memory_Unit="Survivor_Memory_Unit_run"  

# ----------------------------------------------------------

# Hàm xử lý chính (Giữ nguyên logic cũ vì nó đã viết tốt)
run_macro() {
    FOLDER=$1
    CONFIG=$2
    TAG=$3
    
    echo "--------------------------------------------------------"
    echo "🚀 Đang chạy khối: $FOLDER (Tag: $TAG)"
    echo "--------------------------------------------------------"

    # 1. Kiểm tra thư mục
    if [ ! -d "$FOLDER" ]; then
        echo "❌ Lỗi: Không tìm thấy thư mục $FOLDER"
        echo "   -> Bạn hãy chắc chắn đã tạo thư mục '$FOLDER' chứa code mới và file config.json"
        exit 1
    fi
    cd "$FOLDER"

    # 2. Chạy OpenLane 2
    # --overwrite: Xóa kết quả cũ của Tag này nếu đã tồn tại để tránh conflict
    openlane "$CONFIG" --run-tag "$TAG" --overwrite

    # 3. Kiểm tra file LEF kết quả (Quan trọng để chạy Top-level sau này)
    # OpenLane thường xuất ra: runs/<tag>/final/lef/<design_name>.lef
    # Lưu ý: Tên file .lef phải trùng tên folder (DESIGN_NAME trong config)
    LEF_FILE="runs/$TAG/final/lef/$FOLDER.lef"

    if [ -f "$LEF_FILE" ]; then
        echo "✅ [OK] Đã tạo thành công file: $LEF_FILE"
    else
        echo "❌ [LỖI] Không tìm thấy file LEF tại: $LEF_FILE"
        echo "   -> Kiểm tra log trong runs/$TAG/ để biết chi tiết."
        exit 1
    fi

    # 4. Quay ra thư mục gốc
    cd ..
    echo "Status: Hoàn thành khối $FOLDER."
    echo ""
}

# --- THỰC THI (Gọi hàm cho danh sách module mới) ---

# 1. Chạy các khối tính toán cơ bản
run_macro "Branch_Metrics"       "config.json" "$TAG_Branch_Metrics"
run_macro "Controller"           "config.json" "$TAG_Controller"
run_macro "Maximum_Path_Memory"  "config.json" "$TAG_Maximum_Path_Memory"

# 2. Chạy khối PMU (Đã gộp ACS + Metric Register)
run_macro "Path_Metric_Unit"     "config.json" "$TAG_Path_Metric_Unit"

# 3. Chạy khối SMU (Đã gộp RE + Output Location)
run_macro "Survivor_Memory_Unit" "config.json" "$TAG_Survivor_Memory_Unit"


echo "========================================================"
echo "🎉 TẤT CẢ 5 KHỐI MACRO ĐÃ ĐƯỢC TỔNG HỢP THÀNH CÔNG!"
echo "   -> Bây giờ bạn có thể dùng các file LEF/GDS này để chạy Viterbi_Top."
echo "========================================================"

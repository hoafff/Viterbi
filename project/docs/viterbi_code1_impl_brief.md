# Viterbi Decoder — Code 1 Implementation Brief (Week Code 1)

## 1. Mục đích của file này

File này **không phải bản tóm lược**, mà là **khung triển khai đủ chi tiết để dùng làm context cho AI sinh code theo từng phần** cho bài tập lớn Viterbi ở **tuần Code 1**.

Mục tiêu của tuần này:
- hoàn thiện RTL mức cơ bản cho bộ giải mã Viterbi,
- ghép được top-level,
- viết **mô phỏng thử** để chứng minh luồng chạy đúng,
- **chưa cần verify toàn diện**, chưa cần exhaustive test, chưa cần sign-off.

Tài liệu này được viết để dùng cùng với:
- đề bài gốc,
- Spec 1 / Spec 2,
- các ảnh tiến độ môn học,
- và để **feed AI theo từng module / từng prompt nhỏ**, tránh vượt giới hạn dung lượng chat.

---

## 2. Phạm vi đúng của tuần Code 1

### 2.1. Những gì cần có trong tuần này
- RTL cho bộ giải mã Viterbi 16-bit encoded input -> 8-bit decoded output.
- Thiết kế theo mã chập:
  - Constraint length `K = 3`
  - Coding rate `R = 1/2`
  - Đa thức sinh tương đương `g1 = 111`, `g2 = 101`
- Cấu trúc 4 trạng thái trellis.
- Có testbench mô phỏng thử:
  - reset,
  - start decode,
  - chạy ít nhất vài vector mẫu,
  - kiểm tra được `o_done`, `o_data`, và quan sát waveform.
- Code sạch, có chia module hoặc chia logic rõ ràng.

### 2.2. Những gì **chưa bắt buộc** trong tuần này
- Chưa cần verify exhaustive với toàn bộ bộ test lớn.
- Chưa cần coverage, assertion, random test, scoreboard hoàn chỉnh.
- Chưa cần hậu tổng hợp, STA hoàn chỉnh, layout.
- Chưa cần report verify chi tiết kiểu tuần Verify.

### 2.3. Hướng làm phù hợp nhất cho Code 1
Có 2 hướng:
1. **Modular RTL đúng theo spec**: `control`, `extract_bit`, `branch_metric`, `add_comp_slt`, `memory`, `traceback`, `viterbi_decoder`.
2. **Semi-modular / pragmatic**: vẫn giữ top rõ ràng nhưng cho phép một số logic gộp để đẩy nhanh tiến độ.

**Khuyến nghị cho Code 1:**
- vẫn sinh code **theo module** để dễ đối chiếu spec,
- nhưng testbench chỉ cần **mô phỏng thử có định hướng**, chưa cần verify toàn diện.

---

## 3. Chốt thông số thiết kế để AI không suy diễn sai

## 3.1. I/O top-level
```verilog
module viterbi_decoder (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        en,
    input  wire [15:0] i_data,
    output reg  [7:0]  o_data,
    output reg         o_done
);
```

## 3.2. Quy ước reset và hoạt động
- Reset: **active-low**, bất đồng bộ.
- Hệ thống chỉ xử lý **1 frame tại 1 thời điểm**.
- `en` chỉ được chấp nhận khi khối đang idle.
- Tại cạnh clock chấp nhận `en`, phải **latch `i_data`** để xử lý toàn frame đó.
- `o_done` là pulse **1 chu kỳ clock** khi `o_data` hợp lệ.

## 3.3. Kích thước dữ liệu
- `i_data[15:0]`: gồm **8 cặp bit nhận**.
- `o_data[7:0]`: dữ liệu giải mã ra 8 bit.
- Số trạng thái trellis: `4`.

## 3.4. Mục tiêu timing
- Đề bài tối thiểu: **50 MHz**.
- Spec nội bộ đã nâng mục tiêu lên: **100 MHz**.

**Quy ước thực dụng cho Code 1:**
- Viết RTL sạch, đồng bộ, dễ tổng hợp,
- ưu tiên đúng chức năng và mô phỏng được,
- giữ coding style đủ tốt để không cản trở mục tiêu 100 MHz về sau.

---

## 4. Kiến trúc nên dùng cho tuần Code 1

## 4.1. Danh sách module nên sinh
1. `control.v`
2. `extract_bit.v`
3. `branch_metric.v`
4. `add_comp_slt.v`
5. `memory.v`
6. `traceback.v`
7. `viterbi_decoder.v`
8. `tb_viterbi_decoder_basic.v`

## 4.2. Cấu trúc thư mục gợi ý
```text
project/
├── rtl/
│   ├── control.v
│   ├── extract_bit.v
│   ├── branch_metric.v
│   ├── add_comp_slt.v
│   ├── memory.v
│   ├── traceback.v
│   └── viterbi_decoder.v
├── tb/
│   └── tb_viterbi_decoder_basic.v
├── sim/
│   ├── run.f
│   └── run_xrun.sh
└── docs/
    └── viterbi_code1_impl_brief.md
```

## 4.3. Luồng dữ liệu tổng thể
```text
i_data -> extract_bit -> branch_metric -> add_comp_slt -> memory -> traceback -> o_data/o_done
                    ^                                             |
                    |-------------------- control -----------------|
```

---

## 5. Hợp đồng chức năng của từng module

## 5.1. `control`
### Vai trò
Điều phối các pha xử lý:
- chờ lệnh bắt đầu,
- extract pair,
- metric + ACS,
- store memory,
- traceback,
- done.

### Input
- `clk`
- `rst_n`
- `en`

### Output
- `en_ext`
- `en_brch`
- `en_acs`
- `en_mem`
- `en_trbk`
- có thể thêm `busy` hoặc `frame_done_internal` nếu cần cho top.

### FSM nên dùng
- `IDLE`
- `EXT`
- `BM_ACS`
- `STORE`
- `TRACEBACK`
- `DONE`

### Quy tắc vận hành
- Sau reset: về `IDLE`, mọi enable = 0.
- Khi `en=1` ở idle: bắt đầu một phiên giải mã mới.
- Lặp `EXT -> BM_ACS -> STORE` đúng **8 lần**.
- Sau đó chuyển `TRACEBACK` trong **8 chu kỳ**.
- Kết thúc bằng `DONE` 1 chu kỳ rồi về `IDLE`.

### Gợi ý cài đặt
- Có thể dùng:
  - `pair_count` cho 8 cặp bit,
  - `tb_count` cho 8 bước traceback.
- Nếu cần đơn giản hóa, có thể để `control` chỉ phát pha và các bộ đếm đặt ở top.

---

## 5.2. `extract_bit`
### Vai trò
Tách `i_data[15:0]` thành 8 cặp bit theo thứ tự thời gian:
- `i_data[15:14]`
- `i_data[13:12]`
- `...`
- `i_data[1:0]`

### Input
- `clk`
- `rst_n`
- `en_ext`
- `i_data[15:0]`

### Output
- `o_rx[1:0]`

### Gợi ý nội bộ
- dùng con trỏ hoặc counter 0..7.
- Tại mỗi xung `en_ext`, xuất ra đúng 1 cặp bit.

### Quy tắc index khuyến nghị
```verilog
o_rx = i_data[15 - 2*idx -: 2];
```

### Yêu cầu quan trọng
- Không được đảo thứ tự pair.
- Phải khớp hoàn toàn với cách trellis được xây dựng trong spec.

---

## 5.3. `branch_metric`
### Vai trò
Từ `i_rx[1:0]`, sinh ra 8 branch metric `hd1..hd8` theo khoảng cách Hamming.

### Input
- `rst_n`
- `en_brch`
- `i_rx[1:0]`

### Output
- `hd1..hd8`, mỗi tín hiệu 2 bit.

### Bảng ánh xạ bắt buộc
| i_rx | hd1 | hd2 | hd3 | hd4 | hd5 | hd6 | hd7 | hd8 |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| 00 | 0 | 2 | 1 | 1 | 2 | 0 | 1 | 1 |
| 01 | 1 | 1 | 2 | 0 | 1 | 1 | 0 | 2 |
| 10 | 1 | 1 | 0 | 2 | 1 | 1 | 2 | 0 |
| 11 | 2 | 0 | 1 | 1 | 0 | 2 | 1 | 1 |

### Gợi ý coding style
- viết combinational `always @(*)` hoặc `always_comb`.
- khi `rst_n=0` hoặc `en_brch=0`, có thể ép toàn bộ output = 0.

### Lưu ý
Đây là module rất phù hợp để AI sinh code hoàn chỉnh ngay một lần.

---

## 5.4. `add_comp_slt`
### Vai trò
Thực hiện bước **Add-Compare-Select (ACS)**:
- cập nhật path metric của 4 trạng thái,
- chọn predecessor tối ưu cho mỗi trạng thái đích,
- sau bước cuối cùng chọn `o_slt_node` để bắt đầu traceback.

### Input
- `clk`
- `rst_n`
- `en_acs`
- `hd1..hd8`

### Output
- `o_prev_st_00`
- `o_prev_st_01`
- `o_prev_st_10`
- `o_prev_st_11`
- `o_slt_node`

### Thanh ghi path metric nội bộ
Nên có 4 thanh ghi:
- `PM00`
- `PM01`
- `PM10`
- `PM11`

### Khởi tạo path metric
- `PM00 = 0`
- `PM01 = MMAX`
- `PM10 = MMAX`
- `PM11 = MMAX`

### MMAX gợi ý
- Có thể dùng `5'd31` hoặc giá trị đủ lớn so với metric tối đa của 8 bước.
- Không cần tối ưu quá mức ở Code 1.

### Quy tắc chọn ứng viên cho từng trạng thái đích
#### Trạng thái đích `00`
- ứng viên 1: `PM00 + hd1`, predecessor = `00`
- ứng viên 2: `PM01 + hd5`, predecessor = `01`

#### Trạng thái đích `10`
- ứng viên 1: `PM00 + hd2`, predecessor = `00`
- ứng viên 2: `PM01 + hd6`, predecessor = `01`

#### Trạng thái đích `01`
- ứng viên 1: `PM10 + hd3`, predecessor = `10`
- ứng viên 2: `PM11 + hd7`, predecessor = `11`

#### Trạng thái đích `11`
- ứng viên 1: `PM10 + hd4`, predecessor = `10`
- ứng viên 2: `PM11 + hd8`, predecessor = `11`

### Tie-break bắt buộc
Nếu hai metric bằng nhau, dùng ưu tiên tĩnh:
- với `00`, `10`: ưu tiên ứng viên từ predecessor `00`
- với `01`, `11`: ưu tiên ứng viên từ predecessor `10`

### Chọn `o_slt_node` cuối frame
Chọn state có **final path metric nhỏ nhất**.
Nếu bằng nhau, ưu tiên:
1. `00`
2. `10`
3. `01`
4. `11`

### Gợi ý thực dụng cho Code 1
- Có thể thêm input `i_last_step` hoặc `i_step_count` để biết khi nào update `o_slt_node`.
- Nếu muốn module độc lập hơn, cho top quyết định state cuối cũng được, nhưng phải thống nhất ngay từ đầu.

---

## 5.5. `memory`
### Vai trò
Lưu predecessor cho từng bước thời gian của trellis, rồi đọc ngược khi traceback.

### Input
- `clk`
- `rst_n`
- `en_mem`
- `mode` hoặc `i_write_mode / i_read_mode`
- `i_prev_st_00`
- `i_prev_st_01`
- `i_prev_st_10`
- `i_prev_st_11`

### Output
- `o_prev_st_00`
- `o_prev_st_01`
- `o_prev_st_10`
- `o_prev_st_11`

### Tổ chức bộ nhớ gợi ý
- 8 time steps
- mỗi time step lưu 4 predecessor, mỗi predecessor 2 bit

Cách đơn giản:
```verilog
reg [1:0] mem00 [0:7];
reg [1:0] mem01 [0:7];
reg [1:0] mem10 [0:7];
reg [1:0] mem11 [0:7];
```

### Con trỏ cần có
- `wr_ptr`: 0 -> 7 trong pha ghi
- `tb_ptr`: 7 -> 0 trong pha đọc ngược

### Chế độ vận hành
#### Write mode
- mỗi lần `en_mem=1` trong pha STORE:
  - ghi đồng thời 4 predecessor vào cùng 1 time index.

#### Readback mode
- mỗi lần `en_mem=1` trong pha traceback:
  - xuất bộ predecessor của time index hiện tại.

### Lưu ý cho Code 1
- Có thể đặt logic con trỏ trong `memory`, hoặc đặt con trỏ ở top/control rồi truyền index vào.
- Nếu AI sinh code dễ lỗi vì hidden state, ưu tiên giải pháp rõ ràng: **truyền index vào module memory**.

---

## 5.6. `traceback`
### Vai trò
Dùng `i_slt_node` làm điểm bắt đầu, đọc predecessor đã lưu theo thứ tự ngược thời gian, từ đó dựng `o_data[7:0]`.

### Input
- `clk`
- `rst_n`
- `en_trbk`
- `i_bck_prev_st_00`
- `i_bck_prev_st_01`
- `i_bck_prev_st_10`
- `i_bck_prev_st_11`
- `i_slt_node`

### Output
- `o_data[7:0]`
- `o_done`

### Quy tắc suy bit từ current state
- current state `00` -> decoded bit = 0
- current state `01` -> decoded bit = 0
- current state `10` -> decoded bit = 1
- current state `11` -> decoded bit = 1

### Quy tắc chuyển predecessor
- nếu current state = `00` -> next state = `i_bck_prev_st_00`
- nếu current state = `01` -> next state = `i_bck_prev_st_01`
- nếu current state = `10` -> next state = `i_bck_prev_st_10`
- nếu current state = `11` -> next state = `i_bck_prev_st_11`

### Gợi ý cách ghi ra `o_data`
- traceback đi ngược, nên cách trực quan nhất là:
  - bước đầu ghi `o_data[7]`
  - ...
  - bước cuối ghi `o_data[0]`
- dùng counter giảm từ 7 về 0 là dễ debug nhất.

### Điều kiện `o_done`
- chỉ lên 1 ở chu kỳ cuối traceback,
- giữ đúng 1 chu kỳ rồi hạ xuống.

---

## 5.7. `viterbi_decoder` (top)
### Vai trò
Ghép toàn bộ module con, chốt input frame, điều phối luồng xử lý, xuất `o_data` và `o_done`.

### Yêu cầu top-level
- latch `i_data` khi chấp nhận `en`.
- bỏ qua request mới khi đang busy.
- ghép đúng thứ tự module.
- dữ liệu ra chỉ hợp lệ khi `o_done=1`.

### Khuyến nghị kiến trúc top cho Code 1
- Cho phép top giữ:
  - `frame_latched`
  - `pair_count`
  - `tb_count`
  - `busy`
- `control` có thể chỉ lo phát pha.
- top chịu trách nhiệm nối chỉ số cho `extract_bit`, `memory`, `traceback`.

### Latency
Nếu bám spec chặt:
- `1 + 8*3 + 8 + 1 = 34 cycles`

Nếu làm bản Code 1 tối giản hơn:
- vẫn nên cố giữ nhịp tách pha để dễ đối chiếu spec,
- tránh làm hoàn toàn combinational one-shot vì sẽ khó mở rộng sang verify/synthesis sau này.

---

## 6. Gói yêu cầu coding style để AI sinh code ít lỗi hơn

Khi dùng AI sinh RTL, luôn giữ các ràng buộc sau:
- Verilog-2001 hoặc SystemVerilog đơn giản.
- Không dùng construct quá fancy.
- Mỗi module phải có:
  - header comment,
  - mô tả input/output,
  - reset behavior,
  - note về timing/phase.
- Không để latch vô ý.
- Tách combinational và sequential rõ ràng.
- Với counter/state, dùng `localparam`.
- Với `case`, luôn có `default`.
- Không dùng delay `#` trong RTL.
- Tên tín hiệu giữ thống nhất với spec.

---

## 7. Phạm vi mô phỏng cho tuần Code 1

## 7.1. Mục tiêu mô phỏng tuần này
Không phải verify toàn diện, mà là:
- chứng minh luồng xử lý chạy được,
- top nhận frame,
- đi qua đủ pha,
- traceback ra được dữ liệu,
- `o_done` pulse đúng,
- có waveform nhìn được.

## 7.2. Testbench nên có
### File đề xuất
`tb_viterbi_decoder_basic.v`

### Các phần bắt buộc
- clock generator
- reset task
- task gửi 1 frame
- wait `o_done`
- hiển thị `o_data`
- vài testcase định hướng

## 7.3. Smoke tests đề nghị
### Test 1: all-zero data
- sinh encoded frame từ input `8'b00000000`
- decoder phải trả lại `00000000`

### Test 2: all-one data
- input `8'b11111111`
- decoder phải trả đúng lại 8 bit đó

### Test 3: pattern xen kẽ
- input `8'b10101010` hoặc `8'b01010101`

### Test 4: mẫu gần giống ví dụ tài liệu
- ví dụ `011001xx` hoặc vector tự chọn để dễ đối chiếu tay

## 7.4. Có nên viết encoder trong testbench không?
**Nên.**
Điều này giúp mô phỏng thử nhanh mà chưa phụ thuộc ngay vào file test lớn.

### Encoder tham chiếu trong TB
Cho mỗi bit đầu vào `u` và hai thanh ghi trạng thái `S0`, `S1`:
- `out1 = u ^ S0 ^ S1`
- `out2 = u ^ S1`
- sau đó shift state.

### Lợi ích
- tự tạo golden input/output cho smoke test,
- debug được lỗi traceback / bit order sớm,
- giảm phụ thuộc file external ở tuần Code 1.

## 7.5. Mức kiểm tra đủ cho Code 1
- Có thể chỉ cần `if (o_data !== expected) $display("FAIL ...");`
- Không cần scoreboard phức tạp.
- Không cần coverage.

---

## 8. Hướng mở rộng sang verify sau này nhưng chưa làm ngay

Để tránh phá cấu trúc khi sang Week Verify, nên chuẩn bị sẵn:
- testbench có task `send_frame(encoded, expected)`
- có thể dễ dàng mở rộng sang đọc file
- signal nội bộ nên đặt dễ observe bằng waveform

Nhưng ở tuần này **không bắt buộc**:
- chưa cần đọc toàn bộ `Viterbi_output_error.txt`
- chưa cần so với toàn bộ `Viterbi_input_error.txt`
- chưa cần report verify chi tiết.

---

## 9. Gói deliverable nên nộp cho tuần Code 1

## 9.1. File RTL
- `control.v`
- `extract_bit.v`
- `branch_metric.v`
- `add_comp_slt.v`
- `memory.v`
- `traceback.v`
- `viterbi_decoder.v`

## 9.2. File mô phỏng thử
- `tb_viterbi_decoder_basic.v`
- `run.f` hoặc `run_xrun.sh`

## 9.3. Kết quả mô phỏng tối thiểu
- waveform screenshot:
  - `clk`
  - `rst_n`
  - `en`
  - `i_data`
  - `o_data`
  - `o_done`
  - nếu được: `state`, `pair_count`, `tb_count`, `cur_state`
- log pass/fail vài test cơ bản

## 9.4. Mức hoàn thiện đủ đẹp cho tuần này
- code compile sạch
- mô phỏng chạy hết mà không treo FSM
- có ít nhất vài case pass
- trình bày được luồng xử lý

---

## 10. Các lỗi AI rất hay sinh ra cho bài này

### Lỗi 1: đảo thứ tự bit nhận
AI thường đọc từ LSB lên MSB. Phải ép rõ:
- pair 1 = `i_data[15:14]`
- pair 8 = `i_data[1:0]`

### Lỗi 2: mapping state sai
Phải thống nhất 4 state:
- `00`, `01`, `10`, `11`

### Lỗi 3: traceback ghi bit ngược
Nếu `o_data` bị đảo thứ tự, kiểm tra ngay counter ghi bit và thứ tự cập nhật `cur_state`.

### Lỗi 4: quên latch `i_data`
Nếu top đọc trực tiếp `i_data` trong suốt quá trình xử lý, dễ sai khi testbench đổi data sớm.

### Lỗi 5: o_done không pulse 1 chu kỳ
Rất hay gặp khi AI viết `o_done <= 1` mà quên hạ.

### Lỗi 6: quên tie-break khi metric bằng nhau
Điều này làm kết quả không ổn định giữa các lần mô phỏng / tối ưu hóa.

### Lỗi 7: memory read/write mơ hồ
Nếu cùng 1 enable cho cả ghi và đọc mà không chốt `mode`, AI rất dễ viết sai.

---

## 11. Thứ tự nên feed AI để sinh code

## Prompt 1 — Sinh `branch_metric.v`
**Yêu cầu cho AI:**
- viết module `branch_metric`
- Verilog sạch, combinational
- input: `rst_n`, `en_brch`, `i_rx[1:0]`
- output: `hd1..hd8`, mỗi tín hiệu 2 bit
- dùng đúng bảng metric đã cho
- khi reset hoặc disable thì output = 0
- thêm comment ngắn giải thích mapping

## Prompt 2 — Sinh `extract_bit.v`
**Yêu cầu cho AI:**
- viết module `extract_bit`
- input: `clk`, `rst_n`, `en_ext`, `i_data[15:0]`
- output: `o_rx[1:0]`
- mỗi lần enable xuất đúng một cặp bit theo thứ tự `15:14`, `13:12`, ..., `1:0`
- dùng counter 0..7 hoặc pointer tương đương
- reset clear counter và output
- không được đảo thứ tự pair

## Prompt 3 — Sinh `add_comp_slt.v`
**Yêu cầu cho AI:**
- viết module `add_comp_slt`
- giữ 4 path metric nội bộ
- reset: `PM00=0`, các state khác = MMAX
- input: `clk`, `rst_n`, `en_acs`, `hd1..hd8`
- output predecessor cho 4 trạng thái đích và `o_slt_node`
- dùng đúng các công thức ACS đã mô tả
- có tie-break tĩnh
- comment rõ mapping candidate cho từng state đích

## Prompt 4 — Sinh `memory.v`
**Yêu cầu cho AI:**
- viết module `memory`
- lưu 8 bản ghi predecessor cho 4 state
- hỗ trợ write mode và readback mode
- có `wr_ptr` và `tb_ptr`, hoặc nhận index từ ngoài nếu muốn đơn giản
- output ra đúng predecessor của time-step đang đọc
- code dễ debug, không tối ưu hóa quá mức

## Prompt 5 — Sinh `traceback.v`
**Yêu cầu cho AI:**
- viết module `traceback`
- input: `clk`, `rst_n`, `en_trbk`, 4 predecessor readback, `i_slt_node`
- output: `o_data[7:0]`, `o_done`
- current state `00/01 -> bit 0`, `10/11 -> bit 1`
- mỗi chu kỳ traceback xử lý 1 bước
- sau 8 bước phát `o_done` đúng 1 chu kỳ

## Prompt 6 — Sinh `control.v`
**Yêu cầu cho AI:**
- viết FSM control cho các pha: idle, extract, metric_acs, store, traceback, done
- phát `en_ext`, `en_brch`, `en_acs`, `en_mem`, `en_trbk`
- lặp chuỗi xử lý trellis đúng 8 lần, traceback 8 lần
- reset về idle
- code rõ ràng, dùng `localparam`

## Prompt 7 — Sinh `viterbi_decoder.v`
**Yêu cầu cho AI:**
- viết top module ghép các module con
- latch `i_data` khi chấp nhận `en`
- bỏ qua request mới khi busy
- nối các tín hiệu enable, predecessor, memory, traceback đúng logic
- `o_data`, `o_done` là output top-level
- giữ coding style tổng hợp được

## Prompt 8 — Sinh `tb_viterbi_decoder_basic.v`
**Yêu cầu cho AI:**
- viết testbench cơ bản cho `viterbi_decoder`
- có clock, reset, task gửi frame
- có encoder tham chiếu trong testbench để tạo encoded frame từ input 8 bit
- chạy ít nhất 3 testcase cơ bản
- đợi `o_done`, so sánh `o_data` với expected
- in pass/fail ra console

## Prompt 9 — Sinh script mô phỏng Cadence
**Yêu cầu cho AI:**
- viết `run.f` và ví dụ lệnh `xrun`
- compile toàn bộ file rtl + tb
- bật access waveform
- không cần flow verify nâng cao

---

## 12. Tiêu chí chấp nhận cho tuần Code 1

Một bản nộp Code 1 được xem là đủ tốt nếu thỏa:
- Có đầy đủ RTL khung giải mã Viterbi.
- Có top chạy được.
- Có mô phỏng thử với một vài vector mẫu.
- `o_done` lên đúng và `o_data` đúng với các vector smoke test.
- Có waveform minh họa tiến trình.
- Chưa cần verify toàn diện.

---

## 13. Chốt chiến lược thực hiện

Nếu cần đẩy nhanh bằng AI, hãy sinh code theo đúng thứ tự sau:
1. `branch_metric`
2. `extract_bit`
3. `add_comp_slt`
4. `memory`
5. `traceback`
6. `control`
7. `top`
8. `tb`

Sau mỗi module:
- compile riêng nếu có thể,
- xem lại port name,
- kiểm tra ngay các điểm dễ sai: bit order, state mapping, tie-break, reset.

Mục tiêu của tuần này không phải “xong toàn bộ verify”, mà là:
- có một kiến trúc code đúng hướng,
- ghép được thành bộ giải mã chạy được,
- và có mô phỏng thử đủ thuyết phục để sang tuần sau mở rộng tiếp.

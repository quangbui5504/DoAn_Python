import cv2
import numpy as np
from tensorflow.keras.models import load_model
from math import floor

path_to_model = r"D:\doanpython\mnist.h5"     #CHANGE THIS
model = load_model(path_to_model)
num_of_mark_digits = 3
num_of_id_digits = 4
num_of_sub_id_digits = 3
num_of_semester_id_digits = 1

#TODO KHÔNG VIẾT SÁT LỀ, THẲNG HÀNG, NÉ SỐ 1 VÀ 7 RA, MÃ SV CỐ ĐỊNH 5 KÝ TỰ, ĐIỂM CỐ ĐỊNH LÀM TRÒN CHỮ SỐ THẬP PHÂN ĐẦU TIÊN
def Recognize_Digit(images):
  result = []
  i = 0
  for image in images:
    gray = cv2.cvtColor(image.copy(), cv2.COLOR_BGR2GRAY)                          #COPY VÌ VẪN CÒN XÀI BẢN GỐC LÚC SAU
    gray = cv2.GaussianBlur(gray, (3,3), 0)
    ret, th = cv2.threshold(gray, 0, 255, cv2.THRESH_BINARY_INV + cv2.THRESH_OTSU)

    horizontal_kernel = cv2.getStructuringElement(cv2.MORPH_RECT, (50,1))             #TẠO MASK CÁC ĐƯỜNG NẰM NGANG
    horizontal_mask = cv2.morphologyEx(th, cv2.MORPH_OPEN, horizontal_kernel, iterations=1)

    vertical_kernel = cv2.getStructuringElement(cv2.MORPH_RECT, (1,50))              #TẠO MASK CÁC ĐƯỜNG NẰM DỌC
    vertical_mask = cv2.morphologyEx(th, cv2.MORPH_OPEN, vertical_kernel, iterations=1)

    line_mask = cv2.bitwise_or(horizontal_mask, vertical_mask)                    #TẠO MASK CẢ DỌC VÀ NGANG VÌ DỮ LIỆU MÌNH ĐỌC DẠNG BẢNG

    th = cv2.inpaint(th, line_mask, 50, cv2.INPAINT_TELEA)                        #ĐẠI KHÁI LÀ TÔ CÁI BORDER BẢNG THÀNH MÀU CỦA MẤY CÁI PIXEL XUNG QUANH CHO GIỐNG MÀU NỀN

    ret, th = cv2.threshold(th, 0, 255, cv2.THRESH_BINARY_INV + cv2.THRESH_OTSU)    #THRESHOLD 2 LẦN NỮA VÌ TÁC GIẢ CẢM THẤY THẾ
    ret, th = cv2.threshold(th, 0, 255, cv2.THRESH_BINARY_INV + cv2.THRESH_OTSU)

    th = cv2.dilate(th, (11,11), iterations = 6)                    #DILATE NGON HƠN ĐỂ TRÁNH CHO PIXEL NỐI SỐ BỊ ĐỨT, TẠO BOX CHÍNH XÁC HƠN

    contours = cv2.findContours(th, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)[0]    #TÌM CẠNH
    x, y, w, h = 0, 0, 0, 0
    contours_list = []
    for cnt in contours:
      x, y, w, h = cv2.boundingRect(cnt)
      contours_list.append([x, y, w, h])
    contours_list.sort(key = lambda x: x[0])              #SẮP XẾP LẠI TỪ TRÁI QUA PHẢI ĐỂ ĐỌC ĐƯỢC OUTPUT CÓ THỨ TỰ
           
    result.append((i, []))        #result[i][1]  = tất cả kết quả đọc được ở ảnh thứ i

    for cnt in contours_list:                      #CÁI NÀY SẼ ĐỌC TẤT CẢ KÝ TỰ MÀ NÓ TÌM THẤY
      if cnt[0] > 5 and cnt[1] > 5 and (cnt[2] > 12 and cnt[3] > image.shape[0] * 0.3):
        cv2.rectangle(image, (cnt[0], cnt[1]), (cnt[0] + cnt[2], cnt[1] + cnt[3]), (255, 0, 0), 1)
        
        digit = th[cnt[1]:cnt[1] + cnt[3], cnt[0]:cnt[0] + cnt[2]]        #CHUYỂN KÝ TỰ TÌM THẤY THÀNH 1 ẢNH RIÊNG

        resized_digit = cv2.resize(digit, (18, 18))                         #RESIZE CÒN (18,18)

        padded_digit = np.pad(resized_digit, ((5, 5), (5, 5)), "constant", constant_values=0) #XONG PAD MỖI BÊN 5 PIXEL ĐỂ THẢNH (28,28)

        digit = padded_digit.reshape(1, 28, 28, 1)      #RESHAPE VÌ INPUT ĐÒI THẾ
        digit = digit / 255.0                 #NORMALIZE PIXEL VỀ KHOẢNG 0 → 1

        pred = model.predict([digit])[0]          #VÌ XÀI SPARSE_CATEGORICAL_CROSSENTROPY
        final_pred = np.argmax(pred)              #NÊN RESULT LÀ MẢNG CÁC KHẢ NĂNG, LẤY SỐ CÓ KHẢ NĂNG CAO NHẤT
        result[i][1].append(final_pred)           #THÊM VÀO MẢNG KẾT QUẢ
    i += 1                                    #index
      
  return result      #MẢNG CHỨA TUPLE
#HƯỚNG DẪN SỬ DỤNG: "id_char_list, mark_char_list = Recognize_Digit("mảng chứa ảnh")" → RỒI XÀI HAI HÀM GET ĐÓ ĐỂ LẤY ID VỚI ĐIỂM THEO ĐÚNG ĐỊNH DẠNG


def get_recognized_id(result):
  recognized_ids = []
  try:
    for tp in result:
      recognized_id = ""
      i = 0
      for digit in tp[1]:
        if i < num_of_id_digits:
          recognized_id += str(digit)
          i += 1
      recognized_ids.append(recognized_id)
  except:       #NẾU KHÔNG TÌM THẤY KÝ TỰ NÀO THÌ PASS LUÔN
    pass
  return recognized_ids

def get_recognized_mark(result):
  recognized_marks = []
  try:
    for tp in result:
      recognized_mark = ''
      for i in range(-num_of_mark_digits, 0):
        recognized_mark += str(tp[1][i])
      recognized_mark = float(recognized_mark)
      if recognized_mark == 1: recognized_mark = 10.0
      else: recognized_mark = (recognized_mark % 100.0) / 10.0
      recognized_marks.append(recognized_mark)
  except:       #NẾU KHÔNG TÌM THẤY KÝ TỰ NÀO THÌ PASS LUÔN
    pass
  return recognized_marks

def get_recognized_sub_id(result):      #mã môn học
  recognized_subs = []
  try:
    for tp in result:
      recognized_sub = ''
      for i in range(-num_of_sub_id_digits, 0):
        recognized_sub += str(tp[1][i])
      recognized_subs.append(recognized_sub)
  except:
    pass
  return recognized_subs

def get_recognized_semester_id(result):   #học kì
  recognized_semester_id = ''
  try:
    for tp in result:
      for i in range(-num_of_semester_id_digits, 0):
        recognized_semester_id += str(tp[1][i])
  except: pass
  return recognized_semester_id

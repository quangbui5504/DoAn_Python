import cv2
import numpy as np
import tkinter as tk
from tkinter import filedialog
from PIL import Image, ImageTk
from tensorflow.keras.models import load_model
from model import *

path_to_model = r"D:\doanpython\mnist.h5"     #CHANGE THIS
model = load_model(path_to_model)
num_of_score_digits = 3
num_of_id_digits = 4
num_of_sub_id_digits = 3
num_of_semester_id_digits = 1


class ImageCropper:
    def __init__(self, root):
        self.root = root
        self.root.title("Image Cropper")
        
        self.canvas = tk.Canvas(self.root, cursor="cross")
        self.canvas.pack(fill=tk.BOTH, expand=True)

        self.image = None
        self.image_for_cropping = None
        self.img_path = None
        self.start_x = None
        self.start_y = None
        self.end_x = None
        self.end_y = None
        self.rect = None
        self.crop_count = 0          
        self.ratio = (0,0)              #width trước height sau
        self.cropped_mark_area = False

        self.canvas.bind("<ButtonPress-1>", self.on_press)
        self.canvas.bind("<B1-Motion>", self.on_drag)
        self.canvas.bind("<ButtonRelease-1>", self.on_release)

        menu_bar = tk.Menu(self.root)
        file_menu = tk.Menu(menu_bar, tearoff=0)
        file_menu.add_command(label="Open Image", command=self.open_image)
        menu_bar.add_cascade(label="File", menu=file_menu)
        self.root.config(menu=menu_bar)
    
         # Thêm nút "Crop Again"
        self.crop_again_button = tk.Button(self.root, text="Crop Again", command=self.crop_again)
        self.crop_again_button.pack(side=tk.BOTTOM)

    def open_image(self):
        self.img_path = filedialog.askopenfilename()
        if self.img_path:
            self.image = cv2.imread(self.img_path)
            self.image_for_cropping = Image.fromarray(self.image)
            self.image_for_cropping.thumbnail((800, 800))
            self.image_for_cropping = np.array(self.image_for_cropping) 
            self.ratio = (self.image.shape[1] / self.image_for_cropping.shape[1],
                           self.image.shape[0] / self.image_for_cropping.shape[0])
            self.display_image(self.image_for_cropping)

    def display_image(self, image_to_display):
        image_rgb = cv2.cvtColor(image_to_display, cv2.COLOR_BGR2RGB)
        image_tk = Image.fromarray(image_rgb)
        self.photo = ImageTk.PhotoImage(image_tk)
        self.canvas.create_image(0, 0, anchor=tk.NW, image=self.photo)

    def on_press(self, event):
        self.start_x = event.x
        self.start_y = event.y
        if self.rect:
            self.canvas.delete(self.rect)
        self.rect = None

    def on_drag(self, event):
        if self.rect:
            self.canvas.delete(self.rect)
        self.end_x = event.x
        self.end_y = event.y
        self.rect = self.canvas.create_rectangle(self.start_x, self.start_y, self.end_x, self.end_y, outline="red")

    def on_release(self, event):
        self.end_x = event.x
        self.end_y = event.y
        self.crop_image()

    def crop_image(self):
        if self.image is not None and self.start_x is not None and self.start_y is not None and self.end_x is not None and self.end_y is not None:
            if self.cropped_mark_area == False:
                self.crop_list = []                 #bảng điểm
                self.sub_id_img = []
                self.semester_id_img = []
                self.crop_count = 0
            self.start_x, self.start_y, self.end_x, self.end_y = int(self.start_x * self.ratio[0]), int(self.start_y * self.ratio[1]), int(self.end_x * self.ratio[0]), int(self.end_y * self.ratio[1])
            x1 = min(self.start_x, self.end_x)
            y1 = min(self.start_y, self.end_y)
            x2 = max(self.start_x, self.end_x)
            y2 = max(self.start_y, self.end_y)
            cropped_image = self.image.copy()[y1:y2, x1:x2]


            if self.crop_count == 0:  
                # Chia ảnh thành 10 phần và lưu mỗi phần
                section_height = cropped_image.shape[0] // 10
                section_width = cropped_image.shape[1]

                for i in range(10):
                    section_cropped_image = cropped_image[i * section_height:(i + 1) * section_height, 0:section_width]
                    self.crop_list.append(section_cropped_image)
                    cv2.imshow("cropped image", section_cropped_image)
                    cv2.waitKey(0)
                    cv2.destroyAllWindows()
                    if len(self.crop_list) == 10: 
                        self.crop_count = 11
                        self.cropped_mark_area = True
                        self.crop_list = np.array(self.crop_list)

            elif self.crop_count == 11:  # Nếu crop count là 11
                # Chia ảnh thành 2 phần upper và lower
                middle_y = cropped_image.shape[0] // 2
                self.sub_id_img = cropped_image[:middle_y, :]
                self.semester_id_img = cropped_image[middle_y:, :]
                cv2.imshow("cropped upper image {} {}".format(self.sub_id_img.shape[0], self.sub_id_img.shape[1]), self.sub_id_img)
                cv2.imshow("cropped lower image{} {}".format(self.semester_id_img.shape[0], self.semester_id_img.shape[1]), self.semester_id_img)
                cv2.waitKey(0)
                cv2.destroyAllWindows()
                self.sub_id_img = np.expand_dims(self.sub_id_img, axis=0)
                self.semester_id_img = np.expand_dims(self.semester_id_img, axis=0)
                

                
            else:
                print("Error: Unexpected crop count.")

        else:
            print("Error: Image not loaded or no region selected for cropping.")


    def crop_again(self):
        self.cropped_mark_area = False


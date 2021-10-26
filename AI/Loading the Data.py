import numpy as np
import tensorflow as tf
from tensorflow import keras
import pathlib

#calling the model
model = keras.models.load_model('C:/Users/miron/Documents/Final Year/CS3072 Final Year Project/1840152/AI/animal_model_10') #or animal_model_99

data_dir = 'C:/Users/miron/Documents/Final Year/CS3072 Final Year Project/1840152/Dataset_10' #or dataset 100 for 99 classes
data_dir = pathlib.Path(data_dir)

batch_size = 128
img_height = 128 #120 image height/width or 99 class
img_width = 128

AUTOTUNE = tf.data.AUTOTUNE

train_ds = tf.keras.preprocessing.image_dataset_from_directory(
  data_dir,
  validation_split=0.2,
  subset="training",
  color_mode = "rgb",
  seed=123,
  shuffle=True,
  image_size=(img_height, img_width),
  batch_size=batch_size)

val_ds = tf.keras.preprocessing.image_dataset_from_directory(
  data_dir,
  validation_split=0.2,
  subset="validation",
  color_mode = "rgb",
  seed=123,
  shuffle=True,
  image_size=(img_height, img_width),
  batch_size=batch_size)

class_names = train_ds.class_names

train_ds = train_ds.cache().shuffle(1000).prefetch(buffer_size=AUTOTUNE)
val_ds = val_ds.cache().prefetch(buffer_size=AUTOTUNE)

#testing an image
test = 'C:/Users/miron/Documents/Final Year/CS3072 Final Year Project/1840152/Experiment/testing/lion_3.jpg'

img = keras.preprocessing.image.load_img(
   test, target_size=(img_height, img_width))

img_array = keras.preprocessing.image.img_to_array(img)
img_array = tf.expand_dims(img_array, 0)

predictions = model.predict(img_array)
score = tf.nn.softmax(predictions[0])

print(
  '{} ({:.1f} % confidence)'
  .format(class_names[np.argmax(score)], 100 * np.max(score))

)

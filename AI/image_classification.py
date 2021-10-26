#Importing libraries
import matplotlib.pyplot as plt
import numpy as np
import os
import PIL
import tensorflow as tf
import pathlib
import datetime
import timeit
from playsound import playsound
from tensorflow import keras
from tensorflow.keras import layers
from tensorflow.keras.models import Sequential


#Importing the dataset
start = timeit.default_timer()
data_dir = 'C:/Users/miron/Documents/Final Year/CS3072 Final Year Project/1840152/Dataset_10' #or Dataset_99
data_dir = pathlib.Path(data_dir)
image_count = len(list(data_dir.glob('*/*.jpg')))
print(image_count)

#Loading and creating the dataset
batch_size = 128
image_height = 256 #or 120
image_width = 256 #or 120

data_training = tf.keras.preprocessing.image_dataset_from_directory(
  data_dir,
  validation_split = 0.2,
  subset = "training",
  color_mode = "rgb",
  seed = 123,
  shuffle=True,
  image_size = (image_height, image_width),
  batch_size = batch_size
  )

data_validation = tf.keras.preprocessing.image_dataset_from_directory(
  data_dir,
  validation_split = 0.2,
  subset = "validation",
  color_mode = "rgb",
  seed = 123,
  shuffle=True,
  image_size = (image_height, image_width),
  batch_size = batch_size
  )

class_names = data_training.class_names
print(class_names)

#configuring the dataset for performance
autotune = tf.data.AUTOTUNE
data_training = data_training.cache().shuffle(1000).prefetch(buffer_size=autotune)
data_validation = data_validation.cache().prefetch(buffer_size=autotune)

#standardising the data
normalisation_layer = layers.experimental.preprocessing.Rescaling(1./255)
data_normalised = data_training.map(lambda x, y: (normalisation_layer(x),y))
image_batch, labels_batch = next(iter(data_normalised))
first_image = image_batch[0]

#creating the model
class_number = 10 #or 99

#data augmentation
data_augmentation = keras.Sequential([
  layers.experimental.preprocessing.RandomFlip("vertical",
  input_shape = (image_height, image_width, 3)),
  layers.experimental.preprocessing.RandomRotation(0.25),
  layers.experimental.preprocessing.RandomZoom(0.4),
  layers.experimental.preprocessing.RandomContrast(0.3),
])

#applying dropout
model = Sequential([
  data_augmentation,
  layers.experimental.preprocessing.Rescaling(1./255),
  layers.Conv2D(16, 3, padding='same', activation='relu'),
  layers.MaxPooling2D(),
  layers.Conv2D(32, 3, padding='same', activation='relu'),
  layers.MaxPooling2D(),
  layers.Conv2D(64, 3, padding='same', activation='relu'),
  layers.MaxPooling2D(),
  layers.Conv2D(128, 3, padding='same', activation='relu'),
  layers.MaxPooling2D(),
  layers.Conv2D(256, 3, padding='same', activation='relu'),
  layers.MaxPooling2D(),
  layers.Conv2D(512, 3, padding='same', activation='relu'),
  layers.MaxPooling2D(),
  layers.Conv2D(1024, 3, padding='same', activation='relu'),
  layers.MaxPooling2D(),
  layers.Dropout(0.4),
  layers.BatchNormalization(),
  layers.Flatten(),
  layers.Dense(batch_size, activation='relu'),
  layers.Dense(class_number)
])

#compiling and training the model
model.compile(optimizer = 'adam',
              loss = tf.keras.losses.SparseCategoricalCrossentropy(from_logits = True),
              metrics = ['accuracy'])

model.summary()

epochs = 50
history = model.fit(
  data_training,
  validation_data = data_validation,
  epochs = epochs,
)

stop = timeit.default_timer()
print('Time: ', stop - start)

#Visualising training/validation results
accuracy = history.history['accuracy']
validation_accuracy = history.history['val_accuracy']
loss = history.history['loss']
validation_loss = history.history['val_loss']
epochs_range = range(epochs)

plt.figure(figsize=(8, 8))
plt.subplot(1, 2, 1)
plt.plot(epochs_range, accuracy, label='Training Accuracy')
plt.plot(epochs_range, validation_accuracy, label='Validation Accuracy')
plt.legend(loc='lower right')
plt.title('Training and Validation Accuracy')

plt.subplot(1, 2, 2)
plt.plot(epochs_range, loss, label='Training Loss')
plt.plot(epochs_range, validation_loss, label='Validation Loss')
plt.legend(loc='upper right')
plt.title('Training and Validation Loss')
plt.show()

#saving the model
model.save("animal_model")

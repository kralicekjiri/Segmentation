## Introduction
This is a repo for an experimental UGV segmentation.
A code is forked from HRNet-OCR - [original code](https://github.com/HRNet/HRNet-Semantic-Segmentation/tree/HRNet-OCR).
The code expects at least one GPU.

Result examples can be seen [here](https://drive.google.com/drive/folders/19le68FxrIA4uIFVJY7seGKuhD7o5RduL?usp=share_link).
The reason of such a poor performance on a UO video is probably the low quality the video.


## Quick start
* Recommended Python3.8


#### Download the repo
```
git clone https://github.com/kralicekjiri/Segmentation
```

#### Install Python packages
```
pip3 install -r requirements.txt
```

#### Download weights [here](https://drive.google.com/file/d/1Xg-gu6H_IPb_B1B2bUnBQ7LnBfKvXRkl/view?usp=share_link).

#### Prepare data. 
Default data folder is *./dataset*.
Input to a model is a frame (set of frames) - videos have to be a set of individual frames.
The code expects list file (test.lst in the example bellow), which is only a list of individual frames.
Example of correctly prepared dataset can be downloaded [here](https://drive.google.com/drive/folders/1qoNMILSZLX2enALDrJshMGuYmyV_8upY?usp=share_link). 
 


#### Run
```
python tools/test.py --cfg /path_to_conf_file DATASET.TEST_SET test.lst OUTPUT_DIR ./path_to_output_dir TEST.MODEL_FILE /path_to_weights
```

### Example
```
python tools/test.py --cfg experiments/rellis/seg_hrnet_ocr_w48_train_512x1024_sgd_lr1e-3_wd5e-4_bs_12_epoch484_UO.yaml DATASET.TEST_SET test.lst OUTPUT_DIR ./results TEST.MODEL_FILE ./output/rellis/best.pth
```

## Config
Configuration such as default paths, weights, input size, batch size, number of GPU etc. can be defined in yaml configuration file - see cfg file in the example above.


## TODO
* Prepare real-time inference.

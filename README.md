## Introduction
This is a repo for an experimental UGV segmentation.
A code is a HRNet-OCR fork - [original code](https://github.com/HRNet/HRNet-Semantic-Segmentation/tree/HRNet-OCR).
The code expects at least one GPU.


## Quick start
Recommended Python3.8


* Download the repo
```
git clone https://github.com/kralicekjiri/Segmentation
```

* Install Python packages
```
pip3 install -r requirements.txt
```

* Download weights [here](https://drive.google.com/file/d/1Xg-gu6H_IPb_B1B2bUnBQ7LnBfKvXRkl/view?usp=share_link).


* Run
```
python tools/test.py --cfg /path_to_conf_file DATASET.TEST_SET test.lst OUTPUT_DIR ./path_to_output_dir TEST.MODEL_FILE /path_to_weights
```

### Example
```
python tools/test.py --cfg experiments/rellis/seg_hrnet_ocr_w48_train_512x1024_sgd_lr1e-3_wd5e-4_bs_12_epoch484.yaml DATASET.TEST_SET val.lst OUTPUT_DIR ./results TEST.MODEL_FILE ./output/rellis/best.pth
```


## TODO
* Prepare real-time inference

# Introduction
This is a repo for UGV Segmentation.
Code is a HRNet-OCR fork - original code link.
https://github.com/HRNet/HRNet-Semantic-Segmentation/tree/HRNet-OCR



# Quick start
Recommended Python3.8


Download the repo
```
git clone https://github.com/kralicekjiri/Segmentation
```

Install Python packages
```
pip3 install -r requirements.txt
```

To run a 
```
python tools/test.py --cfg experiments/rellis/seg_hrnet_ocr_w48_train_512x1024_sgd_lr1e-3_wd5e-4_bs_12_epoch484_UO.yaml DATASET.TEST_SET test.lst OUTPUT_DIR ./path_to_output_dir TEST.MODEL_FILE ./output/rellis/best.pth
```


# TODO
* Prepare real-time inference

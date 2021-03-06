# Lambertian-Priors-in-PSN

## Incorporating Lambertian Priors into Surface Normals Measurement. IEEE Transactions on Instrumentation & Measurement (Accpet)
Yakun JU, Muwei JIAN, Shaoxiang GUO, Yingyu WANG, Huiyu ZHOU, and Junyu DONG

## Environment

Implemented in PyTorch with Ubuntu 18.04.

Python: 3.6.9 

PyTorch 1.4.0 with scipy, numpy, etc.

RTX 2080 (8G)

## Training datasets:
Blobby shape dataset (4.7 GB), and Sculpture shape dataset (19 GB), via: 

```shell
sh scripts/download_synthetic_datasets.sh
```
## Testing datsets:

DiLiGenT main dataset (default) (850MB), via:
```shell
sh scripts/prepare_diligent_dataset.sh  
```
or   https://drive.google.com/file/d/1EgC3x8daOWL4uQmc6c4nXVe4mdAMJVfg/view

Light Stage Data Gallery, via:

https://vgl.ict.usc.edu/Data/LightStage/

## Data processing to get the Lambertian Priors:

Use the Least Square Baseline method [Woodham1980].
Please see in /GettingPriors.

Use your own path on the training datsets and test datasets.

## Testing on your device:
```shell
python eval/run_model.py --retrain data/models/PriorsPSN-test.pth.tar --in_img_num X
```
You can change X to adjust the number of the input image.

## Training on your device:
```shell
python main.py --concat_data --in_img_num 32
```
Defualt: training with 32 input images.




## Acknowledgement:

Our code is partially based on: https://github.com/guanyingc/PS-FCN.

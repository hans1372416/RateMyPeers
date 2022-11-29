## Data-analysis

1. Timestamp - 太接近了，所以不能用Timestamp之间的关系

latent model == 矩阵补全

FastFM

DeepFM

Train:valid:test = 1:0.05:0.05

Features：

| Method   | Features                                                     | Dataset | RMSE-valid | RMSE-test |
| -------- | ------------------------------------------------------------ | ------- | ---------- | --------- |
| Baseline | sim = Jaccard(usersPerItem[i2],usersPerItem[item])           | 1k      | 0.98758    | 0.97086   |
| Baseline | sim = Jaccard(set(OccupationPeritem[i2]),set(OccupationPeritem[item]))    证明occupation是user很明显的特征，所以结果更好？之类的 | 1k      | 0.94402    | 0.92920   |
| Baseline | sim = Jaccard(MaxOccupationPeritem[item],MaxOccupationPeritem[i2])   Max 前3名的occupation，效果没那么好，你们可以调一下，看前几名好 | 1k      | 1.01325    | 1.02156   |
| Baseline | user feature 解决cold start                                  | 1k      | 1.00824 |  1.01899  |
| Baseline  |     usersPerItem                               | 1m      |     0.7999095548681616  | 0.7969606939501926 |
| Baseline|  Occupation                                              | 1m        |  0.826759935094664          |  0.82569816186373         |
|  Baseline|  MaxOccupationPeritem            | 1m        |0.9593258309936891            | 0.9597527439544743          |
| Baseline |   user feature                                                           | 1m        |  0.9592320541518128          |  0.959552026804971         |
|          |                                                              |         |            |           |

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
|          |                                                              | 1m      |            |           |
|          |                                                              | 1m      |            |           |
|          |                                                              |         |            |           |
|          |                                                              |         |            |           |
|          |                                                              |         |            |           |
|          |                                                              |         |            |           |
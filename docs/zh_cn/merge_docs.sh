#!/usr/bin/env bash
# gather models
cat  ../configs/localization/*/README_zh-CN.md | sed "s/md#测/html#测/g" | sed "s/md#训/html#训/g" | sed "s/#/#&/" | sed '1i\# 时序动作检测模型' | sed 's/](\/docs/zh_cn\//](/g' | sed 's=](/=](https://github.com/open-mmlab/mmaction2/tree/master/=g' | sed "s/getting_started.html##/getting_started.html#/g" > localization_models.md
cat  ../configs/recognition/*/README_zh-CN.md | sed "s/md#测/html#t测/g" | sed "s/md#训/html#训/g" | sed "s/#/#&/" | sed '1i\# 动作识别模型' | sed 's/](\/docs/zh_cn\//](/g' | sed 's=](/=](https://github.com/open-mmlab/mmaction2/tree/master/=g'| sed "s/getting_started.html##/getting_started.html#/g" > recognition_models.md
cat  ../configs/recognition_audio/*/README_zh-CN.md | sed "s/md#测/html#测/g" | sed "s/md#训/html#训/g" | sed "s/#/#&/" | sed 's/](\/docs/zh_cn\//](/g' | sed 's=](/=](https://github.com/open-mmlab/mmaction2/tree/master/=g'| sed "s/getting_started.html##/getting_started.html#/g" >> recognition_models.md
cat  ../configs/detection/*/README_zh-CN.md  | sed "s/md#测/html#测/g" | sed "s/md#训/html#训/g" | sed "s/#/#&/" | sed '1i\# 时空动作检测模型' | sed 's/](\/docs/zh_cn\//](/g' | sed 's=](/=](https://github.com/open-mmlab/mmaction2/tree/master/=g'| sed "s/getting_started.html##/getting_started.html#/g" > detection_models.md
cat  ../configs/skeleton/*/README_zh-CN.md  | sed "s/md#测/html#测/g" | sed "s/md#训/html#训/g" | sed "s/#/#&/" | sed '1i\# 骨骼动作识别模型' | sed 's/](\/docs/zh_cn\//](/g' | sed 's=](/=](https://github.com/open-mmlab/mmaction2/tree/master/=g'| sed "s/getting_started.html##/getting_started.html#/g" > skeleton_models.md

# gather datasets
cat  ../tools/data/*/README_zh-CN.md | sed 's/# 准备/# /g' | sed 's/#/#&/' > prepare_data.md

sed -i 's/(\/tools\/data\/activitynet\/README_zh-CN.md/(#activitynet/g' supported_datasets.md
sed -i 's/(\/tools\/data\/kinetics\/README_zh-CN.md/(#kinetics-400-600-700/g' supported_datasets.md
sed -i 's/(\/tools\/data\/mit\/README_zh-CN.md/(#moments-in-time/g' supported_datasets.md
sed -i 's/(\/tools\/data\/mmit\/README_zh-CN.md/(#multi-moments-in-time/g' supported_datasets.md
sed -i 's/(\/tools\/data\/sthv1\/README_zh-CN.md/(#something-something-v1/g' supported_datasets.md
sed -i 's/(\/tools\/data\/sthv2\/README_zh-CN.md/(#something-something-v2/g' supported_datasets.md
sed -i 's/(\/tools\/data\/thumos14\/README_zh-CN.md/(#thumos-14/g' supported_datasets.md
sed -i 's/(\/tools\/data\/ucf101\/README_zh-CN.md/(#ucf-101/g' supported_datasets.md
sed -i 's/(\/tools\/data\/ucf101_24\/README_zh-CN.md/(#ucf101-24/g' supported_datasets.md
sed -i 's/(\/tools\/data\/jhmdb\/README_zh-CN.md/(#jhmdb/g' supported_datasets.md
sed -i 's/(\/tools\/data\/hvu\/README_zh-CN.md/(#hvu/g' supported_datasets.md
sed -i 's/(\/tools\/data\/hmdb51\/README_zh-CN.md/(#hmdb51/g' supported_datasets.md
sed -i 's/(\/tools\/data\/jester\/README_zh-CN.md/(#jester/g' supported_datasets.md
sed -i 's/(\/tools\/data\/ava\/README_zh-CN.md/(#ava/g' supported_datasets.md
sed -i 's/(\/tools\/data\/gym\/README_zh-CN.md/(#gym/g' supported_datasets.md
sed -i 's/(\/tools\/data\/omnisource\/README_zh-CN.md/(#omnisource/g' supported_datasets.md
sed -i 's/(\/tools\/data\/diving48\/README_zh-CN.md/(#diving48/g' supported_datasets.md
sed -i 's/(\/tools\/data\/skeleton\/README_zh-CN.md/(#skeleton/g' supported_datasets.md

cat prepare_data.md >> supported_datasets.md
sed -i 's/](\/docs/zh_cn\//](/g' supported_datasets.md
sed -i 's=](/=](https://github.com/open-mmlab/mmaction2/tree/master/=g' supported_datasets.md

sed -i "s/md###t/html#t/g" demo.md
sed -i 's=](/=](https://github.com/open-mmlab/mmaction2/tree/master/=g' demo.md
sed -i 's=](/=](https://github.com/open-mmlab/mmaction2/tree/master/=g' benchmark.md
sed -i 's=](/=](https://github.com/open-mmlab/mmaction2/tree/master/=g' getting_started.md
sed -i 's=](/=](https://github.com/open-mmlab/mmaction2/tree/master/=g' install.md
sed -i 's/](\/docs/zh_cn\//](/g' ./tutorials/*.md
sed -i 's=](/=](https://github.com/open-mmlab/mmaction2/tree/master/=g' ./tutorials/*.md

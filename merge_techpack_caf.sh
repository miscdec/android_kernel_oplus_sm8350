#!/usr/bin/env bash

TAG=LA.UM.9.16.r2-02900-MANNAR.0
CUST_MERGE="git merge -s ours --no-commit FETCH_HEAD --allow-unrelated-histories"
CLO=https://source.codeaurora.org/quic/la/platform/vendor/opensource

git fetch $CLO/audio-kernel $TAG && $CUST_MERGE && git read-tree --prefix=techpack/audio -u FETCH_HEAD && git commit --no-edit

git fetch $CLO/camera-kernel $TAG && $CUST_MERGE && git read-tree --prefix=techpack/camera -u FETCH_HEAD && git commit --no-edit

git fetch $CLO/dataipa $TAG && $CUST_MERGE && git read-tree --prefix=techpack/dataipa -u FETCH_HEAD && git commit --no-edit

git fetch https://source.codeaurora.org/quic/la/platform/vendor/qcom/opensource/datarmnet $TAG && $CUST_MERGE && git read-tree --prefix=techpack/datarmnet -u FETCH_HEAD && git commit --no-edit

git fetch https://source.codeaurora.org/quic/la/platform/vendor/qcom/opensource/datarmnet-ext $TAG && $CUST_MERGE && git read-tree --prefix=techpack/datarmnet-ext -u FETCH_HEAD && git commit --no-edit

git fetch $CLO/display-drivers $TAG && $CUST_MERGE && git read-tree --prefix=techpack/display -u FETCH_HEAD && git commit --no-edit

git fetch $CLO/video-driver $TAG && $CUST_MERGE && git read-tree --prefix=techpack/video -u FETCH_HEAD && git commit --no-edit

git fetch https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/qcacld-3.0 $TAG && $CUST_MERGE && git read-tree --prefix=drivers/staging/qcacld-3.0 -u FETCH_HEAD && git commit --no-edit

git fetch https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/fw-api $TAG && $CUST_MERGE && git read-tree --prefix=drivers/staging/fw-api -u FETCH_HEAD && git commit --no-edit

git fetch https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/qca-wifi-host-cmn $TAG && $CUST_MERGE && git read-tree --prefix=drivers/staging/qca-wifi-host-cmn -u FETCH_HEAD && git commit --no-edit

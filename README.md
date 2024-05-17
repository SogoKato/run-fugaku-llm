# run-fugaku-llm

## Prerequisites

* Docker

I have tested with an environment below.

* WSL 2
* GeForce RTX 2070 (8GB RAM)
* AMD Ryzen 7 3700X
* 32GB RAM

## Getting started

Start a container.

```sh
./run.sh
```

Run in the container.

```sh
pip install transformers accelerate --use-feature=2020-resolver
huggingface-cli login
python3 main.py
```

output:

```
root@4d5f84a5e6d8:/workspace# time python3 main.py
/opt/conda/lib/python3.8/site-packages/huggingface_hub/file_download.py:1132: FutureWarning: `resume_download` is deprecated and will be removed in version 1.0.0. Downloads always resume when possible. If you want to force a new download, use `force_download=True`.
  warnings.warn(
Loading checkpoint shards: 100%|█████████████████████████████████████| 6/6 [00:01<00:00,  4.43it/s]
/opt/conda/lib/python3.8/site-packages/huggingface_hub/file_download.py:1132: FutureWarning: `resume_download` is deprecated and will be removed in version 1.0.0. Downloads always resume when possible. If you want to force a new download, use `force_download=True`.
  warnings.warn(
WARNING:root:Some parameters are on the meta device device because they were offloaded to the cpu and disk.
以下は、タスクを説明する指示です。要求を適切に満たす応答を書きなさい。

### 指示:
スーパーコンピュータ「富岳」の名前の由来を教えてください。

### 応答:
「富岳」は日本の理化学研究所と富士通が共同で開発したスーパーコンピュータで、富士山の異名である「富嶽」に由来している。この名前は、スーパーコンピュータが日本の研究コミュニティや産業界に広く受け入れられ、広く使用されることを願って付けられた。また、富士山が高く評価され、愛されている日本の象徴であることから、この名前が選ばれた。

real    25m35.436s
user    4m53.496s
sys     4m50.370s
```

## References

* [Fugaku-LLM/Fugaku-LLM-13B-instruct · Hugging Face](https://huggingface.co/Fugaku-LLM/Fugaku-LLM-13B-instruct)
* [GitHub - Fugaku-LLM/DeepSpeedFugaku](https://github.com/Fugaku-LLM/DeepSpeedFugaku)
* [PyTorch | NVIDIA NGC](https://catalog.ngc.nvidia.com/orgs/nvidia/containers/pytorch)

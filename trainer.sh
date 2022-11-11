CUDA_VISIBLE_DEVICES=0,1 python trainer.py \
    --data_dir ./data \
    --train_path ./data/mwoz21/train_ext_1pct_seed47_set0.json \
    --dev_path ./data/mwoz21/dev_ext.json \
    --test_path ./data/mwoz21/test_ext.json \
    --model_name_or_path google/t5-v1_1-base \
    --output_dir ./out \
    --strategy ddp \
    --batch_size_per_gpu 16 \
    --num_workers 8 \
    --lr 2e-5 \
    --accumulate_grad_batches 4 \
    --weight_decay 0.01 \
    --exp_no exp94 \
    --project ds2-losey-t5 \
    --gradient_clip_val 1.0 \
    --warmup_steps -1 \
    --seed 42 \
    --max_steps -1 \
    --gpus 2 \
    --max_epochs 10 \
    --num_beams 1 \
    --patience 3 \
    --data_ver 21 \
    --num_slots 30 \
    --enc_max_seq_len 1024 \
    --use_judgment \
    --use_inverse_prompt \
    --judgment_weight -1
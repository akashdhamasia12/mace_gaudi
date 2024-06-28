PT_HPU_LAZY_MODE=0 mace_run_train \
  --name="MACE_model" \
  --train_file="BOTNet-datasets/dataset_3BPA/train_300K.xyz" \
  --valid_fraction=0.05 \
  --test_file="BOTNet-datasets/dataset_3BPA/test_300K.xyz" \
  --E0s='{1:-13.663181292231226, 6:-1029.2809654211628, 7:-1484.1187695035828, 8:-2042.0330099956639}' \
  --model="ScaleShiftMACE" \
  --hidden_irreps='32x0e' \
  --r_max=4.0 \
  --batch_size=20 \
  --max_num_epochs=10 \
  --ema \
  --ema_decay=0.99 \
  --amsgrad \
  --default_dtype="float32" \
  --device=hpu \
  --seed=123
  
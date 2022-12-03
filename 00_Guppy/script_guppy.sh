# for basecalling in high mode
guppy_basecaller --input_path fast5_pass --save_path base_calling --flowcell FLO-MIN106 --kit SQK-LSK109 --device cuda:0


# for basecalling in fast mode need to use config file:
guppy_basecaller --input_path first_10_isolates_run_1 --save_path base_calling_lot_01 --flowcell FLO-MIN106 --kit SQK-LSK109 --device cuda:0 --barcode_kits EXP-NBD196 --min_score 70

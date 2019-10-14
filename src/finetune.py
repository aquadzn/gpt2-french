import gpt_2_simple as gpt2
from datetime import datetime
import time


gpt2.download_gpt2(model_name="124M")
file_name = "./articles.txt"

sess = gpt2.start_tf_sess()
gpt2.finetune(sess,
              dataset=file_name,
              model_name='124M',
              steps=5000,
              restore_from='fresh',
              run_name='run1',
              print_every=10,
              learning_rate=1e-4,
              sample_every=2500,
              save_every=1000,
              overwrite=True)

gpt2.generate(sess, run_name='run1')

# sess = gpt2.start_tf_sess()
# gpt2.load_gpt2(sess, run_name='run1')

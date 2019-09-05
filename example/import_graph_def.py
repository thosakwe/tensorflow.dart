import tensorflow as tf

tf.reset_default_graph()
v1 = tf.get_variable('v1', shape=[])
init_op = tf.global_variables_initializer()
saver = tf.train.Saver({'v1': v1})

with tf.Session() as sess:
    sess.run(init_op)
    x = v1.assign(tf.constant(1337.0))
    x = tf.Print(v1, [v1])
    sess.run(v1)
    saver.save(sess, 'example/sample_model')


import logging
import numpy as np

log = logging.getLogger(__name__)

log.warning('log: Hello World! numpy.dot: %d' % np.dot(2, 3))

print('print: Hello World! numpy.dot: %d' % np.dot(2, 3))

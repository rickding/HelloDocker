import logging
import numpy as np

log = logging.getLogger(__name__)

str = 'log: Hello World from python app! numpy.dot: %d' % np.dot(2, 3)
log.warning(str)
print(str)

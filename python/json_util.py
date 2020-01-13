import json
import logging

log = logging.getLogger(__name__)


def to_json(obj):
    # obj to json
    obj_str = json.dumps(obj)
    log.info('str from obj: %s, %s' % (type(obj_str), obj_str))
    return obj_str


def parse_json(json_str):
    # str to dict
    obj_dict = json.loads(json_str)
    log.info('dict from str: %s, %s' % (type(obj_dict), obj_dict))
    return obj_dict

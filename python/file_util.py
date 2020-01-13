# -*-coding: utf-8-*-
import logging
import os
from tempfile import NamedTemporaryFile

from django.conf import settings

log = logging.getLogger(__name__)


def del_file(path):
    if path is None or not exists(path):
        return

    log.info('Del file: {}'.format(path))
    if os.path.isfile(path):
        os.remove(path)
    else:
        os.rmdir(path)


def read(path, name):
    if name is None:
        return

    return open(file_path(path, name), 'rb')


def save(path, name, data):
    if data is None or name is None:
        return

    path = mk_dir(path)

    # Save file
    file = open(file_path(path, name), "wb")
    log.info('Save to file: %s, %s, %d' % (file.name, type(data), len(data)))

    file.write(data)
    file.flush()
    file.close()
    return file.name


def save_temp(data, ext=None, prefix=None):
    if data is None:
        return

    # Save to temp file
    temp = NamedTemporaryFile(delete=False, suffix=ext, prefix=prefix)
    log.info('Save to temp file: %s, %s, %d' % (temp.name, type(data), len(data)))

    temp.write(data)
    temp.close()
    return temp.name


def get_path(sub_path=None):
    if sub_path is None:
        return settings.ASSET_DIR

    return os.path.join(settings.ASSET_DIR, sub_path)


def temp_path(sub_path=None):
    if sub_path is None:
        return settings.TEMP_DIR

    return os.path.join(settings.TEMP_DIR, sub_path)


def file_path(path, name):
    if path is None:
        return name

    if name is None or len(name) <= 0:
        return os.path.normpath(path)

    return os.path.normpath(os.path.join(path, name))


def get_dir(path):
    if path is None:
        return

    if os.path.isfile(path):
        return os.path.dirname(path)
    else:
        return path


def get_name(path):
    if path is None:
        return

    return os.path.basename(path)


def mk_dir(path):
    if path is None:
        return

    path = path.strip()
    path = path.rstrip("\\")

    if not os.path.exists(path):
        os.makedirs(path)
    return path


def exists(path):
    if path is None:
        return False

    return os.path.exists(path)


def file_list(src_path, ext=None):
    if src_path is None or len(src_path) <= 0:
        return None

    files = []
    if os.path.isfile(src_path):
        if ext is None or is_ext(src_path, ext):
            files.append(src_path)
    else:
        for root, dirs, names in os.walk(src_path):
            for file in names:
                if ext is None or is_ext(file, ext):
                    files.append(os.path.join(root, file))

    return files


def is_ext(path, ext):
    if path is None or len(path) <= 0 or ext is None or len(ext) <= 0:
        return False

    if isinstance(ext, list):
        for e in ext:
            if path.lower().endswith(e.lower()):
                return True

        return False if len(ext) > 0 else True

    return path.lower().endswith(ext.lower())


def set_ext(path, ext):
    if is_ext(path, ext) or path is None or len(path) <= 0 or ext is None or len(ext) <= 0:
        return path

    name, _ = os.path.splitext(path)
    return "%s%s" % (name, ext)


def del_ext(path):
    if path is None or len(path) <= 0:
        return path

    name, _ = os.path.splitext(path)
    return name

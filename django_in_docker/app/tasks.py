from celery import task


@task
def add(args_dict):
    return {
        'result': args_dict.get('x') + args_dict.get('y'),
    }

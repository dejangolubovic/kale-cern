import kfp

client = kfp.Client()

with open(kfp.Client.NAMESPACE_PATH, 'r') as f:
    current_namespace = f.read()
    client.set_user_namespace(current_namespace)
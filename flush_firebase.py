import firebase_admin
from firebase_admin.auth import Client
default_app = firebase_admin.initialize_app(options={'projectId':'nzdpu-uat'})
client = Client(default_app)
client.delete_users([u.uid for u in client.list_users().users])

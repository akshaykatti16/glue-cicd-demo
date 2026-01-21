import sys
from awsglue.utils import getResolvedOptions

args = getResolvedOptions(sys.argv, ['ENV_NAME', 'MESSAGE'])

print("Hello from Glue!")
print("Environment:", args['ENV_NAME'])
print("Message:", args['MESSAGE'])

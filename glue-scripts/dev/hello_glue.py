import sys
from awsglue.utils import getResolvedOptions

args = getResolvedOptions(sys.argv, ['ENV_NAME', 'MESSAGE'])

print("Hello from Glue!")
print("Environment is ", args['ENV_NAME'])
print("Message is ", args['MESSAGE'])

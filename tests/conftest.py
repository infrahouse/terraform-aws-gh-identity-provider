import logging

from infrahouse_core.logging import setup_logging

# TEST_ROLE_ARN = "arn:aws:iam::303467602807:role/gh-identity-provider-tester"
DEFAULT_PROGRESS_INTERVAL = 10
TERRAFORM_ROOT_DIR = "test_data"


LOG = logging.getLogger(__name__)


setup_logging(LOG, debug=True)

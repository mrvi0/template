"""Entry point — replace with your app logic."""

from __future__ import annotations

import logging
import os

from dotenv import load_dotenv

load_dotenv()

logging.basicConfig(
    level=os.getenv("LOG_LEVEL", "INFO"),
    format="%(asctime)s %(levelname)s %(name)s: %(message)s",
)
log = logging.getLogger("repo_name")


def main() -> None:
    env = os.getenv("APP_ENV", "dev")
    log.info("starting repo_name (APP_ENV=%s)", env)


if __name__ == "__main__":
    main()

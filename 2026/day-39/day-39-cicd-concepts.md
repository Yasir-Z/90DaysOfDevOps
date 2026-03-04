### Task 1: The Problem
Note: When multiple developers push code manually in the same it leads to merge confilict, over-riding each others work and Configuration Drift.
Note: Works on my machine problem means when a code perfectly works on developer machine and crashes in real production environment.
Note: The more you deploy manual the more probability of errors and crashes.

### Task 2: CI vs CD
- Continuous Integration (CI) means merging of code by every individual developer to the shared branch up each merge trigers
  automatic build and test, it catches built failuers, integratio conflicts and broken test.
- Continuous Delivery: means build and test is done and code is ready release for final production environment it requires manual
  approval to release the code.
- Continuous Deployment means everythings is happening automatically once CI is succeeded the code doesn't wait for manual approvals
  it just released and deployed manually.

### Task 3: Pipeline Anatomy
# Trigger --> it trigers the event such as on: push, on: pull, on: merge etc.
# Stage --> it's a phase of pipeline such build stage, test stage etc.
# Job --> it's one of the unit of pipeline inside the stage block.
# Step --> A task in the job which needs to be done in order to complete the job.
# Runner --> On which the job will run 
# Artifact --> A package or container images which generated during build stage of ci/cd pipeline

### Task 4: Draw a Pipeline

name: Deployment CI/CD

on:
  push:
    branches:
      - main

jobs:
  ci-cd:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout code
        uses: actions/checkout@v4

      - name: Install Bandit
        run: pip install bandit

      - name: Test the code
        run: bandit .

      - name: Build Docker image
        run: docker build -t image-name .

      - name: Deploy to staging
        run: docker run -d -p 80:80 image-name

### Task 5: Explore in the Wild

# .github/workflows/manual.yml
 - It triggers workflow on pull the master branch.
 - Having one job with 5 steps.
 - It checkout code, login to git and creates pull request.

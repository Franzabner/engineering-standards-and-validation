# EPI Public Claim Boundary

Status: scaffolded
Publication state: public scaffold
Release state: not released

## Purpose

This file defines public claim boundaries for Energy Per Intelligence (EPI) method, result, benchmark, model, dataset, deployment, and proof language.

It is a standards-awareness aid only. It is not certification, code compliance, safety approval, stamped engineering, legal approval, production readiness, or customer deliverable evidence.

## Claim Boundary Matrix

| Claim area | Public-safe language | Forbidden stronger claim without review |
| --- | --- | --- |
| Method | Scaffolded method-family taxonomy. | Released method, working workflow, implementation proof, or production method. |
| Result | No evaluated public result. | Validated result, measured improvement, result ranking, or EPI proof. |
| Benchmark | No validated benchmark. | Benchmark output, benchmark leadership, reproducible benchmark claim, or external benchmark validation. |
| Model | No model release by this scaffold. | Released model, model weights, adapter release, or model-performance claim. |
| Dataset | No dataset release by this scaffold. | Released dataset, private corpus use, or dataset-quality claim. |
| External release surface | Separate release review required before external metadata or cards. | External release activity, hosted artifact, or public release claim without review. |
| Deployment | Not deployed. | Deployment, production readiness, customer use, or operational service claim. |
| Proof | Scaffolded evidence discipline only. | Proof complete, validated proof, or architecture proof-completion claim. |

## Required Review Before Stronger Claims

Before any stronger public claim is made, require:

- source and provenance review;
- public/private/sealed boundary review;
- rights and privacy review for data;
- method and limitation review;
- validation report;
- human claim-language approval;
- publication authorization.

## Required Exclusions

Do not include private workloads, private corpora, model weights, adapters, raw traces, result values, model identifiers, customer data, Foundation-private data, credentials, endpoints, topology, production procedures, or active client deliverables.

## Status Rule

Use `scaffolded` and `not released` status language until a separate reviewed release packet approves stronger public language.

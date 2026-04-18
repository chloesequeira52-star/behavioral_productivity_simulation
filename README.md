# Behavioral Productivity Simulation (SAS)

## Overview
This project analyzes how daily habits impact output using a simulated behavioral dataset. Three routine profiles were created to represent:
- Average routine
- Optimized routine
- High-distraction routine

The goal was to understand how sleep, focus, and distraction patterns influence total output across a typical day.

## Research Question
How do daily habits and time allocation patterns affect output across different behavioral profiles?

## Data
Simulated dataset with:
- 144 observations
- 3 user profiles
- 2 days per profile
- Hourly tracking (0–23)

Variables include:
- sleep_hours
- energy_score
- focus_score
- scrolling_minutes
- study_work_minutes
- exercise_minutes
- mood_score
- stress_score

## Methods
Using SAS, I:
- Imported and cleaned the dataset
- Calculated summary statistics by user profile
- Analyzed hourly trends in output and scrolling
- Compared behavioral patterns across profiles
- Visualized output and distraction patterns

## Key Findings
- The optimized routine produced **2.5x higher total output**
- The high-distraction routine lost **5x more time to scrolling**
- Peak output occurred between **10 AM–2 PM**
- Output differences were driven by **time allocation efficiency**, not effort

## Key Insight
> Output differences are driven by how effectively high-value time is protected and utilized, not simply by working more.

## Files
- `analysis.sas` — SAS code for data import, analysis, and visualization
- `future_you_sample.csv` — simulated dataset
- `slides.pdf` — summary of results and insights

## Tools Used
- SAS
- Google Sheets
- Google Slides

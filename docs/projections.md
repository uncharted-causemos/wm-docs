---
title: "View projections"
---

The Projections view allows you to understand recent and future trends in each of your model's datasets, concepts, and the overall priority. You can use it to compare countries or "what-if" scenarios.

![](img/projections/projections.png)

??? list "To open the projections"

    * Click **See results** on the overall priority.

## Understand projections

The projections for each concept are based on the datasets attached to them or their children.

- Projections for datasets are extrapolated (estimated beyond the range of historical values) and interpolated (estimated to fill in the gaps between historical values). 
- Projections for concepts without datasets are a weighted sum of their children.

??? info "How projections work in Causemos"

    Causemos uses a [Holt-Winters seasonal method](https://otexts.com/fpp2/holt-winters.html) :octicons-link-external-16:{ title="External link" alt="External link" } to project datasets. This method looks at three components of the dataset's past behavior:
    
    + The **level** represents the dataset's average overall behavior over the whole time period.
    + The **trend** represents the dataset's long-term change (increasing or decreasing) over time.
    + The **seasonality** represents the dataset's repeating patterns that occur at regular intervals.
    
    The system produces one projection for each component of past behavior. The projection that appears on the concept is the one that best fits the past behavior of the dataset.

Then legend below the projections shows whether the data comes directly from the dataset or is interpolated/extrapolated. It also indicates how to tell if the datasets are outdated or insufficient for accurate projections.

![](img/projections/legend.png)

??? list "To view projections in more detail"

    1. Click the concept node to expand it.
    2. Drag the handles on the timeline to zoom in or out on a period of interest.
    3. To close the detailed view, perform one of the following actions:
        - Click :fontawesome-solid-caret-left:{ aria-hidden="true" } **View all concepts** to return to the full graph.
        - Click a different concept node to expand it instead.

### Normalization

The y-axis for the projections is based on a normalization of the historical data for the concept, where 0 is the lowest value and 1 is the highest. 

![](img/projections/projection-bounds.png)

In some instances, projections may be lower or higher than these historical minimums and maximums. In these cases, you can adjust the y-axis to show the full extent of the project data. Reference lines on the expanded projection timeseries show the minimum/maximum of the historical data.

??? list "To show projections that are outside the historical minimum and maximum"

    - Click **Show values outside the 0 to 1 range**.

        ![](img/projections/show-values-outside.png)

## Choose which countries to view

You can view projections for a single country or compare projections for multiple countries.

![](img/projections/projection-single-country.png)

!!! note

    You can only compare scenarios when viewing projections for a single country.

??? list "To choose which countries to view"

    1. Click **Settings** and choose *Single country* or *Multiple countries*.
    2. Click **Country** or **Countries** choose the countries you want to view.
    3. To add more countries to the *Multiple countries* view, click :fontawesome-solid-circle-plus:{ aria-hidden="true"} **Add country** and repeat the previous step.

## Change the time range

You can change the time range displayed on all concept projections. The dates you can select are always at least 10 years before and 10 years after the earliest and latest dates across all the datasets in your model.

??? list "To change the time range"

    1. In the Time range section, click **Edit**.
    2. Adjust the start and end dates and click **Done**.

## Add a scenario

Scenarios allow you to place constraints (or "clamps") on datasets or concepts to see how downstream projections would change under different conditions. Each scenario has an auto-assigned color so you can easily differentiate them in the projections.

<figure markdown>
  ![](img/projections/scenario.png)
  <figcaption markdown>A scenario with constraints <span style="font-style: normal;">(</span>:fontawesome-regular-square:{ aria-hidden="true" style="color: #8858e9;"}<span style="font-style: normal;">)</span> added to a climate vulnerability concept. This scenario shows the effects of higher vulnerability on downstream projections and enables comparisons with the baseline.</figcaption>
</figure> 

!!! note

    You can only compare scenarios when viewing projections for a single country.

??? list "To create a scenario"

    1. Click :fontawesome-solid-plus:{ aria-hidden="true"} **Create new scenario**.
    2. Enter a unique name for the scenario.
    3. Click a node you want to add a constraint to.
    4. Click anywhere on the projection graph to add a constraint. Click directly above or below an existing data point to replace it with a constraint. To remove a constraint, click it again.
    5. Click **Done**.

??? list "To duplicate a scenario"

    1. Click :fontawesome-solid-ellipsis:{ alt="Options" title="Options" } > :material-content-copy:{ aria-hidden="true" } **Duplicate**.
    2. To rename the duplicated scenario, click :fontawesome-solid-ellipsis:{ alt="Options" title="Options" } > :fontawesome-solid-pencil:{ aria-hidden="true" } **Edit**, enter a unique name, and click **Done**.

??? list "To show or hide a scenario"

    * Click :fontawesome-regular-eye:{ alt="Show scenario" title="Show scenario" } / :fontawesome-regular-eye-slash:{ alt="Hide scenario" title="Hide scenario" }.

??? list "To delete a scenario"

    - Click :fontawesome-solid-ellipsis:{ alt="Options" title="Options" } > :fontawesome-solid-trash-can:{ aria-hidden="true"} **Delete**.
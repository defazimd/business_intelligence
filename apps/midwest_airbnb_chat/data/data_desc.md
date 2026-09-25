# Midwest Airbnb Listings: Data Dictionary

**Dataset:** `listings` table in `midwest_airbnb.db` (SQLite), 14,887 rows and 29 columns
**Source:** Inside Airbnb (https://insideairbnb.com/get-the-data/), the detailed `listings.csv.gz` file for each of three regions: Chicago (snapshot 2026-07-20), Columbus (snapshot 2026-07-23), and Twin Cities MSA (snapshot 2026-07-21). Column meanings follow Inside Airbnb's data dictionary and assumptions (https://insideairbnb.com/data-assumptions/).
**Course:** ISA 401, Miami University

> One row is one listing that showed a nightly price on the snapshot date; listings with no price were dropped. Empty cells are stored as SQL `NULL`.

---

## Field Definitions

| Field | Type | Description |
|---|---|---|
| `city` | text | Which Inside Airbnb region the listing came from: `Chicago` (7,439 rows), `Columbus` (2,587), or `Twin Cities` (4,861). The Twin Cities file covers the Minneapolis-St. Paul metro area, not just the two cities. |
| `snapshot_date` | text | Date Inside Airbnb compiled the file, stored as an ISO text string, not a date: `2026-07-20` for Chicago, `2026-07-23` for Columbus, `2026-07-21` for Twin Cities. Every row of a city shares the same value. |
| `id` | text | Airbnb's listing id. Unique across the table (14,887 distinct values). Stored as text even though it looks numeric, so compare it to a quoted string. |
| `name` | text | Listing title as shown on Airbnb (for example "Tiny Studio Apartment 94 Walk Score"). Never empty. |
| `price` | real | Nightly price in U.S. dollars on the snapshot date, with the dollar sign and commas removed. Ranges from 2.56 to 11,412; never `NULL` (rows without a price were dropped). |
| `room_type` | text | Airbnb's four listing categories: `Entire home/apt` (11,652 rows), `Private room` (2,951), `Hotel room` (246), or `Shared room` (38). |
| `host_id` | text | Airbnb's unique identifier for the host/user |
| `host_name` | text | Name of the host. Usually just the first name(s). |
| `host_since` | text | Date the host/user account was created. For hosts who were previously Airbnb guests, this may be the date they registered as a guest. |
| `host_is_superhost` | text | Indicates whether or not the host is a superhost; `t` means true and `f` means false. |
| `neighbourhood` | text | The neighbourhood as geocoded using the latitude and longitude against neighborhoods as defined by open or public digital shapefiles. |
| `latitude` | real | Uses the World Geodetic System (WGS84) projection for latitude and longitude. |
| `longitude` | real | Uses the World Geodetic System (WGS84) projection for latitude and longitude. |
| `property_type` | text | Self selected property type. Hotels and Bed and Breakfasts are described as such by their hosts in this field. |
| `accommodates` | integer |  The maximum capacity of the listing |
| `bedrooms` | real | The number of bedrooms |
| `beds` | real | Number of beds in the listing. |
| `bathrooms_text` | text | Text description of the number and type of bathrooms in the listing. |
| `minimum_nights` | integer | Minimum number of nights required for a stay but calendar rules may differ. |
| `availability_365` | integer | Number of days the listing is available during the next 365 days according to the calendar. A listing may be unavailable because it was booked or because the host blocked the date. |
| `number_of_reviews` | integer | Total number of reviews the listing has received. |
| `number_of_reviews_ltm` | integer | Number of reviews the listing has received in the last 12 months. |
| `first_review` | text | Date of the listing's first or oldest review. |
| `last_review` | text | Date of the listing's last or newest review. |
| `review_scores_rating` | real | Overall review rating for the listing. |
| `reviews_per_month` | real | Average number of reviews per month over the lifetime of the listing. |
| `instant_bookable` | text | Whether a guest can automatically book the listing without the host first accepting the booking request; `t` means true and `f` means false. |
| `estimated_revenue_l365d` | real | The estimated revenue of the listing over the course of the last 365 days. |
| `amenities_count` | integer | Computed for this course as the number of items in the listing's amenities list|

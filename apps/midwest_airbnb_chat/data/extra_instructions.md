# Extra Instructions

Rules the LLM follows when it writes SQL for `listings`.

- `price` is the nightly price in U.S. dollars. When the user asks what something costs, use `price` and round money to whole dollars in the answer.
- `host_is_superhost` and `instant_bookable` are stored as the text values `t` and `f`, not as boolean values like in the data dictionary for listings
- When searching the `name` column, make the search case-insensitive by comparing lowercase versions of the listing name and the user's search text.


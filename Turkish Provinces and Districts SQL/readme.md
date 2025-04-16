# Turkish Provinces and Districts SQL Code

This repository contains SQL database files for Turkey's administrative divisions, specifically provinces (İl) and districts (İlçe). The data is structured in a relational database format with appropriate foreign key relationships.

## Database Structure

The database consists of two main tables:

### 1. Provinces (`provinces`)

This table contains all 81 provinces of Turkey.

**Table Structure:**
- `id` (int): Primary key, auto-incrementing identifier
- `province_name` (varchar): Name of the province in Turkish
- `is_active` (tinyint): Boolean flag indicating if the province is active (1) or not (0)
- `created_at` (timestamp): When the record was created

**Example Data:**
| id | province_name | is_active | created_at |
|----|--------------|-----------|------------|
| 1  | Adana        | 1         | 2025-04-08 12:29:24 |
| 6  | Ankara       | 1         | 2025-04-08 12:29:24 |
| 34 | İstanbul     | 1         | 2025-04-08 12:29:24 |

### 2. Districts (`districts`)

This table contains all districts (ilçe) of Turkey, with each district associated with its parent province.

**Table Structure:**
- `id` (int): Primary key, auto-incrementing identifier
- `district_name` (varchar): Name of the district in Turkish
- `province_id` (int): Foreign key referencing the `id` field in the `provinces` table
- `is_active` (tinyint): Boolean flag indicating if the district is active (1) or not (0)
- `created_at` (timestamp): When the record was created

**Example Data:**
| id | district_name | province_id | is_active | created_at |
|----|---------------|------------|-----------|------------|
| 1  | Aladağ(Karsantı) | 1      | 1         | 2025-04-16 16:22:05 |
| 59 | Altındağ      | 6         | 1         | 2025-04-16 16:22:05 |
| 425| Beşiktaş      | 34        | 1         | 2025-04-16 16:22:06 |

## Relationships

- Each district belongs to exactly one province (Many-to-One relationship)
- The `districts.province_id` foreign key references `provinces.id`
- Cascading delete and update are enabled, meaning if a province is deleted or its ID is updated, the corresponding changes will be applied to all districts belonging to that province

## Data Details

- The database contains all 81 provinces of Turkey
- There are 958 districts in total
- All data is in Turkish language
- All records are marked as active (is_active = 1)
- Data appears to have been last updated on April 16, 2025

## Usage Examples

### Getting all districts of a specific province:

```sql
SELECT d.district_name
FROM districts d
JOIN provinces p ON d.province_id = p.id
WHERE p.province_name = 'İstanbul';
```

### Getting the count of districts for each province:

```sql
SELECT p.province_name, COUNT(d.id) as district_count
FROM provinces p
LEFT JOIN districts d ON p.id = d.province_id
GROUP BY p.province_name
ORDER BY district_count DESC;
```

### Adding a new district to an existing province:

```sql
INSERT INTO districts (district_name, province_id, is_active, created_at)
VALUES ('New District', 34, 1, CURRENT_TIMESTAMP);
```

## Notes

- The province IDs correspond to the license plate codes used in Turkey
- Both tables use UTF-8 character encoding (utf8mb4_unicode_ci collation) to properly handle Turkish characters
- The database is designed for MariaDB/MySQL database systems

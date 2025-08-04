# ✅ Day 1 Planning: Entities, Routes, Logic Modules, Constraints

---

## 🧩 ENTITIES & ATTRIBUTES

### Teachers
- id
- name
- email
- available_days[]
- available_periods[]
- subjects[]

### Subjects
- id
- name
- type: theory / lab
- credits
- weekly_hours
- assigned_teacher_id

### Divisions
- id
- year (SE/TE/BE)
- division_name (A/B/C)
- subjects[] assigned

### Batches (for labs)
- id
- batch_name (A1, A2, ...)
- division_id

### Labs
- id
- lab_name
- available_slots[]
- capacity

### Rooms
- id
- room_no
- available_slots[]

### TimeConfig
- id
- working_days[]
- periods_per_day
- lunch_start, lunch_end

### Timetable
- id
- division_id
- day
- period
- subject_id
- teacher_id
- room_id / lab_id
- is_lab

### Users (optional)
- id
- name
- email
- role (admin, teacher)
- password (encrypted)

---

## 🔁 API ROUTES (CRUD)

### Teachers
- `GET /teachers`
- `POST /teachers`
- `PUT /teachers/:id`
- `DELETE /teachers/:id`

### Subjects
- `GET /subjects`
- `POST /subjects`
- `PUT /subjects/:id`
- `DELETE /subjects/:id`

### Divisions
- `GET /divisions`
- `POST /divisions`
- `PUT /divisions/:id`
- `DELETE /divisions/:id`

### Labs & Rooms
- Same as above

### Timetable
- `POST /timetable/generate`
- `GET /timetable/:division`
- `PUT /timetable/edit`
- `DELETE /timetable/:id`

---
---

## 📌 Day 2: ER Diagram

- ER Diagram was created using [Erases.com](https://erases.com)
- Entities include:
  - Teachers
  - Subjects
  - Divisions
  - Batches
  - Rooms
  - TimeConfig
  - Timetable

📎 Attached Diagram: [ERD-Day2.png](./ERD-Day2.png)

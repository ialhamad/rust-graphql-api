CREATE TABLE cars_users (
	id SERIAL PRIMARY KEY,
	user_id INTEGER REFERENCES users(id),
	car_id INTEGER REFERENCES cars(id),
	car_plate_number VARCHAR NOT NULL,
	car_color VARCHAR NOT NULL,
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
)

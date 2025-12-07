import { pgTable, text, integer, pgEnum, numeric } from "drizzle-orm/pg-core";

export const City = pgEnum("city", [
    "PRIVOLZHSK",
    "NEVSKY",
    "MIRNY",
    "VOLCHANSK",
    "ZHUKOVSKIY",
]);

export const jobs = pgTable("jobs", {
    id: integer("id").primaryKey().generatedAlwaysAsIdentity(),
    name: text("name"),
    lvl: integer("lvl"),
    about: text("about"),
    description: text("description"),
});

export const jobCitySalaries = pgTable("job_city_salaries", {
    id: integer("id").primaryKey().generatedAlwaysAsIdentity(),
    jobId: integer("job_id").references(() => jobs.id),
    city: City("city"),
    amount: integer("amount"),
    time: numeric("time"),
    exp: numeric("exp"),
    stops: integer("stops"),
});

export const truckSalaries = pgTable("truck_salaries", {
    id: integer("id").primaryKey().generatedAlwaysAsIdentity(),
    jobId: integer("job_id")
        .unique()
        .references(() => jobs.id),
    typeTransport: text("type_transport"),
    typeCargo: text("type_cargo"),
    typeSemitrailer: text("type_semitrailer"),
    salaryPrivate: integer("salary_private"),
});

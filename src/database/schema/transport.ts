import {
    pgTable,
    serial,
    text,
    integer,
    numeric,
    boolean,
    pgEnum,
} from "drizzle-orm/pg-core";

export const TransportClass = pgEnum("transport_class", [
    "PASSENGER",
    "CARGO",
    "MOTO",
    "PUBLIC",
    "CONTAINER",
    "EXCLUSIVE",
    "FRACTION",
]);

export type TransportClassEnum = (typeof TransportClass.enumValues)[number];

// Автосалоны
export const Showroom = pgEnum("showroom", [
    "AVTOMAKS",
    "MERCURY_AUTO",
    "ROFL",
    "WORLD_OF_AUTO",
    "OGONEK",
]);

// Топливо
export const FuelType = pgEnum("fuel_type", [
    "AI92",
    "AI95",
    "AI98",
    "AI100",
    "DT",
    "ELECTRIC",
]);

// Страна производства
export const CountryOrigin = pgEnum("country_origin", [
    "USSR_RUSSIA",
    "USA",
    "GERMANY",
    "FRANCE",
    "ITALY",
    "SWEDEN",
    "UK",
    "JAPAN",
    "CZECH_REPUBLIC",
    "UKRAINE",
    "BELARUS",
    "AUSTRIA",
    "SOUTH_KOREA",
    "USSR_HUNGARY",
    "USSR_UKRAINE",
    "CHINA",
]);

// Города
export const ShowroomCity = pgEnum("showroom_city", [
    "PRIVOLZHSK",
    "NEVSKY",
    "MIRNY",
]);

// Тип транспорта
export const TransportType = pgEnum("transport_type", [
    "HATCHBACK",
    "SEDAN",
    "COUPE",
    "LIFTBACK",
    "UNIVERSAL",
    "CROSSOVER",
    "VAN",
    "VNEDOROZNIK",
    "MINIBUS",
    "BUS",
    "TYAGACH",
    "TRUCK",
    "PICKUP",
    "CABRIOLET",
    "MOTOCYCLE",
]);

// Тип привода
export const DriveType = pgEnum("drive_type", ["FRONT", "REAR", "ALL"]);

export const transport = pgTable("transport", {
    id: integer("id").primaryKey().generatedAlwaysAsIdentity(),
    name: text("name").notNull(),
    uniqueName: text("unique_name").notNull(),
    price: integer("price"),
    fullSpeed: integer("full_speed"),
    speed100Time: numeric("speed_100_time"),
    speedMaxTime: numeric("speed_max_time"),
    volumeTank: integer("volume_tank"),
    fuelType: FuelType("fuel_type"),
    slots: integer("slots"),
    seats: integer("seats"),
    liteInsurance: integer("lite_insurance"),
    repairWithoutInsurance: integer("repair_without_ins"),
    hasStandIns: boolean("has_stand_ins").default(false),
    hasExcIns: boolean("has_exc_ins").default(false),
    typeBody: TransportType("type_body"),
    showroom: Showroom("showroom"),
    driveType: DriveType("drive_type"),
    epp: boolean("epp"),
    city: ShowroomCity("city"),
    country: CountryOrigin("country_origin"),
    stageCounter: integer("stage_counter"),
    paintInter: text("paint_inter"),
    paintFirst: text("paint_first"),
    paintSecond: text("paint_second"),
    paintThird: text("paint_third"),
    antichrome: boolean("antichrome"),
    accessories: text("accessories"),
    rims: text("rims"),
    gosCostOld: integer("gos_cost_old").array(),
    class: TransportClass("class"),
    units: integer("units"),
});
